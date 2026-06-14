using { /Verse.org/Assets }

# ============================================================
#  depflags_bank.verse — Banque DRAPEAUX DES DEPARTEMENTS (202 = 101 normal + 101 pixel).
#  GENERE par tools/banks/build_depts_flags.py — NE PAS EDITER A LA MAIN.
#  Drapeau si officiel (Wikidata P41) sinon blason (P94). Sources Wikimedia Commons.
#  3 paliers : Facile (communs) / Moyen / Difficile (pixelise).
# ============================================================

DepFlagsDiff : []int = array{1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}


MakeDepFlagsQuestionsFR() : []question =
    array:
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_01 }
            Reponses := array{"Savoie", "Cantal", "Loire", "Ain"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_02 }
            Reponses := array{"Somme", "Aisne", "Oise", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_03 }
            Reponses := array{"Loire", "Allier", "Isere", "Ain"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_04 }
            Reponses := array{"Alpes-de-Haute-Provence", "Hautes-Alpes", "Vaucluse", "Var"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_05 }
            Reponses := array{"Var", "Vaucluse", "Hautes-Alpes", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_06 }
            Reponses := array{"Bouches-du-Rhone", "Alpes-Maritimes", "Hautes-Alpes", "Alpes-de-Haute-Provence"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_07 }
            Reponses := array{"Allier", "Savoie", "Isere", "Ardeche"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_08 }
            Reponses := array{"Bas-Rhin", "Meurthe-et-Moselle", "Vosges", "Ardennes"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_09 }
            Reponses := array{"Aude", "Lot", "Pyrenees-Orientales", "Ariege"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_10 }
            Reponses := array{"Vosges", "Haute-Marne", "Moselle", "Aube"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_11 }
            Reponses := array{"Aveyron", "Aude", "Hautes-Pyrenees", "Gard"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_12 }
            Reponses := array{"Herault", "Aveyron", "Gard", "Haute-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_13 }
            Reponses := array{"Bouches-du-Rhone", "Hautes-Alpes", "Var", "Alpes-Maritimes"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_14 }
            Reponses := array{"Seine-Maritime", "Calvados", "Manche", "Eure"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_15 }
            Reponses := array{"Drome", "Savoie", "Haute-Savoie", "Cantal"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_16 }
            Reponses := array{"Gironde", "Pyrenees-Atlantiques", "Charente", "Haute-Vienne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_17 }
            Reponses := array{"Charente-Maritime", "Charente", "Gironde", "Dordogne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_18 }
            Reponses := array{"Indre-et-Loire", "Indre", "Loiret", "Cher"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_19 }
            Reponses := array{"Correze", "Deux-Sevres", "Charente", "Gironde"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_21 }
            Reponses := array{"Nievre", "Cote-d'Or", "Haute-Saone", "Doubs"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_22 }
            Reponses := array{"Morbihan", "Ille-et-Vilaine", "Finistere", "Cotes-d'Armor"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_23 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Vienne", "Creuse"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_24 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Vienne", "Creuse"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_25 }
            Reponses := array{"Haute-Saone", "Doubs", "Territoire de Belfort", "Saone-et-Loire"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_26 }
            Reponses := array{"Loire", "Haute-Loire", "Cantal", "Drome"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_27 }
            Reponses := array{"Manche", "Seine-Maritime", "Calvados", "Eure"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_28 }
            Reponses := array{"Eure-et-Loir", "Loir-et-Cher", "Loiret", "Indre"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_29 }
            Reponses := array{"Morbihan", "Finistere", "Ille-et-Vilaine", "Cotes-d'Armor"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_2a }
            Reponses := array{"Bas-Rhin", "Aveyron", "Vienne", "Corse-du-Sud"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_2b }
            Reponses := array{"Gironde", "Haute-Corse", "Aude", "Pyrenees-Orientales"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_30 }
            Reponses := array{"Lot", "Tarn", "Gers", "Gard"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_31 }
            Reponses := array{"Lozere", "Haute-Garonne", "Hautes-Pyrenees", "Herault"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_32 }
            Reponses := array{"Ariege", "Gers", "Gard", "Tarn"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_33 }
            Reponses := array{"Haute-Vienne", "Correze", "Landes", "Gironde"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_34 }
            Reponses := array{"Herault", "Haute-Garonne", "Tarn-et-Garonne", "Gard"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_35 }
            Reponses := array{"Ille-et-Vilaine", "Cotes-d'Armor", "Morbihan", "Finistere"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_36 }
            Reponses := array{"Indre-et-Loire", "Eure-et-Loir", "Indre", "Cher"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_37 }
            Reponses := array{"Indre-et-Loire", "Indre", "Eure-et-Loir", "Loir-et-Cher"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_38 }
            Reponses := array{"Ain", "Isere", "Ardeche", "Allier"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_39 }
            Reponses := array{"Jura", "Haute-Saone", "Doubs", "Saone-et-Loire"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_40 }
            Reponses := array{"Charente-Maritime", "Dordogne", "Landes", "Correze"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_41 }
            Reponses := array{"Loiret", "Loir-et-Cher", "Indre-et-Loire", "Indre"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_42 }
            Reponses := array{"Isere", "Loire", "Haute-Savoie", "Ardeche"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_43 }
            Reponses := array{"Loire", "Haute-Loire", "Cantal", "Ardeche"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_44 }
            Reponses := array{"Mayenne", "Vendee", "Maine-et-Loire", "Loire-Atlantique"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_45 }
            Reponses := array{"Indre", "Loir-et-Cher", "Indre-et-Loire", "Loiret"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_46 }
            Reponses := array{"Aveyron", "Tarn-et-Garonne", "Haute-Garonne", "Lot"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_47 }
            Reponses := array{"Eure-et-Loir", "Lot-et-Garonne", "Paris", "Ille-et-Vilaine"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_48 }
            Reponses := array{"Aveyron", "Pyrenees-Orientales", "Lozere", "Tarn"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_49 }
            Reponses := array{"Loire-Atlantique", "Maine-et-Loire", "Vendee", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_50 }
            Reponses := array{"Calvados", "Seine-Maritime", "Eure", "Manche"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_51 }
            Reponses := array{"Ardennes", "Marne", "Meuse", "Meurthe-et-Moselle"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_52 }
            Reponses := array{"Aube", "Ardennes", "Haute-Marne", "Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_53 }
            Reponses := array{"Vendee", "Mayenne", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_54 }
            Reponses := array{"Meurthe-et-Moselle", "Ardennes", "Haute-Marne", "Aube"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_55 }
            Reponses := array{"Meuse", "Meurthe-et-Moselle", "Moselle", "Ardennes"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_56 }
            Reponses := array{"Cotes-d'Armor", "Finistere", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_57 }
            Reponses := array{"Moselle", "Ardennes", "Marne", "Meuse"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_58 }
            Reponses := array{"Haute-Saone", "Nievre", "Yonne", "Territoire de Belfort"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_59 }
            Reponses := array{"Aisne", "Nord", "Pas-de-Calais", "Oise"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_60 }
            Reponses := array{"Oise", "Nord", "Somme", "Pas-de-Calais"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_61 }
            Reponses := array{"Calvados", "Seine-Maritime", "Manche", "Orne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_62 }
            Reponses := array{"Oise", "Aisne", "Pas-de-Calais", "Somme"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_63 }
            Reponses := array{"Ain", "Puy-de-Dome", "Loire", "Haute-Loire"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_64 }
            Reponses := array{"Landes", "Pyrenees-Atlantiques", "Deux-Sevres", "Gironde"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_65 }
            Reponses := array{"Herault", "Gers", "Gard", "Hautes-Pyrenees"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_66 }
            Reponses := array{"Tarn", "Hautes-Pyrenees", "Pyrenees-Orientales", "Tarn-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_67 }
            Reponses := array{"Haute-Marne", "Vosges", "Bas-Rhin", "Meurthe-et-Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_68 }
            Reponses := array{"Isere", "Haut-Rhin", "Pyrenees-Orientales", "Drome"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_69 }
            Reponses := array{"Yonne", "Rhone", "Loir-et-Cher", "Loire-Atlantique"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_70 }
            Reponses := array{"Nievre", "Yonne", "Territoire de Belfort", "Haute-Saone"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_71 }
            Reponses := array{"Doubs", "Territoire de Belfort", "Nievre", "Saone-et-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_72 }
            Reponses := array{"Vendee", "Sarthe", "Mayenne", "Maine-et-Loire"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_73 }
            Reponses := array{"Haute-Savoie", "Drome", "Savoie", "Puy-de-Dome"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_74 }
            Reponses := array{"Haute-Savoie", "Allier", "Haute-Loire", "Isere"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_75 }
            Reponses := array{"Essonne", "Paris", "Hauts-de-Seine", "Val-d'Oise"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_76 }
            Reponses := array{"Seine-Maritime", "Calvados", "Manche", "Orne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_77 }
            Reponses := array{"Seine-et-Marne", "Paris", "Essonne", "Seine-Saint-Denis"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_78 }
            Reponses := array{"Val-de-Marne", "Essonne", "Paris", "Yvelines"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_79 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Charente", "Deux-Sevres"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_80 }
            Reponses := array{"Oise", "Aisne", "Nord", "Somme"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_81 }
            Reponses := array{"Aude", "Haute-Garonne", "Tarn", "Gard"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_82 }
            Reponses := array{"Lot", "Tarn-et-Garonne", "Hautes-Pyrenees", "Lozere"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_83 }
            Reponses := array{"Alpes-Maritimes", "Bouches-du-Rhone", "Var", "Hautes-Alpes"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_84 }
            Reponses := array{"Var", "Alpes-de-Haute-Provence", "Bouches-du-Rhone", "Vaucluse"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_85 }
            Reponses := array{"Vendee", "Mayenne", "Sarthe", "Loire-Atlantique"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_86 }
            Reponses := array{"Correze", "Pyrenees-Atlantiques", "Vienne", "Charente-Maritime"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_87 }
            Reponses := array{"Haute-Vienne", "Dordogne", "Pyrenees-Atlantiques", "Charente"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_88 }
            Reponses := array{"Vosges", "Aube", "Ardennes", "Haute-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_89 }
            Reponses := array{"Cote-d'Or", "Saone-et-Loire", "Yonne", "Nievre"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_90 }
            Reponses := array{"Territoire de Belfort", "Yonne", "Saone-et-Loire", "Doubs"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_91 }
            Reponses := array{"Val-d'Oise", "Val-de-Marne", "Essonne", "Yvelines"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_92 }
            Reponses := array{"Paris", "Val-d'Oise", "Val-de-Marne", "Hauts-de-Seine"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_93 }
            Reponses := array{"Seine-Saint-Denis", "Essonne", "Hauts-de-Seine", "Val-d'Oise"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_94 }
            Reponses := array{"Val-de-Marne", "Hauts-de-Seine", "Paris", "Val-d'Oise"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_95 }
            Reponses := array{"Val-d'Oise", "Val-de-Marne", "Paris", "Essonne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_971 }
            Reponses := array{"Guyane", "Mayotte", "Martinique", "Guadeloupe"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_972 }
            Reponses := array{"Mayotte", "Martinique", "Guyane", "Guadeloupe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_973 }
            Reponses := array{"Martinique", "Guadeloupe", "Guyane", "La Reunion"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_974 }
            Reponses := array{"La Reunion", "Guyane", "Martinique", "Guadeloupe"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_flags.dflag_976 }
            Reponses := array{"La Reunion", "Guyane", "Mayotte", "Martinique"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_01 }
            Reponses := array{"Ain", "Puy-de-Dome", "Haute-Savoie", "Ardeche"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_02 }
            Reponses := array{"Somme", "Aisne", "Oise", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_03 }
            Reponses := array{"Ain", "Allier", "Puy-de-Dome", "Drome"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_04 }
            Reponses := array{"Hautes-Alpes", "Vaucluse", "Alpes-de-Haute-Provence", "Alpes-Maritimes"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_05 }
            Reponses := array{"Bouches-du-Rhone", "Hautes-Alpes", "Vaucluse", "Alpes-Maritimes"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_06 }
            Reponses := array{"Alpes-de-Haute-Provence", "Hautes-Alpes", "Alpes-Maritimes", "Var"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_07 }
            Reponses := array{"Ain", "Ardeche", "Savoie", "Isere"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_08 }
            Reponses := array{"Haute-Marne", "Aube", "Meuse", "Ardennes"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_09 }
            Reponses := array{"Ariege", "Lot", "Pyrenees-Orientales", "Aude"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_10 }
            Reponses := array{"Meuse", "Bas-Rhin", "Aube", "Meurthe-et-Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_11 }
            Reponses := array{"Herault", "Aude", "Gers", "Tarn-et-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_12 }
            Reponses := array{"Aveyron", "Lozere", "Haute-Garonne", "Gers"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_13 }
            Reponses := array{"Alpes-Maritimes", "Var", "Bouches-du-Rhone", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_14 }
            Reponses := array{"Orne", "Eure", "Calvados", "Manche"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_15 }
            Reponses := array{"Cantal", "Ardeche", "Savoie", "Drome"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_16 }
            Reponses := array{"Pyrenees-Atlantiques", "Creuse", "Charente", "Haute-Vienne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_17 }
            Reponses := array{"Vienne", "Deux-Sevres", "Charente-Maritime", "Gironde"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_18 }
            Reponses := array{"Indre-et-Loire", "Cher", "Eure-et-Loir", "Loiret"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_19 }
            Reponses := array{"Correze", "Pyrenees-Atlantiques", "Dordogne", "Deux-Sevres"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_21 }
            Reponses := array{"Jura", "Doubs", "Yonne", "Cote-d'Or"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_22 }
            Reponses := array{"Morbihan", "Ille-et-Vilaine", "Cotes-d'Armor", "Finistere"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_23 }
            Reponses := array{"Pyrenees-Atlantiques", "Charente", "Vienne", "Creuse"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_24 }
            Reponses := array{"Haute-Vienne", "Pyrenees-Atlantiques", "Dordogne", "Charente"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_25 }
            Reponses := array{"Doubs", "Cote-d'Or", "Saone-et-Loire", "Jura"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_26 }
            Reponses := array{"Isere", "Puy-de-Dome", "Drome", "Haute-Savoie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_27 }
            Reponses := array{"Eure", "Calvados", "Seine-Maritime", "Orne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_28 }
            Reponses := array{"Indre-et-Loire", "Loir-et-Cher", "Eure-et-Loir", "Indre"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_29 }
            Reponses := array{"Ille-et-Vilaine", "Finistere", "Morbihan", "Cotes-d'Armor"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_2a }
            Reponses := array{"Indre", "Hauts-de-Seine", "Corse-du-Sud", "Finistere"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_2b }
            Reponses := array{"Saone-et-Loire", "Haute-Corse", "Meuse", "Guadeloupe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_30 }
            Reponses := array{"Tarn", "Lozere", "Gard", "Pyrenees-Orientales"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_31 }
            Reponses := array{"Lot", "Haute-Garonne", "Aveyron", "Gers"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_32 }
            Reponses := array{"Tarn", "Gers", "Lot", "Hautes-Pyrenees"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_33 }
            Reponses := array{"Gironde", "Haute-Vienne", "Pyrenees-Atlantiques", "Correze"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_34 }
            Reponses := array{"Aude", "Herault", "Haute-Garonne", "Gard"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_35 }
            Reponses := array{"Finistere", "Ille-et-Vilaine", "Cotes-d'Armor", "Morbihan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_36 }
            Reponses := array{"Cher", "Loiret", "Loir-et-Cher", "Indre"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_37 }
            Reponses := array{"Eure-et-Loir", "Loiret", "Loir-et-Cher", "Indre-et-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_38 }
            Reponses := array{"Cantal", "Allier", "Isere", "Savoie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_39 }
            Reponses := array{"Jura", "Doubs", "Haute-Saone", "Cote-d'Or"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_40 }
            Reponses := array{"Deux-Sevres", "Landes", "Correze", "Gironde"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_41 }
            Reponses := array{"Cher", "Eure-et-Loir", "Loir-et-Cher", "Loiret"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_42 }
            Reponses := array{"Haute-Loire", "Loire", "Puy-de-Dome", "Cantal"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_43 }
            Reponses := array{"Haute-Loire", "Haute-Savoie", "Allier", "Ain"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_44 }
            Reponses := array{"Loire-Atlantique", "Mayenne", "Sarthe", "Vendee"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_45 }
            Reponses := array{"Indre", "Loir-et-Cher", "Indre-et-Loire", "Loiret"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_46 }
            Reponses := array{"Aveyron", "Aude", "Tarn-et-Garonne", "Lot"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_47 }
            Reponses := array{"Lot-et-Garonne", "Cote-d'Or", "Vendee", "Eure"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_48 }
            Reponses := array{"Haute-Garonne", "Lozere", "Ariege", "Herault"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_49 }
            Reponses := array{"Maine-et-Loire", "Sarthe", "Loire-Atlantique", "Vendee"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_50 }
            Reponses := array{"Seine-Maritime", "Manche", "Calvados", "Orne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_51 }
            Reponses := array{"Ardennes", "Marne", "Moselle", "Bas-Rhin"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_52 }
            Reponses := array{"Moselle", "Bas-Rhin", "Meuse", "Haute-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_53 }
            Reponses := array{"Maine-et-Loire", "Loire-Atlantique", "Vendee", "Mayenne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_54 }
            Reponses := array{"Meurthe-et-Moselle", "Aube", "Moselle", "Vosges"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_55 }
            Reponses := array{"Ardennes", "Haute-Marne", "Vosges", "Meuse"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_56 }
            Reponses := array{"Finistere", "Morbihan", "Cotes-d'Armor", "Ille-et-Vilaine"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_57 }
            Reponses := array{"Moselle", "Bas-Rhin", "Marne", "Haute-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_58 }
            Reponses := array{"Nievre", "Haute-Saone", "Cote-d'Or", "Yonne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_59 }
            Reponses := array{"Aisne", "Oise", "Somme", "Nord"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_60 }
            Reponses := array{"Somme", "Oise", "Aisne", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_61 }
            Reponses := array{"Orne", "Calvados", "Eure", "Seine-Maritime"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_62 }
            Reponses := array{"Aisne", "Oise", "Somme", "Pas-de-Calais"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_63 }
            Reponses := array{"Loire", "Isere", "Puy-de-Dome", "Haute-Savoie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_64 }
            Reponses := array{"Charente", "Pyrenees-Atlantiques", "Creuse", "Landes"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_65 }
            Reponses := array{"Tarn", "Hautes-Pyrenees", "Lozere", "Haute-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_66 }
            Reponses := array{"Hautes-Pyrenees", "Haute-Garonne", "Pyrenees-Orientales", "Tarn"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_67 }
            Reponses := array{"Aube", "Vosges", "Moselle", "Bas-Rhin"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_68 }
            Reponses := array{"Somme", "Essonne", "Haut-Rhin", "Oise"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_69 }
            Reponses := array{"Rhone", "Seine-Saint-Denis", "Tarn-et-Garonne", "Nievre"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_70 }
            Reponses := array{"Jura", "Doubs", "Yonne", "Haute-Saone"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_71 }
            Reponses := array{"Doubs", "Yonne", "Saone-et-Loire", "Territoire de Belfort"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_72 }
            Reponses := array{"Mayenne", "Sarthe", "Maine-et-Loire", "Vendee"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_73 }
            Reponses := array{"Savoie", "Puy-de-Dome", "Ain", "Drome"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_74 }
            Reponses := array{"Haute-Loire", "Loire", "Haute-Savoie", "Ardeche"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_75 }
            Reponses := array{"Val-d'Oise", "Paris", "Essonne", "Yvelines"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_76 }
            Reponses := array{"Manche", "Seine-Maritime", "Eure", "Orne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_77 }
            Reponses := array{"Val-de-Marne", "Hauts-de-Seine", "Paris", "Seine-et-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_78 }
            Reponses := array{"Val-de-Marne", "Yvelines", "Paris", "Seine-et-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_79 }
            Reponses := array{"Haute-Vienne", "Deux-Sevres", "Creuse", "Correze"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_80 }
            Reponses := array{"Nord", "Somme", "Aisne", "Oise"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_81 }
            Reponses := array{"Ariege", "Gers", "Tarn-et-Garonne", "Tarn"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_82 }
            Reponses := array{"Tarn-et-Garonne", "Hautes-Pyrenees", "Lot", "Gard"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_83 }
            Reponses := array{"Bouches-du-Rhone", "Var", "Alpes-de-Haute-Provence", "Hautes-Alpes"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_84 }
            Reponses := array{"Alpes-de-Haute-Provence", "Bouches-du-Rhone", "Var", "Vaucluse"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_85 }
            Reponses := array{"Mayenne", "Maine-et-Loire", "Vendee", "Sarthe"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_86 }
            Reponses := array{"Haute-Vienne", "Landes", "Vienne", "Charente"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_87 }
            Reponses := array{"Haute-Vienne", "Dordogne", "Deux-Sevres", "Charente"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_88 }
            Reponses := array{"Vosges", "Aube", "Haute-Marne", "Ardennes"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_89 }
            Reponses := array{"Doubs", "Jura", "Yonne", "Saone-et-Loire"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_90 }
            Reponses := array{"Jura", "Haute-Saone", "Territoire de Belfort", "Nievre"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_91 }
            Reponses := array{"Yvelines", "Essonne", "Hauts-de-Seine", "Val-de-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_92 }
            Reponses := array{"Val-de-Marne", "Seine-Saint-Denis", "Hauts-de-Seine", "Seine-et-Marne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_93 }
            Reponses := array{"Seine-et-Marne", "Essonne", "Val-d'Oise", "Seine-Saint-Denis"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_94 }
            Reponses := array{"Seine-Saint-Denis", "Paris", "Val-d'Oise", "Val-de-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_95 }
            Reponses := array{"Seine-et-Marne", "Hauts-de-Seine", "Val-d'Oise", "Essonne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_971 }
            Reponses := array{"Guadeloupe", "Guyane", "La Reunion", "Martinique"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_972 }
            Reponses := array{"Martinique", "Mayotte", "La Reunion", "Guadeloupe"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_973 }
            Reponses := array{"Guyane", "Guadeloupe", "Mayotte", "La Reunion"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_974 }
            Reponses := array{"Guadeloupe", "Guyane", "Mayotte", "La Reunion"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (drapeau pixelise)"
            Image := option{ dep_flags_pixel.dfpx_976 }
            Reponses := array{"La Reunion", "Guadeloupe", "Mayotte", "Martinique"}
            BonneReponse := 2

MakeDepFlagsQuestions() : []question =
    MakeDepFlagsQuestionsFR()

MakeDepFlagsQuestionsEN() : []question =
    array:
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_01 }
            Reponses := array{"Savoie", "Cantal", "Loire", "Ain"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_02 }
            Reponses := array{"Somme", "Aisne", "Oise", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_03 }
            Reponses := array{"Loire", "Allier", "Isere", "Ain"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_04 }
            Reponses := array{"Alpes-de-Haute-Provence", "Hautes-Alpes", "Vaucluse", "Var"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_05 }
            Reponses := array{"Var", "Vaucluse", "Hautes-Alpes", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_06 }
            Reponses := array{"Bouches-du-Rhone", "Alpes-Maritimes", "Hautes-Alpes", "Alpes-de-Haute-Provence"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_07 }
            Reponses := array{"Allier", "Savoie", "Isere", "Ardeche"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_08 }
            Reponses := array{"Bas-Rhin", "Meurthe-et-Moselle", "Vosges", "Ardennes"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_09 }
            Reponses := array{"Aude", "Lot", "Pyrenees-Orientales", "Ariege"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_10 }
            Reponses := array{"Vosges", "Haute-Marne", "Moselle", "Aube"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_11 }
            Reponses := array{"Aveyron", "Aude", "Hautes-Pyrenees", "Gard"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_12 }
            Reponses := array{"Herault", "Aveyron", "Gard", "Haute-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_13 }
            Reponses := array{"Bouches-du-Rhone", "Hautes-Alpes", "Var", "Alpes-Maritimes"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_14 }
            Reponses := array{"Seine-Maritime", "Calvados", "Manche", "Eure"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_15 }
            Reponses := array{"Drome", "Savoie", "Haute-Savoie", "Cantal"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_16 }
            Reponses := array{"Gironde", "Pyrenees-Atlantiques", "Charente", "Haute-Vienne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_17 }
            Reponses := array{"Charente-Maritime", "Charente", "Gironde", "Dordogne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_18 }
            Reponses := array{"Indre-et-Loire", "Indre", "Loiret", "Cher"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_19 }
            Reponses := array{"Correze", "Deux-Sevres", "Charente", "Gironde"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_21 }
            Reponses := array{"Nievre", "Cote-d'Or", "Haute-Saone", "Doubs"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_22 }
            Reponses := array{"Morbihan", "Ille-et-Vilaine", "Finistere", "Cotes-d'Armor"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_23 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Vienne", "Creuse"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_24 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Vienne", "Creuse"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_25 }
            Reponses := array{"Haute-Saone", "Doubs", "Territoire de Belfort", "Saone-et-Loire"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_26 }
            Reponses := array{"Loire", "Haute-Loire", "Cantal", "Drome"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_27 }
            Reponses := array{"Manche", "Seine-Maritime", "Calvados", "Eure"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_28 }
            Reponses := array{"Eure-et-Loir", "Loir-et-Cher", "Loiret", "Indre"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_29 }
            Reponses := array{"Morbihan", "Finistere", "Ille-et-Vilaine", "Cotes-d'Armor"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_2a }
            Reponses := array{"Bas-Rhin", "Aveyron", "Vienne", "Corse-du-Sud"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_2b }
            Reponses := array{"Gironde", "Haute-Corse", "Aude", "Pyrenees-Orientales"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_30 }
            Reponses := array{"Lot", "Tarn", "Gers", "Gard"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_31 }
            Reponses := array{"Lozere", "Haute-Garonne", "Hautes-Pyrenees", "Herault"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_32 }
            Reponses := array{"Ariege", "Gers", "Gard", "Tarn"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_33 }
            Reponses := array{"Haute-Vienne", "Correze", "Landes", "Gironde"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_34 }
            Reponses := array{"Herault", "Haute-Garonne", "Tarn-et-Garonne", "Gard"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_35 }
            Reponses := array{"Ille-et-Vilaine", "Cotes-d'Armor", "Morbihan", "Finistere"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_36 }
            Reponses := array{"Indre-et-Loire", "Eure-et-Loir", "Indre", "Cher"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_37 }
            Reponses := array{"Indre-et-Loire", "Indre", "Eure-et-Loir", "Loir-et-Cher"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_38 }
            Reponses := array{"Ain", "Isere", "Ardeche", "Allier"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_39 }
            Reponses := array{"Jura", "Haute-Saone", "Doubs", "Saone-et-Loire"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_40 }
            Reponses := array{"Charente-Maritime", "Dordogne", "Landes", "Correze"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_41 }
            Reponses := array{"Loiret", "Loir-et-Cher", "Indre-et-Loire", "Indre"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_42 }
            Reponses := array{"Isere", "Loire", "Haute-Savoie", "Ardeche"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_43 }
            Reponses := array{"Loire", "Haute-Loire", "Cantal", "Ardeche"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_44 }
            Reponses := array{"Mayenne", "Vendee", "Maine-et-Loire", "Loire-Atlantique"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_45 }
            Reponses := array{"Indre", "Loir-et-Cher", "Indre-et-Loire", "Loiret"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_46 }
            Reponses := array{"Aveyron", "Tarn-et-Garonne", "Haute-Garonne", "Lot"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_47 }
            Reponses := array{"Eure-et-Loir", "Lot-et-Garonne", "Paris", "Ille-et-Vilaine"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_48 }
            Reponses := array{"Aveyron", "Pyrenees-Orientales", "Lozere", "Tarn"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_49 }
            Reponses := array{"Loire-Atlantique", "Maine-et-Loire", "Vendee", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_50 }
            Reponses := array{"Calvados", "Seine-Maritime", "Eure", "Manche"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_51 }
            Reponses := array{"Ardennes", "Marne", "Meuse", "Meurthe-et-Moselle"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_52 }
            Reponses := array{"Aube", "Ardennes", "Haute-Marne", "Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_53 }
            Reponses := array{"Vendee", "Mayenne", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_54 }
            Reponses := array{"Meurthe-et-Moselle", "Ardennes", "Haute-Marne", "Aube"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_55 }
            Reponses := array{"Meuse", "Meurthe-et-Moselle", "Moselle", "Ardennes"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_56 }
            Reponses := array{"Cotes-d'Armor", "Finistere", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_57 }
            Reponses := array{"Moselle", "Ardennes", "Marne", "Meuse"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_58 }
            Reponses := array{"Haute-Saone", "Nievre", "Yonne", "Territoire de Belfort"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_59 }
            Reponses := array{"Aisne", "Nord", "Pas-de-Calais", "Oise"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_60 }
            Reponses := array{"Oise", "Nord", "Somme", "Pas-de-Calais"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_61 }
            Reponses := array{"Calvados", "Seine-Maritime", "Manche", "Orne"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_62 }
            Reponses := array{"Oise", "Aisne", "Pas-de-Calais", "Somme"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_63 }
            Reponses := array{"Ain", "Puy-de-Dome", "Loire", "Haute-Loire"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_64 }
            Reponses := array{"Landes", "Pyrenees-Atlantiques", "Deux-Sevres", "Gironde"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_65 }
            Reponses := array{"Herault", "Gers", "Gard", "Hautes-Pyrenees"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_66 }
            Reponses := array{"Tarn", "Hautes-Pyrenees", "Pyrenees-Orientales", "Tarn-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_67 }
            Reponses := array{"Haute-Marne", "Vosges", "Bas-Rhin", "Meurthe-et-Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_68 }
            Reponses := array{"Isere", "Haut-Rhin", "Pyrenees-Orientales", "Drome"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_69 }
            Reponses := array{"Yonne", "Rhone", "Loir-et-Cher", "Loire-Atlantique"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_70 }
            Reponses := array{"Nievre", "Yonne", "Territoire de Belfort", "Haute-Saone"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_71 }
            Reponses := array{"Doubs", "Territoire de Belfort", "Nievre", "Saone-et-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_72 }
            Reponses := array{"Vendee", "Sarthe", "Mayenne", "Maine-et-Loire"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_73 }
            Reponses := array{"Haute-Savoie", "Drome", "Savoie", "Puy-de-Dome"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_74 }
            Reponses := array{"Haute-Savoie", "Allier", "Haute-Loire", "Isere"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_75 }
            Reponses := array{"Essonne", "Paris", "Hauts-de-Seine", "Val-d'Oise"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_76 }
            Reponses := array{"Seine-Maritime", "Calvados", "Manche", "Orne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_77 }
            Reponses := array{"Seine-et-Marne", "Paris", "Essonne", "Seine-Saint-Denis"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_78 }
            Reponses := array{"Val-de-Marne", "Essonne", "Paris", "Yvelines"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_79 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Charente", "Deux-Sevres"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_80 }
            Reponses := array{"Oise", "Aisne", "Nord", "Somme"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_81 }
            Reponses := array{"Aude", "Haute-Garonne", "Tarn", "Gard"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_82 }
            Reponses := array{"Lot", "Tarn-et-Garonne", "Hautes-Pyrenees", "Lozere"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_83 }
            Reponses := array{"Alpes-Maritimes", "Bouches-du-Rhone", "Var", "Hautes-Alpes"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_84 }
            Reponses := array{"Var", "Alpes-de-Haute-Provence", "Bouches-du-Rhone", "Vaucluse"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_85 }
            Reponses := array{"Vendee", "Mayenne", "Sarthe", "Loire-Atlantique"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_86 }
            Reponses := array{"Correze", "Pyrenees-Atlantiques", "Vienne", "Charente-Maritime"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_87 }
            Reponses := array{"Haute-Vienne", "Dordogne", "Pyrenees-Atlantiques", "Charente"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_88 }
            Reponses := array{"Vosges", "Aube", "Ardennes", "Haute-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_89 }
            Reponses := array{"Cote-d'Or", "Saone-et-Loire", "Yonne", "Nievre"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_90 }
            Reponses := array{"Territoire de Belfort", "Yonne", "Saone-et-Loire", "Doubs"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_91 }
            Reponses := array{"Val-d'Oise", "Val-de-Marne", "Essonne", "Yvelines"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_92 }
            Reponses := array{"Paris", "Val-d'Oise", "Val-de-Marne", "Hauts-de-Seine"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_93 }
            Reponses := array{"Seine-Saint-Denis", "Essonne", "Hauts-de-Seine", "Val-d'Oise"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_94 }
            Reponses := array{"Val-de-Marne", "Hauts-de-Seine", "Paris", "Val-d'Oise"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_95 }
            Reponses := array{"Val-d'Oise", "Val-de-Marne", "Paris", "Essonne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_971 }
            Reponses := array{"Guyane", "Mayotte", "Martinique", "Guadeloupe"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_972 }
            Reponses := array{"Mayotte", "Martinique", "Guyane", "Guadeloupe"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_973 }
            Reponses := array{"Martinique", "Guadeloupe", "Guyane", "La Reunion"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_974 }
            Reponses := array{"La Reunion", "Guyane", "Martinique", "Guadeloupe"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_flags.dflag_976 }
            Reponses := array{"La Reunion", "Guyane", "Mayotte", "Martinique"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_01 }
            Reponses := array{"Ain", "Puy-de-Dome", "Haute-Savoie", "Ardeche"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_02 }
            Reponses := array{"Somme", "Aisne", "Oise", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_03 }
            Reponses := array{"Ain", "Allier", "Puy-de-Dome", "Drome"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_04 }
            Reponses := array{"Hautes-Alpes", "Vaucluse", "Alpes-de-Haute-Provence", "Alpes-Maritimes"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_05 }
            Reponses := array{"Bouches-du-Rhone", "Hautes-Alpes", "Vaucluse", "Alpes-Maritimes"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_06 }
            Reponses := array{"Alpes-de-Haute-Provence", "Hautes-Alpes", "Alpes-Maritimes", "Var"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_07 }
            Reponses := array{"Ain", "Ardeche", "Savoie", "Isere"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_08 }
            Reponses := array{"Haute-Marne", "Aube", "Meuse", "Ardennes"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_09 }
            Reponses := array{"Ariege", "Lot", "Pyrenees-Orientales", "Aude"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_10 }
            Reponses := array{"Meuse", "Bas-Rhin", "Aube", "Meurthe-et-Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_11 }
            Reponses := array{"Herault", "Aude", "Gers", "Tarn-et-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_12 }
            Reponses := array{"Aveyron", "Lozere", "Haute-Garonne", "Gers"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_13 }
            Reponses := array{"Alpes-Maritimes", "Var", "Bouches-du-Rhone", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_14 }
            Reponses := array{"Orne", "Eure", "Calvados", "Manche"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_15 }
            Reponses := array{"Cantal", "Ardeche", "Savoie", "Drome"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_16 }
            Reponses := array{"Pyrenees-Atlantiques", "Creuse", "Charente", "Haute-Vienne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_17 }
            Reponses := array{"Vienne", "Deux-Sevres", "Charente-Maritime", "Gironde"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_18 }
            Reponses := array{"Indre-et-Loire", "Cher", "Eure-et-Loir", "Loiret"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_19 }
            Reponses := array{"Correze", "Pyrenees-Atlantiques", "Dordogne", "Deux-Sevres"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_21 }
            Reponses := array{"Jura", "Doubs", "Yonne", "Cote-d'Or"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_22 }
            Reponses := array{"Morbihan", "Ille-et-Vilaine", "Cotes-d'Armor", "Finistere"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_23 }
            Reponses := array{"Pyrenees-Atlantiques", "Charente", "Vienne", "Creuse"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_24 }
            Reponses := array{"Haute-Vienne", "Pyrenees-Atlantiques", "Dordogne", "Charente"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_25 }
            Reponses := array{"Doubs", "Cote-d'Or", "Saone-et-Loire", "Jura"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_26 }
            Reponses := array{"Isere", "Puy-de-Dome", "Drome", "Haute-Savoie"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_27 }
            Reponses := array{"Eure", "Calvados", "Seine-Maritime", "Orne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_28 }
            Reponses := array{"Indre-et-Loire", "Loir-et-Cher", "Eure-et-Loir", "Indre"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_29 }
            Reponses := array{"Ille-et-Vilaine", "Finistere", "Morbihan", "Cotes-d'Armor"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_2a }
            Reponses := array{"Indre", "Hauts-de-Seine", "Corse-du-Sud", "Finistere"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_2b }
            Reponses := array{"Saone-et-Loire", "Haute-Corse", "Meuse", "Guadeloupe"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_30 }
            Reponses := array{"Tarn", "Lozere", "Gard", "Pyrenees-Orientales"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_31 }
            Reponses := array{"Lot", "Haute-Garonne", "Aveyron", "Gers"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_32 }
            Reponses := array{"Tarn", "Gers", "Lot", "Hautes-Pyrenees"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_33 }
            Reponses := array{"Gironde", "Haute-Vienne", "Pyrenees-Atlantiques", "Correze"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_34 }
            Reponses := array{"Aude", "Herault", "Haute-Garonne", "Gard"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_35 }
            Reponses := array{"Finistere", "Ille-et-Vilaine", "Cotes-d'Armor", "Morbihan"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_36 }
            Reponses := array{"Cher", "Loiret", "Loir-et-Cher", "Indre"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_37 }
            Reponses := array{"Eure-et-Loir", "Loiret", "Loir-et-Cher", "Indre-et-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_38 }
            Reponses := array{"Cantal", "Allier", "Isere", "Savoie"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_39 }
            Reponses := array{"Jura", "Doubs", "Haute-Saone", "Cote-d'Or"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_40 }
            Reponses := array{"Deux-Sevres", "Landes", "Correze", "Gironde"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_41 }
            Reponses := array{"Cher", "Eure-et-Loir", "Loir-et-Cher", "Loiret"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_42 }
            Reponses := array{"Haute-Loire", "Loire", "Puy-de-Dome", "Cantal"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_43 }
            Reponses := array{"Haute-Loire", "Haute-Savoie", "Allier", "Ain"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_44 }
            Reponses := array{"Loire-Atlantique", "Mayenne", "Sarthe", "Vendee"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_45 }
            Reponses := array{"Indre", "Loir-et-Cher", "Indre-et-Loire", "Loiret"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_46 }
            Reponses := array{"Aveyron", "Aude", "Tarn-et-Garonne", "Lot"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_47 }
            Reponses := array{"Lot-et-Garonne", "Cote-d'Or", "Vendee", "Eure"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_48 }
            Reponses := array{"Haute-Garonne", "Lozere", "Ariege", "Herault"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_49 }
            Reponses := array{"Maine-et-Loire", "Sarthe", "Loire-Atlantique", "Vendee"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_50 }
            Reponses := array{"Seine-Maritime", "Manche", "Calvados", "Orne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_51 }
            Reponses := array{"Ardennes", "Marne", "Moselle", "Bas-Rhin"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_52 }
            Reponses := array{"Moselle", "Bas-Rhin", "Meuse", "Haute-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_53 }
            Reponses := array{"Maine-et-Loire", "Loire-Atlantique", "Vendee", "Mayenne"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_54 }
            Reponses := array{"Meurthe-et-Moselle", "Aube", "Moselle", "Vosges"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_55 }
            Reponses := array{"Ardennes", "Haute-Marne", "Vosges", "Meuse"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_56 }
            Reponses := array{"Finistere", "Morbihan", "Cotes-d'Armor", "Ille-et-Vilaine"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_57 }
            Reponses := array{"Moselle", "Bas-Rhin", "Marne", "Haute-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_58 }
            Reponses := array{"Nievre", "Haute-Saone", "Cote-d'Or", "Yonne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_59 }
            Reponses := array{"Aisne", "Oise", "Somme", "Nord"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_60 }
            Reponses := array{"Somme", "Oise", "Aisne", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_61 }
            Reponses := array{"Orne", "Calvados", "Eure", "Seine-Maritime"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_62 }
            Reponses := array{"Aisne", "Oise", "Somme", "Pas-de-Calais"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_63 }
            Reponses := array{"Loire", "Isere", "Puy-de-Dome", "Haute-Savoie"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_64 }
            Reponses := array{"Charente", "Pyrenees-Atlantiques", "Creuse", "Landes"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_65 }
            Reponses := array{"Tarn", "Hautes-Pyrenees", "Lozere", "Haute-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_66 }
            Reponses := array{"Hautes-Pyrenees", "Haute-Garonne", "Pyrenees-Orientales", "Tarn"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_67 }
            Reponses := array{"Aube", "Vosges", "Moselle", "Bas-Rhin"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_68 }
            Reponses := array{"Somme", "Essonne", "Haut-Rhin", "Oise"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_69 }
            Reponses := array{"Rhone", "Seine-Saint-Denis", "Tarn-et-Garonne", "Nievre"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_70 }
            Reponses := array{"Jura", "Doubs", "Yonne", "Haute-Saone"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_71 }
            Reponses := array{"Doubs", "Yonne", "Saone-et-Loire", "Territoire de Belfort"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_72 }
            Reponses := array{"Mayenne", "Sarthe", "Maine-et-Loire", "Vendee"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_73 }
            Reponses := array{"Savoie", "Puy-de-Dome", "Ain", "Drome"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_74 }
            Reponses := array{"Haute-Loire", "Loire", "Haute-Savoie", "Ardeche"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_75 }
            Reponses := array{"Val-d'Oise", "Paris", "Essonne", "Yvelines"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_76 }
            Reponses := array{"Manche", "Seine-Maritime", "Eure", "Orne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_77 }
            Reponses := array{"Val-de-Marne", "Hauts-de-Seine", "Paris", "Seine-et-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_78 }
            Reponses := array{"Val-de-Marne", "Yvelines", "Paris", "Seine-et-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_79 }
            Reponses := array{"Haute-Vienne", "Deux-Sevres", "Creuse", "Correze"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_80 }
            Reponses := array{"Nord", "Somme", "Aisne", "Oise"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_81 }
            Reponses := array{"Ariege", "Gers", "Tarn-et-Garonne", "Tarn"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_82 }
            Reponses := array{"Tarn-et-Garonne", "Hautes-Pyrenees", "Lot", "Gard"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_83 }
            Reponses := array{"Bouches-du-Rhone", "Var", "Alpes-de-Haute-Provence", "Hautes-Alpes"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_84 }
            Reponses := array{"Alpes-de-Haute-Provence", "Bouches-du-Rhone", "Var", "Vaucluse"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_85 }
            Reponses := array{"Mayenne", "Maine-et-Loire", "Vendee", "Sarthe"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_86 }
            Reponses := array{"Haute-Vienne", "Landes", "Vienne", "Charente"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_87 }
            Reponses := array{"Haute-Vienne", "Dordogne", "Deux-Sevres", "Charente"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_88 }
            Reponses := array{"Vosges", "Aube", "Haute-Marne", "Ardennes"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_89 }
            Reponses := array{"Doubs", "Jura", "Yonne", "Saone-et-Loire"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_90 }
            Reponses := array{"Jura", "Haute-Saone", "Territoire de Belfort", "Nievre"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_91 }
            Reponses := array{"Yvelines", "Essonne", "Hauts-de-Seine", "Val-de-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_92 }
            Reponses := array{"Val-de-Marne", "Seine-Saint-Denis", "Hauts-de-Seine", "Seine-et-Marne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_93 }
            Reponses := array{"Seine-et-Marne", "Essonne", "Val-d'Oise", "Seine-Saint-Denis"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_94 }
            Reponses := array{"Seine-Saint-Denis", "Paris", "Val-d'Oise", "Val-de-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_95 }
            Reponses := array{"Seine-et-Marne", "Hauts-de-Seine", "Val-d'Oise", "Essonne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_971 }
            Reponses := array{"Guadeloupe", "Guyane", "La Reunion", "Martinique"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_972 }
            Reponses := array{"Martinique", "Mayotte", "La Reunion", "Guadeloupe"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_973 }
            Reponses := array{"Guyane", "Guadeloupe", "Mayotte", "La Reunion"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_974 }
            Reponses := array{"Guadeloupe", "Guyane", "Mayotte", "La Reunion"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated)"
            Image := option{ dep_flags_pixel.dfpx_976 }
            Reponses := array{"La Reunion", "Guadeloupe", "Mayotte", "Martinique"}
            BonneReponse := 2

MakeDepFlagsQuestionsES() : []question =
    array:
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_01 }
            Reponses := array{"Savoie", "Cantal", "Loire", "Ain"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_02 }
            Reponses := array{"Somme", "Aisne", "Oise", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_03 }
            Reponses := array{"Loire", "Allier", "Isere", "Ain"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_04 }
            Reponses := array{"Alpes-de-Haute-Provence", "Hautes-Alpes", "Vaucluse", "Var"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_05 }
            Reponses := array{"Var", "Vaucluse", "Hautes-Alpes", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_06 }
            Reponses := array{"Bouches-du-Rhone", "Alpes-Maritimes", "Hautes-Alpes", "Alpes-de-Haute-Provence"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_07 }
            Reponses := array{"Allier", "Savoie", "Isere", "Ardeche"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_08 }
            Reponses := array{"Bas-Rhin", "Meurthe-et-Moselle", "Vosges", "Ardennes"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_09 }
            Reponses := array{"Aude", "Lot", "Pyrenees-Orientales", "Ariege"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_10 }
            Reponses := array{"Vosges", "Haute-Marne", "Moselle", "Aube"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_11 }
            Reponses := array{"Aveyron", "Aude", "Hautes-Pyrenees", "Gard"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_12 }
            Reponses := array{"Herault", "Aveyron", "Gard", "Haute-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_13 }
            Reponses := array{"Bouches-du-Rhone", "Hautes-Alpes", "Var", "Alpes-Maritimes"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_14 }
            Reponses := array{"Seine-Maritime", "Calvados", "Manche", "Eure"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_15 }
            Reponses := array{"Drome", "Savoie", "Haute-Savoie", "Cantal"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_16 }
            Reponses := array{"Gironde", "Pyrenees-Atlantiques", "Charente", "Haute-Vienne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_17 }
            Reponses := array{"Charente-Maritime", "Charente", "Gironde", "Dordogne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_18 }
            Reponses := array{"Indre-et-Loire", "Indre", "Loiret", "Cher"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_19 }
            Reponses := array{"Correze", "Deux-Sevres", "Charente", "Gironde"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_21 }
            Reponses := array{"Nievre", "Cote-d'Or", "Haute-Saone", "Doubs"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_22 }
            Reponses := array{"Morbihan", "Ille-et-Vilaine", "Finistere", "Cotes-d'Armor"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_23 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Vienne", "Creuse"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_24 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Vienne", "Creuse"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_25 }
            Reponses := array{"Haute-Saone", "Doubs", "Territoire de Belfort", "Saone-et-Loire"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_26 }
            Reponses := array{"Loire", "Haute-Loire", "Cantal", "Drome"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_27 }
            Reponses := array{"Manche", "Seine-Maritime", "Calvados", "Eure"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_28 }
            Reponses := array{"Eure-et-Loir", "Loir-et-Cher", "Loiret", "Indre"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_29 }
            Reponses := array{"Morbihan", "Finistere", "Ille-et-Vilaine", "Cotes-d'Armor"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_2a }
            Reponses := array{"Bas-Rhin", "Aveyron", "Vienne", "Corse-du-Sud"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_2b }
            Reponses := array{"Gironde", "Haute-Corse", "Aude", "Pyrenees-Orientales"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_30 }
            Reponses := array{"Lot", "Tarn", "Gers", "Gard"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_31 }
            Reponses := array{"Lozere", "Haute-Garonne", "Hautes-Pyrenees", "Herault"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_32 }
            Reponses := array{"Ariege", "Gers", "Gard", "Tarn"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_33 }
            Reponses := array{"Haute-Vienne", "Correze", "Landes", "Gironde"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_34 }
            Reponses := array{"Herault", "Haute-Garonne", "Tarn-et-Garonne", "Gard"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_35 }
            Reponses := array{"Ille-et-Vilaine", "Cotes-d'Armor", "Morbihan", "Finistere"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_36 }
            Reponses := array{"Indre-et-Loire", "Eure-et-Loir", "Indre", "Cher"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_37 }
            Reponses := array{"Indre-et-Loire", "Indre", "Eure-et-Loir", "Loir-et-Cher"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_38 }
            Reponses := array{"Ain", "Isere", "Ardeche", "Allier"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_39 }
            Reponses := array{"Jura", "Haute-Saone", "Doubs", "Saone-et-Loire"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_40 }
            Reponses := array{"Charente-Maritime", "Dordogne", "Landes", "Correze"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_41 }
            Reponses := array{"Loiret", "Loir-et-Cher", "Indre-et-Loire", "Indre"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_42 }
            Reponses := array{"Isere", "Loire", "Haute-Savoie", "Ardeche"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_43 }
            Reponses := array{"Loire", "Haute-Loire", "Cantal", "Ardeche"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_44 }
            Reponses := array{"Mayenne", "Vendee", "Maine-et-Loire", "Loire-Atlantique"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_45 }
            Reponses := array{"Indre", "Loir-et-Cher", "Indre-et-Loire", "Loiret"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_46 }
            Reponses := array{"Aveyron", "Tarn-et-Garonne", "Haute-Garonne", "Lot"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_47 }
            Reponses := array{"Eure-et-Loir", "Lot-et-Garonne", "Paris", "Ille-et-Vilaine"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_48 }
            Reponses := array{"Aveyron", "Pyrenees-Orientales", "Lozere", "Tarn"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_49 }
            Reponses := array{"Loire-Atlantique", "Maine-et-Loire", "Vendee", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_50 }
            Reponses := array{"Calvados", "Seine-Maritime", "Eure", "Manche"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_51 }
            Reponses := array{"Ardennes", "Marne", "Meuse", "Meurthe-et-Moselle"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_52 }
            Reponses := array{"Aube", "Ardennes", "Haute-Marne", "Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_53 }
            Reponses := array{"Vendee", "Mayenne", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_54 }
            Reponses := array{"Meurthe-et-Moselle", "Ardennes", "Haute-Marne", "Aube"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_55 }
            Reponses := array{"Meuse", "Meurthe-et-Moselle", "Moselle", "Ardennes"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_56 }
            Reponses := array{"Cotes-d'Armor", "Finistere", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_57 }
            Reponses := array{"Moselle", "Ardennes", "Marne", "Meuse"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_58 }
            Reponses := array{"Haute-Saone", "Nievre", "Yonne", "Territoire de Belfort"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_59 }
            Reponses := array{"Aisne", "Nord", "Pas-de-Calais", "Oise"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_60 }
            Reponses := array{"Oise", "Nord", "Somme", "Pas-de-Calais"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_61 }
            Reponses := array{"Calvados", "Seine-Maritime", "Manche", "Orne"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_62 }
            Reponses := array{"Oise", "Aisne", "Pas-de-Calais", "Somme"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_63 }
            Reponses := array{"Ain", "Puy-de-Dome", "Loire", "Haute-Loire"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_64 }
            Reponses := array{"Landes", "Pyrenees-Atlantiques", "Deux-Sevres", "Gironde"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_65 }
            Reponses := array{"Herault", "Gers", "Gard", "Hautes-Pyrenees"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_66 }
            Reponses := array{"Tarn", "Hautes-Pyrenees", "Pyrenees-Orientales", "Tarn-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_67 }
            Reponses := array{"Haute-Marne", "Vosges", "Bas-Rhin", "Meurthe-et-Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_68 }
            Reponses := array{"Isere", "Haut-Rhin", "Pyrenees-Orientales", "Drome"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_69 }
            Reponses := array{"Yonne", "Rhone", "Loir-et-Cher", "Loire-Atlantique"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_70 }
            Reponses := array{"Nievre", "Yonne", "Territoire de Belfort", "Haute-Saone"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_71 }
            Reponses := array{"Doubs", "Territoire de Belfort", "Nievre", "Saone-et-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_72 }
            Reponses := array{"Vendee", "Sarthe", "Mayenne", "Maine-et-Loire"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_73 }
            Reponses := array{"Haute-Savoie", "Drome", "Savoie", "Puy-de-Dome"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_74 }
            Reponses := array{"Haute-Savoie", "Allier", "Haute-Loire", "Isere"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_75 }
            Reponses := array{"Essonne", "Paris", "Hauts-de-Seine", "Val-d'Oise"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_76 }
            Reponses := array{"Seine-Maritime", "Calvados", "Manche", "Orne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_77 }
            Reponses := array{"Seine-et-Marne", "Paris", "Essonne", "Seine-Saint-Denis"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_78 }
            Reponses := array{"Val-de-Marne", "Essonne", "Paris", "Yvelines"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_79 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Charente", "Deux-Sevres"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_80 }
            Reponses := array{"Oise", "Aisne", "Nord", "Somme"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_81 }
            Reponses := array{"Aude", "Haute-Garonne", "Tarn", "Gard"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_82 }
            Reponses := array{"Lot", "Tarn-et-Garonne", "Hautes-Pyrenees", "Lozere"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_83 }
            Reponses := array{"Alpes-Maritimes", "Bouches-du-Rhone", "Var", "Hautes-Alpes"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_84 }
            Reponses := array{"Var", "Alpes-de-Haute-Provence", "Bouches-du-Rhone", "Vaucluse"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_85 }
            Reponses := array{"Vendee", "Mayenne", "Sarthe", "Loire-Atlantique"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_86 }
            Reponses := array{"Correze", "Pyrenees-Atlantiques", "Vienne", "Charente-Maritime"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_87 }
            Reponses := array{"Haute-Vienne", "Dordogne", "Pyrenees-Atlantiques", "Charente"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_88 }
            Reponses := array{"Vosges", "Aube", "Ardennes", "Haute-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_89 }
            Reponses := array{"Cote-d'Or", "Saone-et-Loire", "Yonne", "Nievre"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_90 }
            Reponses := array{"Territoire de Belfort", "Yonne", "Saone-et-Loire", "Doubs"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_91 }
            Reponses := array{"Val-d'Oise", "Val-de-Marne", "Essonne", "Yvelines"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_92 }
            Reponses := array{"Paris", "Val-d'Oise", "Val-de-Marne", "Hauts-de-Seine"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_93 }
            Reponses := array{"Seine-Saint-Denis", "Essonne", "Hauts-de-Seine", "Val-d'Oise"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_94 }
            Reponses := array{"Val-de-Marne", "Hauts-de-Seine", "Paris", "Val-d'Oise"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_95 }
            Reponses := array{"Val-d'Oise", "Val-de-Marne", "Paris", "Essonne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_971 }
            Reponses := array{"Guyane", "Mayotte", "Martinique", "Guadeloupe"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_972 }
            Reponses := array{"Mayotte", "Martinique", "Guyane", "Guadeloupe"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_973 }
            Reponses := array{"Martinique", "Guadeloupe", "Guyane", "La Reunion"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_974 }
            Reponses := array{"La Reunion", "Guyane", "Martinique", "Guadeloupe"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_flags.dflag_976 }
            Reponses := array{"La Reunion", "Guyane", "Mayotte", "Martinique"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_01 }
            Reponses := array{"Ain", "Puy-de-Dome", "Haute-Savoie", "Ardeche"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_02 }
            Reponses := array{"Somme", "Aisne", "Oise", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_03 }
            Reponses := array{"Ain", "Allier", "Puy-de-Dome", "Drome"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_04 }
            Reponses := array{"Hautes-Alpes", "Vaucluse", "Alpes-de-Haute-Provence", "Alpes-Maritimes"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_05 }
            Reponses := array{"Bouches-du-Rhone", "Hautes-Alpes", "Vaucluse", "Alpes-Maritimes"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_06 }
            Reponses := array{"Alpes-de-Haute-Provence", "Hautes-Alpes", "Alpes-Maritimes", "Var"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_07 }
            Reponses := array{"Ain", "Ardeche", "Savoie", "Isere"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_08 }
            Reponses := array{"Haute-Marne", "Aube", "Meuse", "Ardennes"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_09 }
            Reponses := array{"Ariege", "Lot", "Pyrenees-Orientales", "Aude"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_10 }
            Reponses := array{"Meuse", "Bas-Rhin", "Aube", "Meurthe-et-Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_11 }
            Reponses := array{"Herault", "Aude", "Gers", "Tarn-et-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_12 }
            Reponses := array{"Aveyron", "Lozere", "Haute-Garonne", "Gers"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_13 }
            Reponses := array{"Alpes-Maritimes", "Var", "Bouches-du-Rhone", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_14 }
            Reponses := array{"Orne", "Eure", "Calvados", "Manche"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_15 }
            Reponses := array{"Cantal", "Ardeche", "Savoie", "Drome"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_16 }
            Reponses := array{"Pyrenees-Atlantiques", "Creuse", "Charente", "Haute-Vienne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_17 }
            Reponses := array{"Vienne", "Deux-Sevres", "Charente-Maritime", "Gironde"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_18 }
            Reponses := array{"Indre-et-Loire", "Cher", "Eure-et-Loir", "Loiret"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_19 }
            Reponses := array{"Correze", "Pyrenees-Atlantiques", "Dordogne", "Deux-Sevres"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_21 }
            Reponses := array{"Jura", "Doubs", "Yonne", "Cote-d'Or"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_22 }
            Reponses := array{"Morbihan", "Ille-et-Vilaine", "Cotes-d'Armor", "Finistere"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_23 }
            Reponses := array{"Pyrenees-Atlantiques", "Charente", "Vienne", "Creuse"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_24 }
            Reponses := array{"Haute-Vienne", "Pyrenees-Atlantiques", "Dordogne", "Charente"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_25 }
            Reponses := array{"Doubs", "Cote-d'Or", "Saone-et-Loire", "Jura"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_26 }
            Reponses := array{"Isere", "Puy-de-Dome", "Drome", "Haute-Savoie"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_27 }
            Reponses := array{"Eure", "Calvados", "Seine-Maritime", "Orne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_28 }
            Reponses := array{"Indre-et-Loire", "Loir-et-Cher", "Eure-et-Loir", "Indre"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_29 }
            Reponses := array{"Ille-et-Vilaine", "Finistere", "Morbihan", "Cotes-d'Armor"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_2a }
            Reponses := array{"Indre", "Hauts-de-Seine", "Corse-du-Sud", "Finistere"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_2b }
            Reponses := array{"Saone-et-Loire", "Haute-Corse", "Meuse", "Guadeloupe"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_30 }
            Reponses := array{"Tarn", "Lozere", "Gard", "Pyrenees-Orientales"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_31 }
            Reponses := array{"Lot", "Haute-Garonne", "Aveyron", "Gers"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_32 }
            Reponses := array{"Tarn", "Gers", "Lot", "Hautes-Pyrenees"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_33 }
            Reponses := array{"Gironde", "Haute-Vienne", "Pyrenees-Atlantiques", "Correze"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_34 }
            Reponses := array{"Aude", "Herault", "Haute-Garonne", "Gard"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_35 }
            Reponses := array{"Finistere", "Ille-et-Vilaine", "Cotes-d'Armor", "Morbihan"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_36 }
            Reponses := array{"Cher", "Loiret", "Loir-et-Cher", "Indre"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_37 }
            Reponses := array{"Eure-et-Loir", "Loiret", "Loir-et-Cher", "Indre-et-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_38 }
            Reponses := array{"Cantal", "Allier", "Isere", "Savoie"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_39 }
            Reponses := array{"Jura", "Doubs", "Haute-Saone", "Cote-d'Or"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_40 }
            Reponses := array{"Deux-Sevres", "Landes", "Correze", "Gironde"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_41 }
            Reponses := array{"Cher", "Eure-et-Loir", "Loir-et-Cher", "Loiret"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_42 }
            Reponses := array{"Haute-Loire", "Loire", "Puy-de-Dome", "Cantal"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_43 }
            Reponses := array{"Haute-Loire", "Haute-Savoie", "Allier", "Ain"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_44 }
            Reponses := array{"Loire-Atlantique", "Mayenne", "Sarthe", "Vendee"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_45 }
            Reponses := array{"Indre", "Loir-et-Cher", "Indre-et-Loire", "Loiret"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_46 }
            Reponses := array{"Aveyron", "Aude", "Tarn-et-Garonne", "Lot"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_47 }
            Reponses := array{"Lot-et-Garonne", "Cote-d'Or", "Vendee", "Eure"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_48 }
            Reponses := array{"Haute-Garonne", "Lozere", "Ariege", "Herault"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_49 }
            Reponses := array{"Maine-et-Loire", "Sarthe", "Loire-Atlantique", "Vendee"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_50 }
            Reponses := array{"Seine-Maritime", "Manche", "Calvados", "Orne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_51 }
            Reponses := array{"Ardennes", "Marne", "Moselle", "Bas-Rhin"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_52 }
            Reponses := array{"Moselle", "Bas-Rhin", "Meuse", "Haute-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_53 }
            Reponses := array{"Maine-et-Loire", "Loire-Atlantique", "Vendee", "Mayenne"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_54 }
            Reponses := array{"Meurthe-et-Moselle", "Aube", "Moselle", "Vosges"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_55 }
            Reponses := array{"Ardennes", "Haute-Marne", "Vosges", "Meuse"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_56 }
            Reponses := array{"Finistere", "Morbihan", "Cotes-d'Armor", "Ille-et-Vilaine"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_57 }
            Reponses := array{"Moselle", "Bas-Rhin", "Marne", "Haute-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_58 }
            Reponses := array{"Nievre", "Haute-Saone", "Cote-d'Or", "Yonne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_59 }
            Reponses := array{"Aisne", "Oise", "Somme", "Nord"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_60 }
            Reponses := array{"Somme", "Oise", "Aisne", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_61 }
            Reponses := array{"Orne", "Calvados", "Eure", "Seine-Maritime"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_62 }
            Reponses := array{"Aisne", "Oise", "Somme", "Pas-de-Calais"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_63 }
            Reponses := array{"Loire", "Isere", "Puy-de-Dome", "Haute-Savoie"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_64 }
            Reponses := array{"Charente", "Pyrenees-Atlantiques", "Creuse", "Landes"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_65 }
            Reponses := array{"Tarn", "Hautes-Pyrenees", "Lozere", "Haute-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_66 }
            Reponses := array{"Hautes-Pyrenees", "Haute-Garonne", "Pyrenees-Orientales", "Tarn"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_67 }
            Reponses := array{"Aube", "Vosges", "Moselle", "Bas-Rhin"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_68 }
            Reponses := array{"Somme", "Essonne", "Haut-Rhin", "Oise"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_69 }
            Reponses := array{"Rhone", "Seine-Saint-Denis", "Tarn-et-Garonne", "Nievre"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_70 }
            Reponses := array{"Jura", "Doubs", "Yonne", "Haute-Saone"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_71 }
            Reponses := array{"Doubs", "Yonne", "Saone-et-Loire", "Territoire de Belfort"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_72 }
            Reponses := array{"Mayenne", "Sarthe", "Maine-et-Loire", "Vendee"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_73 }
            Reponses := array{"Savoie", "Puy-de-Dome", "Ain", "Drome"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_74 }
            Reponses := array{"Haute-Loire", "Loire", "Haute-Savoie", "Ardeche"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_75 }
            Reponses := array{"Val-d'Oise", "Paris", "Essonne", "Yvelines"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_76 }
            Reponses := array{"Manche", "Seine-Maritime", "Eure", "Orne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_77 }
            Reponses := array{"Val-de-Marne", "Hauts-de-Seine", "Paris", "Seine-et-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_78 }
            Reponses := array{"Val-de-Marne", "Yvelines", "Paris", "Seine-et-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_79 }
            Reponses := array{"Haute-Vienne", "Deux-Sevres", "Creuse", "Correze"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_80 }
            Reponses := array{"Nord", "Somme", "Aisne", "Oise"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_81 }
            Reponses := array{"Ariege", "Gers", "Tarn-et-Garonne", "Tarn"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_82 }
            Reponses := array{"Tarn-et-Garonne", "Hautes-Pyrenees", "Lot", "Gard"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_83 }
            Reponses := array{"Bouches-du-Rhone", "Var", "Alpes-de-Haute-Provence", "Hautes-Alpes"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_84 }
            Reponses := array{"Alpes-de-Haute-Provence", "Bouches-du-Rhone", "Var", "Vaucluse"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_85 }
            Reponses := array{"Mayenne", "Maine-et-Loire", "Vendee", "Sarthe"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_86 }
            Reponses := array{"Haute-Vienne", "Landes", "Vienne", "Charente"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_87 }
            Reponses := array{"Haute-Vienne", "Dordogne", "Deux-Sevres", "Charente"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_88 }
            Reponses := array{"Vosges", "Aube", "Haute-Marne", "Ardennes"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_89 }
            Reponses := array{"Doubs", "Jura", "Yonne", "Saone-et-Loire"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_90 }
            Reponses := array{"Jura", "Haute-Saone", "Territoire de Belfort", "Nievre"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_91 }
            Reponses := array{"Yvelines", "Essonne", "Hauts-de-Seine", "Val-de-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_92 }
            Reponses := array{"Val-de-Marne", "Seine-Saint-Denis", "Hauts-de-Seine", "Seine-et-Marne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_93 }
            Reponses := array{"Seine-et-Marne", "Essonne", "Val-d'Oise", "Seine-Saint-Denis"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_94 }
            Reponses := array{"Seine-Saint-Denis", "Paris", "Val-d'Oise", "Val-de-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_95 }
            Reponses := array{"Seine-et-Marne", "Hauts-de-Seine", "Val-d'Oise", "Essonne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_971 }
            Reponses := array{"Guadeloupe", "Guyane", "La Reunion", "Martinique"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_972 }
            Reponses := array{"Martinique", "Mayotte", "La Reunion", "Guadeloupe"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_973 }
            Reponses := array{"Guyane", "Guadeloupe", "Mayotte", "La Reunion"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_974 }
            Reponses := array{"Guadeloupe", "Guyane", "Mayotte", "La Reunion"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (pixelado)"
            Image := option{ dep_flags_pixel.dfpx_976 }
            Reponses := array{"La Reunion", "Guadeloupe", "Mayotte", "Martinique"}
            BonneReponse := 2

MakeDepFlagsQuestionsDE() : []question =
    array:
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_01 }
            Reponses := array{"Savoie", "Cantal", "Loire", "Ain"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_02 }
            Reponses := array{"Somme", "Aisne", "Oise", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_03 }
            Reponses := array{"Loire", "Allier", "Isere", "Ain"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_04 }
            Reponses := array{"Alpes-de-Haute-Provence", "Hautes-Alpes", "Vaucluse", "Var"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_05 }
            Reponses := array{"Var", "Vaucluse", "Hautes-Alpes", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_06 }
            Reponses := array{"Bouches-du-Rhone", "Alpes-Maritimes", "Hautes-Alpes", "Alpes-de-Haute-Provence"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_07 }
            Reponses := array{"Allier", "Savoie", "Isere", "Ardeche"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_08 }
            Reponses := array{"Bas-Rhin", "Meurthe-et-Moselle", "Vosges", "Ardennes"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_09 }
            Reponses := array{"Aude", "Lot", "Pyrenees-Orientales", "Ariege"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_10 }
            Reponses := array{"Vosges", "Haute-Marne", "Moselle", "Aube"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_11 }
            Reponses := array{"Aveyron", "Aude", "Hautes-Pyrenees", "Gard"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_12 }
            Reponses := array{"Herault", "Aveyron", "Gard", "Haute-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_13 }
            Reponses := array{"Bouches-du-Rhone", "Hautes-Alpes", "Var", "Alpes-Maritimes"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_14 }
            Reponses := array{"Seine-Maritime", "Calvados", "Manche", "Eure"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_15 }
            Reponses := array{"Drome", "Savoie", "Haute-Savoie", "Cantal"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_16 }
            Reponses := array{"Gironde", "Pyrenees-Atlantiques", "Charente", "Haute-Vienne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_17 }
            Reponses := array{"Charente-Maritime", "Charente", "Gironde", "Dordogne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_18 }
            Reponses := array{"Indre-et-Loire", "Indre", "Loiret", "Cher"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_19 }
            Reponses := array{"Correze", "Deux-Sevres", "Charente", "Gironde"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_21 }
            Reponses := array{"Nievre", "Cote-d'Or", "Haute-Saone", "Doubs"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_22 }
            Reponses := array{"Morbihan", "Ille-et-Vilaine", "Finistere", "Cotes-d'Armor"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_23 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Vienne", "Creuse"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_24 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Vienne", "Creuse"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_25 }
            Reponses := array{"Haute-Saone", "Doubs", "Territoire de Belfort", "Saone-et-Loire"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_26 }
            Reponses := array{"Loire", "Haute-Loire", "Cantal", "Drome"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_27 }
            Reponses := array{"Manche", "Seine-Maritime", "Calvados", "Eure"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_28 }
            Reponses := array{"Eure-et-Loir", "Loir-et-Cher", "Loiret", "Indre"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_29 }
            Reponses := array{"Morbihan", "Finistere", "Ille-et-Vilaine", "Cotes-d'Armor"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_2a }
            Reponses := array{"Bas-Rhin", "Aveyron", "Vienne", "Corse-du-Sud"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_2b }
            Reponses := array{"Gironde", "Haute-Corse", "Aude", "Pyrenees-Orientales"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_30 }
            Reponses := array{"Lot", "Tarn", "Gers", "Gard"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_31 }
            Reponses := array{"Lozere", "Haute-Garonne", "Hautes-Pyrenees", "Herault"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_32 }
            Reponses := array{"Ariege", "Gers", "Gard", "Tarn"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_33 }
            Reponses := array{"Haute-Vienne", "Correze", "Landes", "Gironde"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_34 }
            Reponses := array{"Herault", "Haute-Garonne", "Tarn-et-Garonne", "Gard"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_35 }
            Reponses := array{"Ille-et-Vilaine", "Cotes-d'Armor", "Morbihan", "Finistere"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_36 }
            Reponses := array{"Indre-et-Loire", "Eure-et-Loir", "Indre", "Cher"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_37 }
            Reponses := array{"Indre-et-Loire", "Indre", "Eure-et-Loir", "Loir-et-Cher"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_38 }
            Reponses := array{"Ain", "Isere", "Ardeche", "Allier"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_39 }
            Reponses := array{"Jura", "Haute-Saone", "Doubs", "Saone-et-Loire"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_40 }
            Reponses := array{"Charente-Maritime", "Dordogne", "Landes", "Correze"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_41 }
            Reponses := array{"Loiret", "Loir-et-Cher", "Indre-et-Loire", "Indre"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_42 }
            Reponses := array{"Isere", "Loire", "Haute-Savoie", "Ardeche"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_43 }
            Reponses := array{"Loire", "Haute-Loire", "Cantal", "Ardeche"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_44 }
            Reponses := array{"Mayenne", "Vendee", "Maine-et-Loire", "Loire-Atlantique"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_45 }
            Reponses := array{"Indre", "Loir-et-Cher", "Indre-et-Loire", "Loiret"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_46 }
            Reponses := array{"Aveyron", "Tarn-et-Garonne", "Haute-Garonne", "Lot"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_47 }
            Reponses := array{"Eure-et-Loir", "Lot-et-Garonne", "Paris", "Ille-et-Vilaine"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_48 }
            Reponses := array{"Aveyron", "Pyrenees-Orientales", "Lozere", "Tarn"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_49 }
            Reponses := array{"Loire-Atlantique", "Maine-et-Loire", "Vendee", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_50 }
            Reponses := array{"Calvados", "Seine-Maritime", "Eure", "Manche"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_51 }
            Reponses := array{"Ardennes", "Marne", "Meuse", "Meurthe-et-Moselle"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_52 }
            Reponses := array{"Aube", "Ardennes", "Haute-Marne", "Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_53 }
            Reponses := array{"Vendee", "Mayenne", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_54 }
            Reponses := array{"Meurthe-et-Moselle", "Ardennes", "Haute-Marne", "Aube"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_55 }
            Reponses := array{"Meuse", "Meurthe-et-Moselle", "Moselle", "Ardennes"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_56 }
            Reponses := array{"Cotes-d'Armor", "Finistere", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_57 }
            Reponses := array{"Moselle", "Ardennes", "Marne", "Meuse"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_58 }
            Reponses := array{"Haute-Saone", "Nievre", "Yonne", "Territoire de Belfort"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_59 }
            Reponses := array{"Aisne", "Nord", "Pas-de-Calais", "Oise"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_60 }
            Reponses := array{"Oise", "Nord", "Somme", "Pas-de-Calais"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_61 }
            Reponses := array{"Calvados", "Seine-Maritime", "Manche", "Orne"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_62 }
            Reponses := array{"Oise", "Aisne", "Pas-de-Calais", "Somme"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_63 }
            Reponses := array{"Ain", "Puy-de-Dome", "Loire", "Haute-Loire"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_64 }
            Reponses := array{"Landes", "Pyrenees-Atlantiques", "Deux-Sevres", "Gironde"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_65 }
            Reponses := array{"Herault", "Gers", "Gard", "Hautes-Pyrenees"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_66 }
            Reponses := array{"Tarn", "Hautes-Pyrenees", "Pyrenees-Orientales", "Tarn-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_67 }
            Reponses := array{"Haute-Marne", "Vosges", "Bas-Rhin", "Meurthe-et-Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_68 }
            Reponses := array{"Isere", "Haut-Rhin", "Pyrenees-Orientales", "Drome"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_69 }
            Reponses := array{"Yonne", "Rhone", "Loir-et-Cher", "Loire-Atlantique"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_70 }
            Reponses := array{"Nievre", "Yonne", "Territoire de Belfort", "Haute-Saone"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_71 }
            Reponses := array{"Doubs", "Territoire de Belfort", "Nievre", "Saone-et-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_72 }
            Reponses := array{"Vendee", "Sarthe", "Mayenne", "Maine-et-Loire"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_73 }
            Reponses := array{"Haute-Savoie", "Drome", "Savoie", "Puy-de-Dome"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_74 }
            Reponses := array{"Haute-Savoie", "Allier", "Haute-Loire", "Isere"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_75 }
            Reponses := array{"Essonne", "Paris", "Hauts-de-Seine", "Val-d'Oise"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_76 }
            Reponses := array{"Seine-Maritime", "Calvados", "Manche", "Orne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_77 }
            Reponses := array{"Seine-et-Marne", "Paris", "Essonne", "Seine-Saint-Denis"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_78 }
            Reponses := array{"Val-de-Marne", "Essonne", "Paris", "Yvelines"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_79 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Charente", "Deux-Sevres"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_80 }
            Reponses := array{"Oise", "Aisne", "Nord", "Somme"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_81 }
            Reponses := array{"Aude", "Haute-Garonne", "Tarn", "Gard"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_82 }
            Reponses := array{"Lot", "Tarn-et-Garonne", "Hautes-Pyrenees", "Lozere"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_83 }
            Reponses := array{"Alpes-Maritimes", "Bouches-du-Rhone", "Var", "Hautes-Alpes"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_84 }
            Reponses := array{"Var", "Alpes-de-Haute-Provence", "Bouches-du-Rhone", "Vaucluse"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_85 }
            Reponses := array{"Vendee", "Mayenne", "Sarthe", "Loire-Atlantique"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_86 }
            Reponses := array{"Correze", "Pyrenees-Atlantiques", "Vienne", "Charente-Maritime"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_87 }
            Reponses := array{"Haute-Vienne", "Dordogne", "Pyrenees-Atlantiques", "Charente"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_88 }
            Reponses := array{"Vosges", "Aube", "Ardennes", "Haute-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_89 }
            Reponses := array{"Cote-d'Or", "Saone-et-Loire", "Yonne", "Nievre"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_90 }
            Reponses := array{"Territoire de Belfort", "Yonne", "Saone-et-Loire", "Doubs"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_91 }
            Reponses := array{"Val-d'Oise", "Val-de-Marne", "Essonne", "Yvelines"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_92 }
            Reponses := array{"Paris", "Val-d'Oise", "Val-de-Marne", "Hauts-de-Seine"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_93 }
            Reponses := array{"Seine-Saint-Denis", "Essonne", "Hauts-de-Seine", "Val-d'Oise"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_94 }
            Reponses := array{"Val-de-Marne", "Hauts-de-Seine", "Paris", "Val-d'Oise"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_95 }
            Reponses := array{"Val-d'Oise", "Val-de-Marne", "Paris", "Essonne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_971 }
            Reponses := array{"Guyane", "Mayotte", "Martinique", "Guadeloupe"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_972 }
            Reponses := array{"Mayotte", "Martinique", "Guyane", "Guadeloupe"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_973 }
            Reponses := array{"Martinique", "Guadeloupe", "Guyane", "La Reunion"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_974 }
            Reponses := array{"La Reunion", "Guyane", "Martinique", "Guadeloupe"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_flags.dflag_976 }
            Reponses := array{"La Reunion", "Guyane", "Mayotte", "Martinique"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_01 }
            Reponses := array{"Ain", "Puy-de-Dome", "Haute-Savoie", "Ardeche"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_02 }
            Reponses := array{"Somme", "Aisne", "Oise", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_03 }
            Reponses := array{"Ain", "Allier", "Puy-de-Dome", "Drome"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_04 }
            Reponses := array{"Hautes-Alpes", "Vaucluse", "Alpes-de-Haute-Provence", "Alpes-Maritimes"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_05 }
            Reponses := array{"Bouches-du-Rhone", "Hautes-Alpes", "Vaucluse", "Alpes-Maritimes"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_06 }
            Reponses := array{"Alpes-de-Haute-Provence", "Hautes-Alpes", "Alpes-Maritimes", "Var"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_07 }
            Reponses := array{"Ain", "Ardeche", "Savoie", "Isere"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_08 }
            Reponses := array{"Haute-Marne", "Aube", "Meuse", "Ardennes"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_09 }
            Reponses := array{"Ariege", "Lot", "Pyrenees-Orientales", "Aude"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_10 }
            Reponses := array{"Meuse", "Bas-Rhin", "Aube", "Meurthe-et-Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_11 }
            Reponses := array{"Herault", "Aude", "Gers", "Tarn-et-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_12 }
            Reponses := array{"Aveyron", "Lozere", "Haute-Garonne", "Gers"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_13 }
            Reponses := array{"Alpes-Maritimes", "Var", "Bouches-du-Rhone", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_14 }
            Reponses := array{"Orne", "Eure", "Calvados", "Manche"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_15 }
            Reponses := array{"Cantal", "Ardeche", "Savoie", "Drome"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_16 }
            Reponses := array{"Pyrenees-Atlantiques", "Creuse", "Charente", "Haute-Vienne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_17 }
            Reponses := array{"Vienne", "Deux-Sevres", "Charente-Maritime", "Gironde"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_18 }
            Reponses := array{"Indre-et-Loire", "Cher", "Eure-et-Loir", "Loiret"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_19 }
            Reponses := array{"Correze", "Pyrenees-Atlantiques", "Dordogne", "Deux-Sevres"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_21 }
            Reponses := array{"Jura", "Doubs", "Yonne", "Cote-d'Or"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_22 }
            Reponses := array{"Morbihan", "Ille-et-Vilaine", "Cotes-d'Armor", "Finistere"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_23 }
            Reponses := array{"Pyrenees-Atlantiques", "Charente", "Vienne", "Creuse"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_24 }
            Reponses := array{"Haute-Vienne", "Pyrenees-Atlantiques", "Dordogne", "Charente"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_25 }
            Reponses := array{"Doubs", "Cote-d'Or", "Saone-et-Loire", "Jura"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_26 }
            Reponses := array{"Isere", "Puy-de-Dome", "Drome", "Haute-Savoie"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_27 }
            Reponses := array{"Eure", "Calvados", "Seine-Maritime", "Orne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_28 }
            Reponses := array{"Indre-et-Loire", "Loir-et-Cher", "Eure-et-Loir", "Indre"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_29 }
            Reponses := array{"Ille-et-Vilaine", "Finistere", "Morbihan", "Cotes-d'Armor"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_2a }
            Reponses := array{"Indre", "Hauts-de-Seine", "Corse-du-Sud", "Finistere"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_2b }
            Reponses := array{"Saone-et-Loire", "Haute-Corse", "Meuse", "Guadeloupe"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_30 }
            Reponses := array{"Tarn", "Lozere", "Gard", "Pyrenees-Orientales"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_31 }
            Reponses := array{"Lot", "Haute-Garonne", "Aveyron", "Gers"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_32 }
            Reponses := array{"Tarn", "Gers", "Lot", "Hautes-Pyrenees"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_33 }
            Reponses := array{"Gironde", "Haute-Vienne", "Pyrenees-Atlantiques", "Correze"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_34 }
            Reponses := array{"Aude", "Herault", "Haute-Garonne", "Gard"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_35 }
            Reponses := array{"Finistere", "Ille-et-Vilaine", "Cotes-d'Armor", "Morbihan"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_36 }
            Reponses := array{"Cher", "Loiret", "Loir-et-Cher", "Indre"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_37 }
            Reponses := array{"Eure-et-Loir", "Loiret", "Loir-et-Cher", "Indre-et-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_38 }
            Reponses := array{"Cantal", "Allier", "Isere", "Savoie"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_39 }
            Reponses := array{"Jura", "Doubs", "Haute-Saone", "Cote-d'Or"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_40 }
            Reponses := array{"Deux-Sevres", "Landes", "Correze", "Gironde"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_41 }
            Reponses := array{"Cher", "Eure-et-Loir", "Loir-et-Cher", "Loiret"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_42 }
            Reponses := array{"Haute-Loire", "Loire", "Puy-de-Dome", "Cantal"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_43 }
            Reponses := array{"Haute-Loire", "Haute-Savoie", "Allier", "Ain"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_44 }
            Reponses := array{"Loire-Atlantique", "Mayenne", "Sarthe", "Vendee"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_45 }
            Reponses := array{"Indre", "Loir-et-Cher", "Indre-et-Loire", "Loiret"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_46 }
            Reponses := array{"Aveyron", "Aude", "Tarn-et-Garonne", "Lot"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_47 }
            Reponses := array{"Lot-et-Garonne", "Cote-d'Or", "Vendee", "Eure"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_48 }
            Reponses := array{"Haute-Garonne", "Lozere", "Ariege", "Herault"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_49 }
            Reponses := array{"Maine-et-Loire", "Sarthe", "Loire-Atlantique", "Vendee"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_50 }
            Reponses := array{"Seine-Maritime", "Manche", "Calvados", "Orne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_51 }
            Reponses := array{"Ardennes", "Marne", "Moselle", "Bas-Rhin"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_52 }
            Reponses := array{"Moselle", "Bas-Rhin", "Meuse", "Haute-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_53 }
            Reponses := array{"Maine-et-Loire", "Loire-Atlantique", "Vendee", "Mayenne"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_54 }
            Reponses := array{"Meurthe-et-Moselle", "Aube", "Moselle", "Vosges"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_55 }
            Reponses := array{"Ardennes", "Haute-Marne", "Vosges", "Meuse"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_56 }
            Reponses := array{"Finistere", "Morbihan", "Cotes-d'Armor", "Ille-et-Vilaine"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_57 }
            Reponses := array{"Moselle", "Bas-Rhin", "Marne", "Haute-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_58 }
            Reponses := array{"Nievre", "Haute-Saone", "Cote-d'Or", "Yonne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_59 }
            Reponses := array{"Aisne", "Oise", "Somme", "Nord"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_60 }
            Reponses := array{"Somme", "Oise", "Aisne", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_61 }
            Reponses := array{"Orne", "Calvados", "Eure", "Seine-Maritime"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_62 }
            Reponses := array{"Aisne", "Oise", "Somme", "Pas-de-Calais"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_63 }
            Reponses := array{"Loire", "Isere", "Puy-de-Dome", "Haute-Savoie"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_64 }
            Reponses := array{"Charente", "Pyrenees-Atlantiques", "Creuse", "Landes"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_65 }
            Reponses := array{"Tarn", "Hautes-Pyrenees", "Lozere", "Haute-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_66 }
            Reponses := array{"Hautes-Pyrenees", "Haute-Garonne", "Pyrenees-Orientales", "Tarn"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_67 }
            Reponses := array{"Aube", "Vosges", "Moselle", "Bas-Rhin"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_68 }
            Reponses := array{"Somme", "Essonne", "Haut-Rhin", "Oise"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_69 }
            Reponses := array{"Rhone", "Seine-Saint-Denis", "Tarn-et-Garonne", "Nievre"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_70 }
            Reponses := array{"Jura", "Doubs", "Yonne", "Haute-Saone"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_71 }
            Reponses := array{"Doubs", "Yonne", "Saone-et-Loire", "Territoire de Belfort"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_72 }
            Reponses := array{"Mayenne", "Sarthe", "Maine-et-Loire", "Vendee"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_73 }
            Reponses := array{"Savoie", "Puy-de-Dome", "Ain", "Drome"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_74 }
            Reponses := array{"Haute-Loire", "Loire", "Haute-Savoie", "Ardeche"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_75 }
            Reponses := array{"Val-d'Oise", "Paris", "Essonne", "Yvelines"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_76 }
            Reponses := array{"Manche", "Seine-Maritime", "Eure", "Orne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_77 }
            Reponses := array{"Val-de-Marne", "Hauts-de-Seine", "Paris", "Seine-et-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_78 }
            Reponses := array{"Val-de-Marne", "Yvelines", "Paris", "Seine-et-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_79 }
            Reponses := array{"Haute-Vienne", "Deux-Sevres", "Creuse", "Correze"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_80 }
            Reponses := array{"Nord", "Somme", "Aisne", "Oise"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_81 }
            Reponses := array{"Ariege", "Gers", "Tarn-et-Garonne", "Tarn"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_82 }
            Reponses := array{"Tarn-et-Garonne", "Hautes-Pyrenees", "Lot", "Gard"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_83 }
            Reponses := array{"Bouches-du-Rhone", "Var", "Alpes-de-Haute-Provence", "Hautes-Alpes"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_84 }
            Reponses := array{"Alpes-de-Haute-Provence", "Bouches-du-Rhone", "Var", "Vaucluse"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_85 }
            Reponses := array{"Mayenne", "Maine-et-Loire", "Vendee", "Sarthe"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_86 }
            Reponses := array{"Haute-Vienne", "Landes", "Vienne", "Charente"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_87 }
            Reponses := array{"Haute-Vienne", "Dordogne", "Deux-Sevres", "Charente"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_88 }
            Reponses := array{"Vosges", "Aube", "Haute-Marne", "Ardennes"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_89 }
            Reponses := array{"Doubs", "Jura", "Yonne", "Saone-et-Loire"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_90 }
            Reponses := array{"Jura", "Haute-Saone", "Territoire de Belfort", "Nievre"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_91 }
            Reponses := array{"Yvelines", "Essonne", "Hauts-de-Seine", "Val-de-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_92 }
            Reponses := array{"Val-de-Marne", "Seine-Saint-Denis", "Hauts-de-Seine", "Seine-et-Marne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_93 }
            Reponses := array{"Seine-et-Marne", "Essonne", "Val-d'Oise", "Seine-Saint-Denis"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_94 }
            Reponses := array{"Seine-Saint-Denis", "Paris", "Val-d'Oise", "Val-de-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_95 }
            Reponses := array{"Seine-et-Marne", "Hauts-de-Seine", "Val-d'Oise", "Essonne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_971 }
            Reponses := array{"Guadeloupe", "Guyane", "La Reunion", "Martinique"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_972 }
            Reponses := array{"Martinique", "Mayotte", "La Reunion", "Guadeloupe"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_973 }
            Reponses := array{"Guyane", "Guadeloupe", "Mayotte", "La Reunion"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_974 }
            Reponses := array{"Guadeloupe", "Guyane", "Mayotte", "La Reunion"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelt)"
            Image := option{ dep_flags_pixel.dfpx_976 }
            Reponses := array{"La Reunion", "Guadeloupe", "Mayotte", "Martinique"}
            BonneReponse := 2

MakeDepFlagsQuestionsIT() : []question =
    array:
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_01 }
            Reponses := array{"Savoie", "Cantal", "Loire", "Ain"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_02 }
            Reponses := array{"Somme", "Aisne", "Oise", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_03 }
            Reponses := array{"Loire", "Allier", "Isere", "Ain"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_04 }
            Reponses := array{"Alpes-de-Haute-Provence", "Hautes-Alpes", "Vaucluse", "Var"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_05 }
            Reponses := array{"Var", "Vaucluse", "Hautes-Alpes", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_06 }
            Reponses := array{"Bouches-du-Rhone", "Alpes-Maritimes", "Hautes-Alpes", "Alpes-de-Haute-Provence"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_07 }
            Reponses := array{"Allier", "Savoie", "Isere", "Ardeche"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_08 }
            Reponses := array{"Bas-Rhin", "Meurthe-et-Moselle", "Vosges", "Ardennes"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_09 }
            Reponses := array{"Aude", "Lot", "Pyrenees-Orientales", "Ariege"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_10 }
            Reponses := array{"Vosges", "Haute-Marne", "Moselle", "Aube"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_11 }
            Reponses := array{"Aveyron", "Aude", "Hautes-Pyrenees", "Gard"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_12 }
            Reponses := array{"Herault", "Aveyron", "Gard", "Haute-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_13 }
            Reponses := array{"Bouches-du-Rhone", "Hautes-Alpes", "Var", "Alpes-Maritimes"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_14 }
            Reponses := array{"Seine-Maritime", "Calvados", "Manche", "Eure"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_15 }
            Reponses := array{"Drome", "Savoie", "Haute-Savoie", "Cantal"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_16 }
            Reponses := array{"Gironde", "Pyrenees-Atlantiques", "Charente", "Haute-Vienne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_17 }
            Reponses := array{"Charente-Maritime", "Charente", "Gironde", "Dordogne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_18 }
            Reponses := array{"Indre-et-Loire", "Indre", "Loiret", "Cher"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_19 }
            Reponses := array{"Correze", "Deux-Sevres", "Charente", "Gironde"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_21 }
            Reponses := array{"Nievre", "Cote-d'Or", "Haute-Saone", "Doubs"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_22 }
            Reponses := array{"Morbihan", "Ille-et-Vilaine", "Finistere", "Cotes-d'Armor"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_23 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Vienne", "Creuse"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_24 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Vienne", "Creuse"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_25 }
            Reponses := array{"Haute-Saone", "Doubs", "Territoire de Belfort", "Saone-et-Loire"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_26 }
            Reponses := array{"Loire", "Haute-Loire", "Cantal", "Drome"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_27 }
            Reponses := array{"Manche", "Seine-Maritime", "Calvados", "Eure"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_28 }
            Reponses := array{"Eure-et-Loir", "Loir-et-Cher", "Loiret", "Indre"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_29 }
            Reponses := array{"Morbihan", "Finistere", "Ille-et-Vilaine", "Cotes-d'Armor"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_2a }
            Reponses := array{"Bas-Rhin", "Aveyron", "Vienne", "Corse-du-Sud"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_2b }
            Reponses := array{"Gironde", "Haute-Corse", "Aude", "Pyrenees-Orientales"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_30 }
            Reponses := array{"Lot", "Tarn", "Gers", "Gard"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_31 }
            Reponses := array{"Lozere", "Haute-Garonne", "Hautes-Pyrenees", "Herault"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_32 }
            Reponses := array{"Ariege", "Gers", "Gard", "Tarn"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_33 }
            Reponses := array{"Haute-Vienne", "Correze", "Landes", "Gironde"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_34 }
            Reponses := array{"Herault", "Haute-Garonne", "Tarn-et-Garonne", "Gard"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_35 }
            Reponses := array{"Ille-et-Vilaine", "Cotes-d'Armor", "Morbihan", "Finistere"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_36 }
            Reponses := array{"Indre-et-Loire", "Eure-et-Loir", "Indre", "Cher"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_37 }
            Reponses := array{"Indre-et-Loire", "Indre", "Eure-et-Loir", "Loir-et-Cher"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_38 }
            Reponses := array{"Ain", "Isere", "Ardeche", "Allier"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_39 }
            Reponses := array{"Jura", "Haute-Saone", "Doubs", "Saone-et-Loire"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_40 }
            Reponses := array{"Charente-Maritime", "Dordogne", "Landes", "Correze"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_41 }
            Reponses := array{"Loiret", "Loir-et-Cher", "Indre-et-Loire", "Indre"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_42 }
            Reponses := array{"Isere", "Loire", "Haute-Savoie", "Ardeche"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_43 }
            Reponses := array{"Loire", "Haute-Loire", "Cantal", "Ardeche"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_44 }
            Reponses := array{"Mayenne", "Vendee", "Maine-et-Loire", "Loire-Atlantique"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_45 }
            Reponses := array{"Indre", "Loir-et-Cher", "Indre-et-Loire", "Loiret"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_46 }
            Reponses := array{"Aveyron", "Tarn-et-Garonne", "Haute-Garonne", "Lot"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_47 }
            Reponses := array{"Eure-et-Loir", "Lot-et-Garonne", "Paris", "Ille-et-Vilaine"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_48 }
            Reponses := array{"Aveyron", "Pyrenees-Orientales", "Lozere", "Tarn"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_49 }
            Reponses := array{"Loire-Atlantique", "Maine-et-Loire", "Vendee", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_50 }
            Reponses := array{"Calvados", "Seine-Maritime", "Eure", "Manche"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_51 }
            Reponses := array{"Ardennes", "Marne", "Meuse", "Meurthe-et-Moselle"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_52 }
            Reponses := array{"Aube", "Ardennes", "Haute-Marne", "Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_53 }
            Reponses := array{"Vendee", "Mayenne", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_54 }
            Reponses := array{"Meurthe-et-Moselle", "Ardennes", "Haute-Marne", "Aube"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_55 }
            Reponses := array{"Meuse", "Meurthe-et-Moselle", "Moselle", "Ardennes"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_56 }
            Reponses := array{"Cotes-d'Armor", "Finistere", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_57 }
            Reponses := array{"Moselle", "Ardennes", "Marne", "Meuse"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_58 }
            Reponses := array{"Haute-Saone", "Nievre", "Yonne", "Territoire de Belfort"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_59 }
            Reponses := array{"Aisne", "Nord", "Pas-de-Calais", "Oise"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_60 }
            Reponses := array{"Oise", "Nord", "Somme", "Pas-de-Calais"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_61 }
            Reponses := array{"Calvados", "Seine-Maritime", "Manche", "Orne"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_62 }
            Reponses := array{"Oise", "Aisne", "Pas-de-Calais", "Somme"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_63 }
            Reponses := array{"Ain", "Puy-de-Dome", "Loire", "Haute-Loire"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_64 }
            Reponses := array{"Landes", "Pyrenees-Atlantiques", "Deux-Sevres", "Gironde"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_65 }
            Reponses := array{"Herault", "Gers", "Gard", "Hautes-Pyrenees"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_66 }
            Reponses := array{"Tarn", "Hautes-Pyrenees", "Pyrenees-Orientales", "Tarn-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_67 }
            Reponses := array{"Haute-Marne", "Vosges", "Bas-Rhin", "Meurthe-et-Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_68 }
            Reponses := array{"Isere", "Haut-Rhin", "Pyrenees-Orientales", "Drome"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_69 }
            Reponses := array{"Yonne", "Rhone", "Loir-et-Cher", "Loire-Atlantique"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_70 }
            Reponses := array{"Nievre", "Yonne", "Territoire de Belfort", "Haute-Saone"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_71 }
            Reponses := array{"Doubs", "Territoire de Belfort", "Nievre", "Saone-et-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_72 }
            Reponses := array{"Vendee", "Sarthe", "Mayenne", "Maine-et-Loire"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_73 }
            Reponses := array{"Haute-Savoie", "Drome", "Savoie", "Puy-de-Dome"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_74 }
            Reponses := array{"Haute-Savoie", "Allier", "Haute-Loire", "Isere"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_75 }
            Reponses := array{"Essonne", "Paris", "Hauts-de-Seine", "Val-d'Oise"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_76 }
            Reponses := array{"Seine-Maritime", "Calvados", "Manche", "Orne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_77 }
            Reponses := array{"Seine-et-Marne", "Paris", "Essonne", "Seine-Saint-Denis"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_78 }
            Reponses := array{"Val-de-Marne", "Essonne", "Paris", "Yvelines"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_79 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Charente", "Deux-Sevres"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_80 }
            Reponses := array{"Oise", "Aisne", "Nord", "Somme"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_81 }
            Reponses := array{"Aude", "Haute-Garonne", "Tarn", "Gard"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_82 }
            Reponses := array{"Lot", "Tarn-et-Garonne", "Hautes-Pyrenees", "Lozere"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_83 }
            Reponses := array{"Alpes-Maritimes", "Bouches-du-Rhone", "Var", "Hautes-Alpes"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_84 }
            Reponses := array{"Var", "Alpes-de-Haute-Provence", "Bouches-du-Rhone", "Vaucluse"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_85 }
            Reponses := array{"Vendee", "Mayenne", "Sarthe", "Loire-Atlantique"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_86 }
            Reponses := array{"Correze", "Pyrenees-Atlantiques", "Vienne", "Charente-Maritime"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_87 }
            Reponses := array{"Haute-Vienne", "Dordogne", "Pyrenees-Atlantiques", "Charente"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_88 }
            Reponses := array{"Vosges", "Aube", "Ardennes", "Haute-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_89 }
            Reponses := array{"Cote-d'Or", "Saone-et-Loire", "Yonne", "Nievre"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_90 }
            Reponses := array{"Territoire de Belfort", "Yonne", "Saone-et-Loire", "Doubs"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_91 }
            Reponses := array{"Val-d'Oise", "Val-de-Marne", "Essonne", "Yvelines"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_92 }
            Reponses := array{"Paris", "Val-d'Oise", "Val-de-Marne", "Hauts-de-Seine"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_93 }
            Reponses := array{"Seine-Saint-Denis", "Essonne", "Hauts-de-Seine", "Val-d'Oise"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_94 }
            Reponses := array{"Val-de-Marne", "Hauts-de-Seine", "Paris", "Val-d'Oise"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_95 }
            Reponses := array{"Val-d'Oise", "Val-de-Marne", "Paris", "Essonne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_971 }
            Reponses := array{"Guyane", "Mayotte", "Martinique", "Guadeloupe"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_972 }
            Reponses := array{"Mayotte", "Martinique", "Guyane", "Guadeloupe"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_973 }
            Reponses := array{"Martinique", "Guadeloupe", "Guyane", "La Reunion"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_974 }
            Reponses := array{"La Reunion", "Guyane", "Martinique", "Guadeloupe"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_flags.dflag_976 }
            Reponses := array{"La Reunion", "Guyane", "Mayotte", "Martinique"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_01 }
            Reponses := array{"Ain", "Puy-de-Dome", "Haute-Savoie", "Ardeche"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_02 }
            Reponses := array{"Somme", "Aisne", "Oise", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_03 }
            Reponses := array{"Ain", "Allier", "Puy-de-Dome", "Drome"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_04 }
            Reponses := array{"Hautes-Alpes", "Vaucluse", "Alpes-de-Haute-Provence", "Alpes-Maritimes"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_05 }
            Reponses := array{"Bouches-du-Rhone", "Hautes-Alpes", "Vaucluse", "Alpes-Maritimes"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_06 }
            Reponses := array{"Alpes-de-Haute-Provence", "Hautes-Alpes", "Alpes-Maritimes", "Var"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_07 }
            Reponses := array{"Ain", "Ardeche", "Savoie", "Isere"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_08 }
            Reponses := array{"Haute-Marne", "Aube", "Meuse", "Ardennes"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_09 }
            Reponses := array{"Ariege", "Lot", "Pyrenees-Orientales", "Aude"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_10 }
            Reponses := array{"Meuse", "Bas-Rhin", "Aube", "Meurthe-et-Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_11 }
            Reponses := array{"Herault", "Aude", "Gers", "Tarn-et-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_12 }
            Reponses := array{"Aveyron", "Lozere", "Haute-Garonne", "Gers"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_13 }
            Reponses := array{"Alpes-Maritimes", "Var", "Bouches-du-Rhone", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_14 }
            Reponses := array{"Orne", "Eure", "Calvados", "Manche"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_15 }
            Reponses := array{"Cantal", "Ardeche", "Savoie", "Drome"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_16 }
            Reponses := array{"Pyrenees-Atlantiques", "Creuse", "Charente", "Haute-Vienne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_17 }
            Reponses := array{"Vienne", "Deux-Sevres", "Charente-Maritime", "Gironde"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_18 }
            Reponses := array{"Indre-et-Loire", "Cher", "Eure-et-Loir", "Loiret"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_19 }
            Reponses := array{"Correze", "Pyrenees-Atlantiques", "Dordogne", "Deux-Sevres"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_21 }
            Reponses := array{"Jura", "Doubs", "Yonne", "Cote-d'Or"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_22 }
            Reponses := array{"Morbihan", "Ille-et-Vilaine", "Cotes-d'Armor", "Finistere"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_23 }
            Reponses := array{"Pyrenees-Atlantiques", "Charente", "Vienne", "Creuse"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_24 }
            Reponses := array{"Haute-Vienne", "Pyrenees-Atlantiques", "Dordogne", "Charente"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_25 }
            Reponses := array{"Doubs", "Cote-d'Or", "Saone-et-Loire", "Jura"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_26 }
            Reponses := array{"Isere", "Puy-de-Dome", "Drome", "Haute-Savoie"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_27 }
            Reponses := array{"Eure", "Calvados", "Seine-Maritime", "Orne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_28 }
            Reponses := array{"Indre-et-Loire", "Loir-et-Cher", "Eure-et-Loir", "Indre"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_29 }
            Reponses := array{"Ille-et-Vilaine", "Finistere", "Morbihan", "Cotes-d'Armor"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_2a }
            Reponses := array{"Indre", "Hauts-de-Seine", "Corse-du-Sud", "Finistere"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_2b }
            Reponses := array{"Saone-et-Loire", "Haute-Corse", "Meuse", "Guadeloupe"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_30 }
            Reponses := array{"Tarn", "Lozere", "Gard", "Pyrenees-Orientales"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_31 }
            Reponses := array{"Lot", "Haute-Garonne", "Aveyron", "Gers"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_32 }
            Reponses := array{"Tarn", "Gers", "Lot", "Hautes-Pyrenees"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_33 }
            Reponses := array{"Gironde", "Haute-Vienne", "Pyrenees-Atlantiques", "Correze"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_34 }
            Reponses := array{"Aude", "Herault", "Haute-Garonne", "Gard"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_35 }
            Reponses := array{"Finistere", "Ille-et-Vilaine", "Cotes-d'Armor", "Morbihan"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_36 }
            Reponses := array{"Cher", "Loiret", "Loir-et-Cher", "Indre"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_37 }
            Reponses := array{"Eure-et-Loir", "Loiret", "Loir-et-Cher", "Indre-et-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_38 }
            Reponses := array{"Cantal", "Allier", "Isere", "Savoie"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_39 }
            Reponses := array{"Jura", "Doubs", "Haute-Saone", "Cote-d'Or"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_40 }
            Reponses := array{"Deux-Sevres", "Landes", "Correze", "Gironde"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_41 }
            Reponses := array{"Cher", "Eure-et-Loir", "Loir-et-Cher", "Loiret"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_42 }
            Reponses := array{"Haute-Loire", "Loire", "Puy-de-Dome", "Cantal"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_43 }
            Reponses := array{"Haute-Loire", "Haute-Savoie", "Allier", "Ain"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_44 }
            Reponses := array{"Loire-Atlantique", "Mayenne", "Sarthe", "Vendee"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_45 }
            Reponses := array{"Indre", "Loir-et-Cher", "Indre-et-Loire", "Loiret"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_46 }
            Reponses := array{"Aveyron", "Aude", "Tarn-et-Garonne", "Lot"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_47 }
            Reponses := array{"Lot-et-Garonne", "Cote-d'Or", "Vendee", "Eure"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_48 }
            Reponses := array{"Haute-Garonne", "Lozere", "Ariege", "Herault"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_49 }
            Reponses := array{"Maine-et-Loire", "Sarthe", "Loire-Atlantique", "Vendee"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_50 }
            Reponses := array{"Seine-Maritime", "Manche", "Calvados", "Orne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_51 }
            Reponses := array{"Ardennes", "Marne", "Moselle", "Bas-Rhin"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_52 }
            Reponses := array{"Moselle", "Bas-Rhin", "Meuse", "Haute-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_53 }
            Reponses := array{"Maine-et-Loire", "Loire-Atlantique", "Vendee", "Mayenne"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_54 }
            Reponses := array{"Meurthe-et-Moselle", "Aube", "Moselle", "Vosges"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_55 }
            Reponses := array{"Ardennes", "Haute-Marne", "Vosges", "Meuse"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_56 }
            Reponses := array{"Finistere", "Morbihan", "Cotes-d'Armor", "Ille-et-Vilaine"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_57 }
            Reponses := array{"Moselle", "Bas-Rhin", "Marne", "Haute-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_58 }
            Reponses := array{"Nievre", "Haute-Saone", "Cote-d'Or", "Yonne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_59 }
            Reponses := array{"Aisne", "Oise", "Somme", "Nord"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_60 }
            Reponses := array{"Somme", "Oise", "Aisne", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_61 }
            Reponses := array{"Orne", "Calvados", "Eure", "Seine-Maritime"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_62 }
            Reponses := array{"Aisne", "Oise", "Somme", "Pas-de-Calais"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_63 }
            Reponses := array{"Loire", "Isere", "Puy-de-Dome", "Haute-Savoie"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_64 }
            Reponses := array{"Charente", "Pyrenees-Atlantiques", "Creuse", "Landes"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_65 }
            Reponses := array{"Tarn", "Hautes-Pyrenees", "Lozere", "Haute-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_66 }
            Reponses := array{"Hautes-Pyrenees", "Haute-Garonne", "Pyrenees-Orientales", "Tarn"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_67 }
            Reponses := array{"Aube", "Vosges", "Moselle", "Bas-Rhin"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_68 }
            Reponses := array{"Somme", "Essonne", "Haut-Rhin", "Oise"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_69 }
            Reponses := array{"Rhone", "Seine-Saint-Denis", "Tarn-et-Garonne", "Nievre"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_70 }
            Reponses := array{"Jura", "Doubs", "Yonne", "Haute-Saone"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_71 }
            Reponses := array{"Doubs", "Yonne", "Saone-et-Loire", "Territoire de Belfort"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_72 }
            Reponses := array{"Mayenne", "Sarthe", "Maine-et-Loire", "Vendee"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_73 }
            Reponses := array{"Savoie", "Puy-de-Dome", "Ain", "Drome"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_74 }
            Reponses := array{"Haute-Loire", "Loire", "Haute-Savoie", "Ardeche"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_75 }
            Reponses := array{"Val-d'Oise", "Paris", "Essonne", "Yvelines"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_76 }
            Reponses := array{"Manche", "Seine-Maritime", "Eure", "Orne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_77 }
            Reponses := array{"Val-de-Marne", "Hauts-de-Seine", "Paris", "Seine-et-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_78 }
            Reponses := array{"Val-de-Marne", "Yvelines", "Paris", "Seine-et-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_79 }
            Reponses := array{"Haute-Vienne", "Deux-Sevres", "Creuse", "Correze"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_80 }
            Reponses := array{"Nord", "Somme", "Aisne", "Oise"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_81 }
            Reponses := array{"Ariege", "Gers", "Tarn-et-Garonne", "Tarn"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_82 }
            Reponses := array{"Tarn-et-Garonne", "Hautes-Pyrenees", "Lot", "Gard"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_83 }
            Reponses := array{"Bouches-du-Rhone", "Var", "Alpes-de-Haute-Provence", "Hautes-Alpes"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_84 }
            Reponses := array{"Alpes-de-Haute-Provence", "Bouches-du-Rhone", "Var", "Vaucluse"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_85 }
            Reponses := array{"Mayenne", "Maine-et-Loire", "Vendee", "Sarthe"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_86 }
            Reponses := array{"Haute-Vienne", "Landes", "Vienne", "Charente"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_87 }
            Reponses := array{"Haute-Vienne", "Dordogne", "Deux-Sevres", "Charente"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_88 }
            Reponses := array{"Vosges", "Aube", "Haute-Marne", "Ardennes"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_89 }
            Reponses := array{"Doubs", "Jura", "Yonne", "Saone-et-Loire"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_90 }
            Reponses := array{"Jura", "Haute-Saone", "Territoire de Belfort", "Nievre"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_91 }
            Reponses := array{"Yvelines", "Essonne", "Hauts-de-Seine", "Val-de-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_92 }
            Reponses := array{"Val-de-Marne", "Seine-Saint-Denis", "Hauts-de-Seine", "Seine-et-Marne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_93 }
            Reponses := array{"Seine-et-Marne", "Essonne", "Val-d'Oise", "Seine-Saint-Denis"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_94 }
            Reponses := array{"Seine-Saint-Denis", "Paris", "Val-d'Oise", "Val-de-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_95 }
            Reponses := array{"Seine-et-Marne", "Hauts-de-Seine", "Val-d'Oise", "Essonne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_971 }
            Reponses := array{"Guadeloupe", "Guyane", "La Reunion", "Martinique"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_972 }
            Reponses := array{"Martinique", "Mayotte", "La Reunion", "Guadeloupe"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_973 }
            Reponses := array{"Guyane", "Guadeloupe", "Mayotte", "La Reunion"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_974 }
            Reponses := array{"Guadeloupe", "Guyane", "Mayotte", "La Reunion"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (pixelato)"
            Image := option{ dep_flags_pixel.dfpx_976 }
            Reponses := array{"La Reunion", "Guadeloupe", "Mayotte", "Martinique"}
            BonneReponse := 2
