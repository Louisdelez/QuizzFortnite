using { /Verse.org/Assets }

# anatomie_bank.verse — Quizz ANATOMIE (corps humain)
# GENERE — NE PAS EDITER A LA MAIN.

AnatomieDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}

MakeAnatomieQuestionsFR() : []question =
    array:
        question:
            Enonce := "Quel organe pompe le sang ?"
            Reponses := array{"Les reins", "Les poumons", "Le foie", "Le coeur"}
            BonneReponse := 3
        question:
            Enonce := "Quel organe permet de respirer ?"
            Reponses := array{"La rate", "Le coeur", "L'estomac", "Les poumons"}
            BonneReponse := 3
        question:
            Enonce := "Quel est le plus grand organe du corps ?"
            Reponses := array{"Le foie", "La peau", "Le cerveau", "L'intestin"}
            BonneReponse := 1
        question:
            Enonce := "Quel organe controle tout le corps ?"
            Reponses := array{"Le coeur", "Le cerveau", "Le foie", "La moelle epiniere"}
            BonneReponse := 1
        question:
            Enonce := "Quel organe digere les aliments avec de l'acide ?"
            Reponses := array{"Le pancreas", "L'intestin", "Le foie", "L'estomac"}
            BonneReponse := 3
        question:
            Enonce := "Quels organes filtrent le sang ?"
            Reponses := array{"Le foie", "Les poumons", "La rate", "Les reins"}
            BonneReponse := 3
        question:
            Enonce := "Quel organe produit la bile ?"
            Reponses := array{"Le pancreas", "Le foie", "L'estomac", "La rate"}
            BonneReponse := 1
        question:
            Enonce := "Quel organe stocke l'urine ?"
            Reponses := array{"La vessie", "Les reins", "L'intestin", "L'estomac"}
            BonneReponse := 0
        question:
            Enonce := "Quel est l'os le plus long du corps ?"
            Reponses := array{"Le tibia", "Le femur", "Le crane", "L'etrier"}
            BonneReponse := 1
        question:
            Enonce := "Qu'est-ce qui transporte l'oxygene dans le sang ?"
            Reponses := array{"L'ADN", "Les globules blancs", "Les plaquettes", "Les globules rouges"}
            BonneReponse := 3
        question:
            Enonce := "Qu'est-ce qui combat les infections ?"
            Reponses := array{"Les globules blancs", "Les globules rouges", "Les plaquettes", "La melanine"}
            BonneReponse := 0
        question:
            Enonce := "Quelle molecule porte l'heredite ?"
            Reponses := array{"La keratine", "L'ARN", "La melanine", "L'ADN"}
            BonneReponse := 3
        question:
            Enonce := "Quelle hormone regule le sucre dans le sang ?"
            Reponses := array{"L'insuline", "L'adrenaline", "La melanine", "La keratine"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la plus grande artere du corps ?"
            Reponses := array{"Une veine", "L'aorte", "La trachee", "L'oesophage"}
            BonneReponse := 1
        question:
            Enonce := "Par quel tube passe l'air vers les poumons ?"
            Reponses := array{"La trachee", "L'oesophage", "L'aorte", "Une veine"}
            BonneReponse := 0
        question:
            Enonce := "Par quel tube passent les aliments vers l'estomac ?"
            Reponses := array{"La trachee", "L'oesophage", "L'aorte", "Le larynx"}
            BonneReponse := 1
        question:
            Enonce := "Quel liquide rouge transporte l'oxygene ?"
            Reponses := array{"Le collagene", "La melanine", "La keratine", "L'hemoglobine"}
            BonneReponse := 3
        question:
            Enonce := "Quelles cellules transmettent les signaux nerveux ?"
            Reponses := array{"Les neurones", "Les globules rouges", "Les globules blancs", "Les plaquettes"}
            BonneReponse := 0
        question:
            Enonce := "Quel mineral rend les os solides ?"
            Reponses := array{"Le collagene", "La melanine", "La keratine", "Le calcium"}
            BonneReponse := 3
        question:
            Enonce := "Quelle membrane vibre dans l'oreille avec le son ?"
            Reponses := array{"La cornee", "L'iris", "La retine", "Le tympan"}
            BonneReponse := 3
        question:
            Enonce := "Quelle hormone fait battre le coeur en cas de stress ?"
            Reponses := array{"L'adrenaline", "L'insuline", "Le cortisol", "La testosterone"}
            BonneReponse := 0
        question:
            Enonce := "Quel organe produit l'insuline ?"
            Reponses := array{"Les reins", "Le foie", "Le pancreas", "La thyroide"}
            BonneReponse := 2
        question:
            Enonce := "Quel est l'os le plus petit du corps ?"
            Reponses := array{"Le femur", "L'etrier", "Le tibia", "Le crane"}
            BonneReponse := 1
        question:
            Enonce := "Quel muscle principal sert a respirer ?"
            Reponses := array{"Le biceps", "Le diaphragme", "Le grand fessier", "Le coeur"}
            BonneReponse := 1
        question:
            Enonce := "Quel est le plus grand muscle du corps ?"
            Reponses := array{"Le diaphragme", "Le biceps", "Le grand fessier", "Le coeur"}
            BonneReponse := 2
        question:
            Enonce := "Ou se trouve le sens de l'equilibre ?"
            Reponses := array{"La retine", "Le cervelet", "L'oreille interne", "La moelle epiniere"}
            BonneReponse := 2
        question:
            Enonce := "Quel est le nerf le plus long du corps ?"
            Reponses := array{"Le nerf sciatique", "Le nerf optique", "La moelle epiniere", "Le tendon"}
            BonneReponse := 0
        question:
            Enonce := "Quelle partie de l'oeil est coloree ?"
            Reponses := array{"Le nerf optique", "La retine", "La cornee", "L'iris"}
            BonneReponse := 3
        question:
            Enonce := "Quelle partie de l'oeil capte la lumiere ?"
            Reponses := array{"Le nerf optique", "L'iris", "La cornee", "La retine"}
            BonneReponse := 3
        question:
            Enonce := "Qu'est-ce qui relie le muscle a l'os ?"
            Reponses := array{"Le ligament", "Le tendon", "Le cartilage", "La moelle epiniere"}
            BonneReponse := 1
        question:
            Enonce := "Qu'est-ce qui relie les os entre eux ?"
            Reponses := array{"L'etrier", "Le tendon", "Le cartilage", "Le ligament"}
            BonneReponse := 3
        question:
            Enonce := "Quel pigment colore la peau ?"
            Reponses := array{"La melanine", "La keratine", "L'insuline", "L'adrenaline"}
            BonneReponse := 0
        question:
            Enonce := "Quelle hormone est liberee par la peur ?"
            Reponses := array{"L'adrenaline", "L'insuline", "La melanine", "La keratine"}
            BonneReponse := 0
        question:
            Enonce := "Quelle glande regule le metabolisme (cou) ?"
            Reponses := array{"La rate", "L'hypophyse", "Le pancreas", "La thyroide"}
            BonneReponse := 3
        question:
            Enonce := "Ou se fait l'echange d'oxygene dans les poumons ?"
            Reponses := array{"La trachee", "Les alveoles", "Le larynx", "La vesicule biliaire"}
            BonneReponse := 1
        question:
            Enonce := "Quel organe stocke la bile produite par le foie ?"
            Reponses := array{"La vesicule biliaire", "L'appendice", "La rate", "Le pancreas"}
            BonneReponse := 0
        question:
            Enonce := "Quel os protege le genou ?"
            Reponses := array{"La mandibule", "La clavicule", "La rotule", "Le femur"}
            BonneReponse := 2
        question:
            Enonce := "Quelle partie de l'oeil fait la mise au point ?"
            Reponses := array{"L'iris", "La pupille", "Le cristallin", "La cornee"}
            BonneReponse := 2
        question:
            Enonce := "Quel organe creux contient l'appendice ?"
            Reponses := array{"L'estomac", "Le duodenum", "L'oesophage", "Le colon"}
            BonneReponse := 3
        question:
            Enonce := "Quelle proteine donne sa souplesse a la peau ?"
            Reponses := array{"La keratine", "Le collagene", "La melanine", "L'hemoglobine"}
            BonneReponse := 1
        question:
            Enonce := "Quel est le liquide jaune du sang sans les cellules ?"
            Reponses := array{"La salive", "La lymphe", "La bile", "Le plasma"}
            BonneReponse := 3
        question:
            Enonce := "Que produisent les globules blancs pour neutraliser les microbes ?"
            Reponses := array{"Le collagene", "Les enzymes", "L'hemoglobine", "Les anticorps"}
            BonneReponse := 3
        question:
            Enonce := "Quelle glande au-dessus des reins produit l'adrenaline ?"
            Reponses := array{"La thyroide", "Les glandes surrenales", "L'hypophyse", "Le pancreas"}
            BonneReponse := 1
        question:
            Enonce := "Quel premier segment de l'intestin suit l'estomac ?"
            Reponses := array{"Le colon", "Le duodenum", "L'appendice", "L'oesophage"}
            BonneReponse := 1
        question:
            Enonce := "Quelle partie du cerveau gere l'equilibre et la coordination ?"
            Reponses := array{"La moelle epiniere", "Le cervelet", "L'hypophyse", "Le cerveau"}
            BonneReponse := 1
        question:
            Enonce := "Quelle glande est surnommee la glande maitresse ?"
            Reponses := array{"La rate", "La thyroide", "Le pancreas", "L'hypophyse"}
            BonneReponse := 3
        question:
            Enonce := "Quel organe recycle les vieux globules rouges ?"
            Reponses := array{"Le pancreas", "Le foie", "Les reins", "La rate"}
            BonneReponse := 3
        question:
            Enonce := "Qu'est-ce qui transmet les messages du cerveau au corps ?"
            Reponses := array{"La moelle epiniere", "Le nerf sciatique", "Le nerf optique", "Le tendon"}
            BonneReponse := 0
        question:
            Enonce := "De quoi sont faits les cheveux et les ongles ?"
            Reponses := array{"La keratine", "La melanine", "Le cartilage", "L'ADN"}
            BonneReponse := 0
        question:
            Enonce := "Qu'est-ce qui aide le sang a coaguler ?"
            Reponses := array{"L'ADN", "Les globules rouges", "Les globules blancs", "Les plaquettes"}
            BonneReponse := 3
        question:
            Enonce := "Quelle copie de l'ADN sert a fabriquer les proteines ?"
            Reponses := array{"L'ARN", "L'ADN", "La keratine", "L'insuline"}
            BonneReponse := 0
        question:
            Enonce := "Quel tissu amortit les articulations ?"
            Reponses := array{"Le tendon", "Le cartilage", "Le ligament", "La moelle epiniere"}
            BonneReponse := 1
        question:
            Enonce := "Quelle partie transparente couvre le devant de l'oeil ?"
            Reponses := array{"La retine", "L'iris", "La cornee", "Le nerf optique"}
            BonneReponse := 2
        question:
            Enonce := "Quel nerf relie l'oeil au cerveau ?"
            Reponses := array{"La moelle epiniere", "Le nerf sciatique", "Le nerf optique", "La retine"}
            BonneReponse := 2
        question:
            Enonce := "Quelle structure du cerveau est cle pour la memoire ?"
            Reponses := array{"L'hippocampe", "Le cervelet", "Le cortex cerebral", "La moelle epiniere"}
            BonneReponse := 0
        question:
            Enonce := "Quelle couche externe du cerveau gere la pensee ?"
            Reponses := array{"La moelle epiniere", "Le cervelet", "L'hippocampe", "Le cortex cerebral"}
            BonneReponse := 3
        question:
            Enonce := "Ou les neurones se transmettent-ils l'information ?"
            Reponses := array{"La synapse", "Les neurones", "Le cortex cerebral", "La moelle epiniere"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est l'unite filtrante du rein ?"
            Reponses := array{"Un capillaire", "Les alveoles", "Les villosites intestinales", "Le nephron"}
            BonneReponse := 3
        question:
            Enonce := "Quelles petites structures absorbent les nutriments dans l'intestin ?"
            Reponses := array{"Le nephron", "Les alveoles", "Les villosites intestinales", "Les papilles gustatives"}
            BonneReponse := 2
        question:
            Enonce := "Quels plus petits vaisseaux relient arteres et veines ?"
            Reponses := array{"Un capillaire", "L'aorte", "Une veine", "Une artere"}
            BonneReponse := 0
        question:
            Enonce := "Quelle hormone du stress est liberee par les surrenales ?"
            Reponses := array{"L'insuline", "Le cortisol", "La testosterone", "La melanine"}
            BonneReponse := 1
        question:
            Enonce := "Quelles structures de la langue detectent les gouts ?"
            Reponses := array{"La synapse", "Les villosites intestinales", "Les alveoles", "Les papilles gustatives"}
            BonneReponse := 3
        question:
            Enonce := "Quel liquide du systeme immunitaire circule hors du sang ?"
            Reponses := array{"Le plasma", "La lymphe", "La bile", "La salive"}
            BonneReponse := 1
        question:
            Enonce := "Quels vaisseaux ramenent le sang vers le coeur ?"
            Reponses := array{"L'aorte", "Une artere", "Une veine", "Un capillaire"}
            BonneReponse := 2
        question:
            Enonce := "Quel organe de la gorge contient les cordes vocales ?"
            Reponses := array{"Le larynx", "La trachee", "L'oesophage", "Le tympan"}
            BonneReponse := 0
        question:
            Enonce := "Combien d'os a un adulte ?"
            Reponses := array{"226", "186", "206", "256"}
            BonneReponse := 2
        question:
            Enonce := "Combien de dents a un adulte (avec les dents de sagesse) ?"
            Reponses := array{"28", "32", "30", "36"}
            BonneReponse := 1
        question:
            Enonce := "Combien de dents de lait a un enfant ?"
            Reponses := array{"28", "16", "24", "20"}
            BonneReponse := 3
        question:
            Enonce := "Combien de chambres a le coeur ?"
            Reponses := array{"2", "4", "3", "6"}
            BonneReponse := 1
        question:
            Enonce := "Combien de litres de sang a un adulte (environ) ?"
            Reponses := array{"2", "5", "8", "12"}
            BonneReponse := 1
        question:
            Enonce := "Combien de paires de cotes a-t-on ?"
            Reponses := array{"14", "10", "12", "16"}
            BonneReponse := 2
        question:
            Enonce := "Combien de vertebres a la colonne (avec sacrum/coccyx) ?"
            Reponses := array{"24", "33", "29", "38"}
            BonneReponse := 1
        question:
            Enonce := "Combien de paires de chromosomes a l'humain ?"
            Reponses := array{"46", "21", "24", "23"}
            BonneReponse := 3
        question:
            Enonce := "Combien de muscles a le corps humain (environ) ?"
            Reponses := array{"200", "600", "400", "900"}
            BonneReponse := 1
        question:
            Enonce := "Combien d'os a la main ?"
            Reponses := array{"19", "27", "23", "31"}
            BonneReponse := 1
        question:
            Enonce := "Combien d'os a le pied ?"
            Reponses := array{"26", "20", "24", "30"}
            BonneReponse := 0
        question:
            Enonce := "Combien d'osselets a chaque oreille ?"
            Reponses := array{"3", "2", "4", "5"}
            BonneReponse := 0
        question:
            Enonce := "Combien de paires de nerfs craniens a-t-on ?"
            Reponses := array{"10", "8", "12", "14"}
            BonneReponse := 2
        question:
            Enonce := "Combien de muscles bougent chaque oeil ?"
            Reponses := array{"8", "3", "4", "6"}
            BonneReponse := 3
        question:
            Enonce := "Combien d'os a le crane (environ) ?"
            Reponses := array{"14", "22", "18", "26"}
            BonneReponse := 1

MakeAnatomieQuestionsEN() : []question =
    array:
        question:
            Enonce := "Which organ pumps blood?"
            Reponses := array{"The kidneys", "The lungs", "The liver", "The heart"}
            BonneReponse := 3
        question:
            Enonce := "Which organ lets you breathe?"
            Reponses := array{"The spleen", "The heart", "The stomach", "The lungs"}
            BonneReponse := 3
        question:
            Enonce := "What is the largest organ of the body?"
            Reponses := array{"The liver", "The skin", "The brain", "The intestine"}
            BonneReponse := 1
        question:
            Enonce := "Which organ controls the whole body?"
            Reponses := array{"The heart", "The brain", "The liver", "The spinal cord"}
            BonneReponse := 1
        question:
            Enonce := "Which organ digests food with acid?"
            Reponses := array{"The pancreas", "The intestine", "The liver", "The stomach"}
            BonneReponse := 3
        question:
            Enonce := "Which organs filter the blood?"
            Reponses := array{"The liver", "The lungs", "The spleen", "The kidneys"}
            BonneReponse := 3
        question:
            Enonce := "Which organ produces bile?"
            Reponses := array{"The pancreas", "The liver", "The stomach", "The spleen"}
            BonneReponse := 1
        question:
            Enonce := "Which organ stores urine?"
            Reponses := array{"The bladder", "The kidneys", "The intestine", "The stomach"}
            BonneReponse := 0
        question:
            Enonce := "What is the longest bone in the body?"
            Reponses := array{"The tibia", "The femur", "The skull", "The stapes"}
            BonneReponse := 1
        question:
            Enonce := "What carries oxygen in the blood?"
            Reponses := array{"DNA", "White blood cells", "Platelets", "Red blood cells"}
            BonneReponse := 3
        question:
            Enonce := "What fights infections?"
            Reponses := array{"White blood cells", "Red blood cells", "Platelets", "Melanin"}
            BonneReponse := 0
        question:
            Enonce := "Which molecule carries heredity?"
            Reponses := array{"Keratin", "RNA", "Melanin", "DNA"}
            BonneReponse := 3
        question:
            Enonce := "Which hormone regulates blood sugar?"
            Reponses := array{"Insulin", "Adrenaline", "Melanin", "Keratin"}
            BonneReponse := 0
        question:
            Enonce := "What is the largest artery in the body?"
            Reponses := array{"A vein", "The aorta", "The trachea", "The esophagus"}
            BonneReponse := 1
        question:
            Enonce := "Through which tube does air reach the lungs?"
            Reponses := array{"The trachea", "The esophagus", "The aorta", "A vein"}
            BonneReponse := 0
        question:
            Enonce := "Through which tube does food reach the stomach?"
            Reponses := array{"The trachea", "The esophagus", "The aorta", "The larynx"}
            BonneReponse := 1
        question:
            Enonce := "Which red protein carries oxygen?"
            Reponses := array{"Collagen", "Melanin", "Keratin", "Hemoglobin"}
            BonneReponse := 3
        question:
            Enonce := "Which cells transmit nerve signals?"
            Reponses := array{"Neurons", "Red blood cells", "White blood cells", "Platelets"}
            BonneReponse := 0
        question:
            Enonce := "Which mineral makes bones strong?"
            Reponses := array{"Collagen", "Melanin", "Keratin", "Calcium"}
            BonneReponse := 3
        question:
            Enonce := "Which membrane vibrates with sound in the ear?"
            Reponses := array{"The cornea", "The iris", "The retina", "The eardrum"}
            BonneReponse := 3
        question:
            Enonce := "Which hormone speeds the heart under stress?"
            Reponses := array{"Adrenaline", "Insulin", "Cortisol", "Testosterone"}
            BonneReponse := 0
        question:
            Enonce := "Which organ produces insulin?"
            Reponses := array{"The kidneys", "The liver", "The pancreas", "The thyroid"}
            BonneReponse := 2
        question:
            Enonce := "What is the smallest bone in the body?"
            Reponses := array{"The femur", "The stapes", "The tibia", "The skull"}
            BonneReponse := 1
        question:
            Enonce := "Which main muscle is used for breathing?"
            Reponses := array{"The biceps", "The diaphragm", "The gluteus maximus", "The heart"}
            BonneReponse := 1
        question:
            Enonce := "What is the largest muscle of the body?"
            Reponses := array{"The diaphragm", "The biceps", "The gluteus maximus", "The heart"}
            BonneReponse := 2
        question:
            Enonce := "Where is the sense of balance located?"
            Reponses := array{"The retina", "The cerebellum", "The inner ear", "The spinal cord"}
            BonneReponse := 2
        question:
            Enonce := "What is the longest nerve in the body?"
            Reponses := array{"The sciatic nerve", "The optic nerve", "The spinal cord", "The tendon"}
            BonneReponse := 0
        question:
            Enonce := "Which part of the eye is colored?"
            Reponses := array{"The optic nerve", "The retina", "The cornea", "The iris"}
            BonneReponse := 3
        question:
            Enonce := "Which part of the eye captures light?"
            Reponses := array{"The optic nerve", "The iris", "The cornea", "The retina"}
            BonneReponse := 3
        question:
            Enonce := "What connects muscle to bone?"
            Reponses := array{"The ligament", "The tendon", "Cartilage", "The spinal cord"}
            BonneReponse := 1
        question:
            Enonce := "What connects bones together?"
            Reponses := array{"The stapes", "The tendon", "Cartilage", "The ligament"}
            BonneReponse := 3
        question:
            Enonce := "Which pigment colors the skin?"
            Reponses := array{"Melanin", "Keratin", "Insulin", "Adrenaline"}
            BonneReponse := 0
        question:
            Enonce := "Which hormone is released by fear?"
            Reponses := array{"Adrenaline", "Insulin", "Melanin", "Keratin"}
            BonneReponse := 0
        question:
            Enonce := "Which gland regulates metabolism (neck)?"
            Reponses := array{"The spleen", "The pituitary gland", "The pancreas", "The thyroid"}
            BonneReponse := 3
        question:
            Enonce := "Where does oxygen exchange happen in the lungs?"
            Reponses := array{"The trachea", "The alveoli", "The larynx", "The gallbladder"}
            BonneReponse := 1
        question:
            Enonce := "Which organ stores the bile made by the liver?"
            Reponses := array{"The gallbladder", "The appendix", "The spleen", "The pancreas"}
            BonneReponse := 0
        question:
            Enonce := "Which bone protects the knee?"
            Reponses := array{"The jawbone", "The clavicle", "The kneecap", "The femur"}
            BonneReponse := 2
        question:
            Enonce := "Which part of the eye focuses light?"
            Reponses := array{"The iris", "The pupil", "The lens", "The cornea"}
            BonneReponse := 2
        question:
            Enonce := "Which part of the gut bears the appendix?"
            Reponses := array{"The stomach", "The duodenum", "The esophagus", "The colon"}
            BonneReponse := 3
        question:
            Enonce := "Which protein gives skin its flexibility?"
            Reponses := array{"Keratin", "Collagen", "Melanin", "Hemoglobin"}
            BonneReponse := 1
        question:
            Enonce := "What is the yellow fluid part of blood?"
            Reponses := array{"Saliva", "Lymph", "Bile", "Plasma"}
            BonneReponse := 3
        question:
            Enonce := "What do white blood cells make to fight germs?"
            Reponses := array{"Collagen", "Enzymes", "Hemoglobin", "Antibodies"}
            BonneReponse := 3
        question:
            Enonce := "Which gland above the kidneys makes adrenaline?"
            Reponses := array{"The thyroid", "The adrenal glands", "The pituitary gland", "The pancreas"}
            BonneReponse := 1
        question:
            Enonce := "Which first gut segment follows the stomach?"
            Reponses := array{"The colon", "The duodenum", "The appendix", "The esophagus"}
            BonneReponse := 1
        question:
            Enonce := "Which brain part manages balance and coordination?"
            Reponses := array{"The spinal cord", "The cerebellum", "The pituitary gland", "The brain"}
            BonneReponse := 1
        question:
            Enonce := "Which gland is called the master gland?"
            Reponses := array{"The spleen", "The thyroid", "The pancreas", "The pituitary gland"}
            BonneReponse := 3
        question:
            Enonce := "Which organ recycles old red blood cells?"
            Reponses := array{"The pancreas", "The liver", "The kidneys", "The spleen"}
            BonneReponse := 3
        question:
            Enonce := "What transmits messages from brain to body?"
            Reponses := array{"The spinal cord", "The sciatic nerve", "The optic nerve", "The tendon"}
            BonneReponse := 0
        question:
            Enonce := "What are hair and nails made of?"
            Reponses := array{"Keratin", "Melanin", "Cartilage", "DNA"}
            BonneReponse := 0
        question:
            Enonce := "What helps blood to clot?"
            Reponses := array{"DNA", "Red blood cells", "White blood cells", "Platelets"}
            BonneReponse := 3
        question:
            Enonce := "Which DNA copy is used to make proteins?"
            Reponses := array{"RNA", "DNA", "Keratin", "Insulin"}
            BonneReponse := 0
        question:
            Enonce := "Which tissue cushions the joints?"
            Reponses := array{"The tendon", "Cartilage", "The ligament", "The spinal cord"}
            BonneReponse := 1
        question:
            Enonce := "Which transparent part covers the front of the eye?"
            Reponses := array{"The retina", "The iris", "The cornea", "The optic nerve"}
            BonneReponse := 2
        question:
            Enonce := "Which nerve connects the eye to the brain?"
            Reponses := array{"The spinal cord", "The sciatic nerve", "The optic nerve", "The retina"}
            BonneReponse := 2
        question:
            Enonce := "Which brain structure is key for memory?"
            Reponses := array{"The hippocampus", "The cerebellum", "The cerebral cortex", "The spinal cord"}
            BonneReponse := 0
        question:
            Enonce := "Which outer brain layer handles thinking?"
            Reponses := array{"The spinal cord", "The cerebellum", "The hippocampus", "The cerebral cortex"}
            BonneReponse := 3
        question:
            Enonce := "Where do neurons pass information to each other?"
            Reponses := array{"The synapse", "Neurons", "The cerebral cortex", "The spinal cord"}
            BonneReponse := 0
        question:
            Enonce := "What is the filtering unit of the kidney?"
            Reponses := array{"A capillary", "The alveoli", "The intestinal villi", "The nephron"}
            BonneReponse := 3
        question:
            Enonce := "Which tiny structures absorb nutrients in the gut?"
            Reponses := array{"The nephron", "The alveoli", "The intestinal villi", "The taste buds"}
            BonneReponse := 2
        question:
            Enonce := "Which smallest vessels link arteries and veins?"
            Reponses := array{"A capillary", "The aorta", "A vein", "An artery"}
            BonneReponse := 0
        question:
            Enonce := "Which stress hormone do the adrenals release?"
            Reponses := array{"Insulin", "Cortisol", "Testosterone", "Melanin"}
            BonneReponse := 1
        question:
            Enonce := "Which tongue structures detect taste?"
            Reponses := array{"The synapse", "The intestinal villi", "The alveoli", "The taste buds"}
            BonneReponse := 3
        question:
            Enonce := "Which immune fluid flows outside the blood?"
            Reponses := array{"Plasma", "Lymph", "Bile", "Saliva"}
            BonneReponse := 1
        question:
            Enonce := "Which vessels carry blood back to the heart?"
            Reponses := array{"The aorta", "An artery", "A vein", "A capillary"}
            BonneReponse := 2
        question:
            Enonce := "Which throat organ holds the vocal cords?"
            Reponses := array{"The larynx", "The trachea", "The esophagus", "The eardrum"}
            BonneReponse := 0
        question:
            Enonce := "How many bones does an adult have?"
            Reponses := array{"226", "186", "206", "256"}
            BonneReponse := 2
        question:
            Enonce := "How many teeth does an adult have (with wisdom teeth)?"
            Reponses := array{"28", "32", "30", "36"}
            BonneReponse := 1
        question:
            Enonce := "How many baby teeth does a child have?"
            Reponses := array{"28", "16", "24", "20"}
            BonneReponse := 3
        question:
            Enonce := "How many chambers does the heart have?"
            Reponses := array{"2", "4", "3", "6"}
            BonneReponse := 1
        question:
            Enonce := "About how many liters of blood does an adult have?"
            Reponses := array{"2", "5", "8", "12"}
            BonneReponse := 1
        question:
            Enonce := "How many pairs of ribs do we have?"
            Reponses := array{"14", "10", "12", "16"}
            BonneReponse := 2
        question:
            Enonce := "How many vertebrae in the spine (incl. sacrum/coccyx)?"
            Reponses := array{"24", "33", "29", "38"}
            BonneReponse := 1
        question:
            Enonce := "How many pairs of chromosomes do humans have?"
            Reponses := array{"46", "21", "24", "23"}
            BonneReponse := 3
        question:
            Enonce := "About how many muscles does the human body have?"
            Reponses := array{"200", "600", "400", "900"}
            BonneReponse := 1
        question:
            Enonce := "How many bones are in the hand?"
            Reponses := array{"19", "27", "23", "31"}
            BonneReponse := 1
        question:
            Enonce := "How many bones are in the foot?"
            Reponses := array{"26", "20", "24", "30"}
            BonneReponse := 0
        question:
            Enonce := "How many ossicles are in each ear?"
            Reponses := array{"3", "2", "4", "5"}
            BonneReponse := 0
        question:
            Enonce := "How many pairs of cranial nerves do we have?"
            Reponses := array{"10", "8", "12", "14"}
            BonneReponse := 2
        question:
            Enonce := "How many muscles move each eye?"
            Reponses := array{"8", "3", "4", "6"}
            BonneReponse := 3
        question:
            Enonce := "About how many bones are in the skull?"
            Reponses := array{"14", "22", "18", "26"}
            BonneReponse := 1

MakeAnatomieQuestionsES() : []question =
    array:
        question:
            Enonce := "Que organo bombea la sangre?"
            Reponses := array{"Los rinones", "Los pulmones", "El higado", "El corazon"}
            BonneReponse := 3
        question:
            Enonce := "Que organo permite respirar?"
            Reponses := array{"El bazo", "El corazon", "El estomago", "Los pulmones"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el organo mas grande del cuerpo?"
            Reponses := array{"El higado", "La piel", "El cerebro", "El intestino"}
            BonneReponse := 1
        question:
            Enonce := "Que organo controla todo el cuerpo?"
            Reponses := array{"El corazon", "El cerebro", "El higado", "La medula espinal"}
            BonneReponse := 1
        question:
            Enonce := "Que organo digiere la comida con acido?"
            Reponses := array{"El pancreas", "El intestino", "El higado", "El estomago"}
            BonneReponse := 3
        question:
            Enonce := "Que organos filtran la sangre?"
            Reponses := array{"El higado", "Los pulmones", "El bazo", "Los rinones"}
            BonneReponse := 3
        question:
            Enonce := "Que organo produce la bilis?"
            Reponses := array{"El pancreas", "El higado", "El estomago", "El bazo"}
            BonneReponse := 1
        question:
            Enonce := "Que organo almacena la orina?"
            Reponses := array{"La vejiga", "Los rinones", "El intestino", "El estomago"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el hueso mas largo del cuerpo?"
            Reponses := array{"La tibia", "El femur", "El craneo", "El estribo"}
            BonneReponse := 1
        question:
            Enonce := "Que transporta el oxigeno en la sangre?"
            Reponses := array{"El ADN", "Los globulos blancos", "Las plaquetas", "Los globulos rojos"}
            BonneReponse := 3
        question:
            Enonce := "Que combate las infecciones?"
            Reponses := array{"Los globulos blancos", "Los globulos rojos", "Las plaquetas", "La melanina"}
            BonneReponse := 0
        question:
            Enonce := "Que molecula lleva la herencia?"
            Reponses := array{"La queratina", "El ARN", "La melanina", "El ADN"}
            BonneReponse := 3
        question:
            Enonce := "Que hormona regula el azucar en sangre?"
            Reponses := array{"La insulina", "La adrenalina", "La melanina", "La queratina"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la arteria mas grande del cuerpo?"
            Reponses := array{"Una vena", "La aorta", "La traquea", "El esofago"}
            BonneReponse := 1
        question:
            Enonce := "Por que tubo pasa el aire hacia los pulmones?"
            Reponses := array{"La traquea", "El esofago", "La aorta", "Una vena"}
            BonneReponse := 0
        question:
            Enonce := "Por que tubo pasan los alimentos al estomago?"
            Reponses := array{"La traquea", "El esofago", "La aorta", "La laringe"}
            BonneReponse := 1
        question:
            Enonce := "Que proteina roja transporta el oxigeno?"
            Reponses := array{"El colageno", "La melanina", "La queratina", "La hemoglobina"}
            BonneReponse := 3
        question:
            Enonce := "Que celulas transmiten las senales nerviosas?"
            Reponses := array{"Las neuronas", "Los globulos rojos", "Los globulos blancos", "Las plaquetas"}
            BonneReponse := 0
        question:
            Enonce := "Que mineral hace fuertes los huesos?"
            Reponses := array{"El colageno", "La melanina", "La queratina", "El calcio"}
            BonneReponse := 3
        question:
            Enonce := "Que membrana vibra con el sonido en el oido?"
            Reponses := array{"La cornea", "El iris", "La retina", "El timpano"}
            BonneReponse := 3
        question:
            Enonce := "Que hormona acelera el corazon con el estres?"
            Reponses := array{"La adrenalina", "La insulina", "El cortisol", "La testosterona"}
            BonneReponse := 0
        question:
            Enonce := "Que organo produce la insulina?"
            Reponses := array{"Los rinones", "El higado", "El pancreas", "La tiroides"}
            BonneReponse := 2
        question:
            Enonce := "Cual es el hueso mas pequeno del cuerpo?"
            Reponses := array{"El femur", "El estribo", "La tibia", "El craneo"}
            BonneReponse := 1
        question:
            Enonce := "Que musculo principal sirve para respirar?"
            Reponses := array{"El biceps", "El diafragma", "El gluteo mayor", "El corazon"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el musculo mas grande del cuerpo?"
            Reponses := array{"El diafragma", "El biceps", "El gluteo mayor", "El corazon"}
            BonneReponse := 2
        question:
            Enonce := "Donde esta el sentido del equilibrio?"
            Reponses := array{"La retina", "El cerebelo", "El oido interno", "La medula espinal"}
            BonneReponse := 2
        question:
            Enonce := "Cual es el nervio mas largo del cuerpo?"
            Reponses := array{"El nervio ciatico", "El nervio optico", "La medula espinal", "El tendon"}
            BonneReponse := 0
        question:
            Enonce := "Que parte del ojo tiene color?"
            Reponses := array{"El nervio optico", "La retina", "La cornea", "El iris"}
            BonneReponse := 3
        question:
            Enonce := "Que parte del ojo capta la luz?"
            Reponses := array{"El nervio optico", "El iris", "La cornea", "La retina"}
            BonneReponse := 3
        question:
            Enonce := "Que une el musculo al hueso?"
            Reponses := array{"El ligamento", "El tendon", "El cartilago", "La medula espinal"}
            BonneReponse := 1
        question:
            Enonce := "Que une los huesos entre si?"
            Reponses := array{"El estribo", "El tendon", "El cartilago", "El ligamento"}
            BonneReponse := 3
        question:
            Enonce := "Que pigmento da color a la piel?"
            Reponses := array{"La melanina", "La queratina", "La insulina", "La adrenalina"}
            BonneReponse := 0
        question:
            Enonce := "Que hormona se libera con el miedo?"
            Reponses := array{"La adrenalina", "La insulina", "La melanina", "La queratina"}
            BonneReponse := 0
        question:
            Enonce := "Que glandula regula el metabolismo (cuello)?"
            Reponses := array{"El bazo", "La hipofisis", "El pancreas", "La tiroides"}
            BonneReponse := 3
        question:
            Enonce := "Donde ocurre el intercambio de oxigeno en los pulmones?"
            Reponses := array{"La traquea", "Los alveolos", "La laringe", "La vesicula biliar"}
            BonneReponse := 1
        question:
            Enonce := "Que organo almacena la bilis del higado?"
            Reponses := array{"La vesicula biliar", "El apendice", "El bazo", "El pancreas"}
            BonneReponse := 0
        question:
            Enonce := "Que hueso protege la rodilla?"
            Reponses := array{"La mandibula", "La clavicula", "La rotula", "El femur"}
            BonneReponse := 2
        question:
            Enonce := "Que parte del ojo enfoca la luz?"
            Reponses := array{"El iris", "La pupila", "El cristalino", "La cornea"}
            BonneReponse := 2
        question:
            Enonce := "Que parte del intestino tiene el apendice?"
            Reponses := array{"El estomago", "El duodeno", "El esofago", "El colon"}
            BonneReponse := 3
        question:
            Enonce := "Que proteina da flexibilidad a la piel?"
            Reponses := array{"La queratina", "El colageno", "La melanina", "La hemoglobina"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la parte liquida amarilla de la sangre?"
            Reponses := array{"La saliva", "La linfa", "La bilis", "El plasma"}
            BonneReponse := 3
        question:
            Enonce := "Que producen los globulos blancos contra los microbios?"
            Reponses := array{"El colageno", "Las enzimas", "La hemoglobina", "Los anticuerpos"}
            BonneReponse := 3
        question:
            Enonce := "Que glandula sobre los rinones produce adrenalina?"
            Reponses := array{"La tiroides", "Las glandulas suprarrenales", "La hipofisis", "El pancreas"}
            BonneReponse := 1
        question:
            Enonce := "Que primer tramo del intestino sigue al estomago?"
            Reponses := array{"El colon", "El duodeno", "El apendice", "El esofago"}
            BonneReponse := 1
        question:
            Enonce := "Que parte del cerebro gestiona el equilibrio y la coordinacion?"
            Reponses := array{"La medula espinal", "El cerebelo", "La hipofisis", "El cerebro"}
            BonneReponse := 1
        question:
            Enonce := "Que glandula es llamada la glandula maestra?"
            Reponses := array{"El bazo", "La tiroides", "El pancreas", "La hipofisis"}
            BonneReponse := 3
        question:
            Enonce := "Que organo recicla los globulos rojos viejos?"
            Reponses := array{"El pancreas", "El higado", "Los rinones", "El bazo"}
            BonneReponse := 3
        question:
            Enonce := "Que transmite los mensajes del cerebro al cuerpo?"
            Reponses := array{"La medula espinal", "El nervio ciatico", "El nervio optico", "El tendon"}
            BonneReponse := 0
        question:
            Enonce := "De que estan hechos el pelo y las unas?"
            Reponses := array{"La queratina", "La melanina", "El cartilago", "El ADN"}
            BonneReponse := 0
        question:
            Enonce := "Que ayuda a coagular la sangre?"
            Reponses := array{"El ADN", "Los globulos rojos", "Los globulos blancos", "Las plaquetas"}
            BonneReponse := 3
        question:
            Enonce := "Que copia del ADN sirve para fabricar proteinas?"
            Reponses := array{"El ARN", "El ADN", "La queratina", "La insulina"}
            BonneReponse := 0
        question:
            Enonce := "Que tejido amortigua las articulaciones?"
            Reponses := array{"El tendon", "El cartilago", "El ligamento", "La medula espinal"}
            BonneReponse := 1
        question:
            Enonce := "Que parte transparente cubre el frente del ojo?"
            Reponses := array{"La retina", "El iris", "La cornea", "El nervio optico"}
            BonneReponse := 2
        question:
            Enonce := "Que nervio conecta el ojo con el cerebro?"
            Reponses := array{"La medula espinal", "El nervio ciatico", "El nervio optico", "La retina"}
            BonneReponse := 2
        question:
            Enonce := "Que estructura cerebral es clave para la memoria?"
            Reponses := array{"El hipocampo", "El cerebelo", "La corteza cerebral", "La medula espinal"}
            BonneReponse := 0
        question:
            Enonce := "Que capa externa del cerebro gestiona el pensamiento?"
            Reponses := array{"La medula espinal", "El cerebelo", "El hipocampo", "La corteza cerebral"}
            BonneReponse := 3
        question:
            Enonce := "Donde se transmiten la informacion las neuronas?"
            Reponses := array{"La sinapsis", "Las neuronas", "La corteza cerebral", "La medula espinal"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la unidad filtrante del rinon?"
            Reponses := array{"Un capilar", "Los alveolos", "Las vellosidades intestinales", "La nefrona"}
            BonneReponse := 3
        question:
            Enonce := "Que pequenas estructuras absorben los nutrientes en el intestino?"
            Reponses := array{"La nefrona", "Los alveolos", "Las vellosidades intestinales", "Las papilas gustativas"}
            BonneReponse := 2
        question:
            Enonce := "Que vasos mas pequenos unen arterias y venas?"
            Reponses := array{"Un capilar", "La aorta", "Una vena", "Una arteria"}
            BonneReponse := 0
        question:
            Enonce := "Que hormona del estres liberan las suprarrenales?"
            Reponses := array{"La insulina", "El cortisol", "La testosterona", "La melanina"}
            BonneReponse := 1
        question:
            Enonce := "Que estructuras de la lengua detectan el sabor?"
            Reponses := array{"La sinapsis", "Las vellosidades intestinales", "Los alveolos", "Las papilas gustativas"}
            BonneReponse := 3
        question:
            Enonce := "Que liquido inmunitario circula fuera de la sangre?"
            Reponses := array{"El plasma", "La linfa", "La bilis", "La saliva"}
            BonneReponse := 1
        question:
            Enonce := "Que vasos llevan la sangre de vuelta al corazon?"
            Reponses := array{"La aorta", "Una arteria", "Una vena", "Un capilar"}
            BonneReponse := 2
        question:
            Enonce := "Que organo de la garganta tiene las cuerdas vocales?"
            Reponses := array{"La laringe", "La traquea", "El esofago", "El timpano"}
            BonneReponse := 0
        question:
            Enonce := "Cuantos huesos tiene un adulto?"
            Reponses := array{"226", "186", "206", "256"}
            BonneReponse := 2
        question:
            Enonce := "Cuantos dientes tiene un adulto (con muelas del juicio)?"
            Reponses := array{"28", "32", "30", "36"}
            BonneReponse := 1
        question:
            Enonce := "Cuantos dientes de leche tiene un nino?"
            Reponses := array{"28", "16", "24", "20"}
            BonneReponse := 3
        question:
            Enonce := "Cuantas cavidades tiene el corazon?"
            Reponses := array{"2", "4", "3", "6"}
            BonneReponse := 1
        question:
            Enonce := "Cuantos litros de sangre tiene un adulto (aprox.)?"
            Reponses := array{"2", "5", "8", "12"}
            BonneReponse := 1
        question:
            Enonce := "Cuantos pares de costillas tenemos?"
            Reponses := array{"14", "10", "12", "16"}
            BonneReponse := 2
        question:
            Enonce := "Cuantas vertebras tiene la columna (con sacro/coxis)?"
            Reponses := array{"24", "33", "29", "38"}
            BonneReponse := 1
        question:
            Enonce := "Cuantos pares de cromosomas tiene el humano?"
            Reponses := array{"46", "21", "24", "23"}
            BonneReponse := 3
        question:
            Enonce := "Cuantos musculos tiene el cuerpo (aprox.)?"
            Reponses := array{"200", "600", "400", "900"}
            BonneReponse := 1
        question:
            Enonce := "Cuantos huesos tiene la mano?"
            Reponses := array{"19", "27", "23", "31"}
            BonneReponse := 1
        question:
            Enonce := "Cuantos huesos tiene el pie?"
            Reponses := array{"26", "20", "24", "30"}
            BonneReponse := 0
        question:
            Enonce := "Cuantos huesecillos tiene cada oido?"
            Reponses := array{"3", "2", "4", "5"}
            BonneReponse := 0
        question:
            Enonce := "Cuantos pares de nervios craneales tenemos?"
            Reponses := array{"10", "8", "12", "14"}
            BonneReponse := 2
        question:
            Enonce := "Cuantos musculos mueven cada ojo?"
            Reponses := array{"8", "3", "4", "6"}
            BonneReponse := 3
        question:
            Enonce := "Cuantos huesos tiene el craneo (aprox.)?"
            Reponses := array{"14", "22", "18", "26"}
            BonneReponse := 1

MakeAnatomieQuestionsDE() : []question =
    array:
        question:
            Enonce := "Welches Organ pumpt das Blut?"
            Reponses := array{"Die Nieren", "Die Lunge", "Die Leber", "Das Herz"}
            BonneReponse := 3
        question:
            Enonce := "Mit welchem Organ atmet man?"
            Reponses := array{"Die Milz", "Das Herz", "Der Magen", "Die Lunge"}
            BonneReponse := 3
        question:
            Enonce := "Was ist das groesste Organ des Koerpers?"
            Reponses := array{"Die Leber", "Die Haut", "Das Gehirn", "Der Darm"}
            BonneReponse := 1
        question:
            Enonce := "Welches Organ steuert den ganzen Koerper?"
            Reponses := array{"Das Herz", "Das Gehirn", "Die Leber", "Das Rueckenmark"}
            BonneReponse := 1
        question:
            Enonce := "Welches Organ verdaut Nahrung mit Saeure?"
            Reponses := array{"Die Bauchspeicheldruese", "Der Darm", "Die Leber", "Der Magen"}
            BonneReponse := 3
        question:
            Enonce := "Welche Organe filtern das Blut?"
            Reponses := array{"Die Leber", "Die Lunge", "Die Milz", "Die Nieren"}
            BonneReponse := 3
        question:
            Enonce := "Welches Organ produziert die Galle?"
            Reponses := array{"Die Bauchspeicheldruese", "Die Leber", "Der Magen", "Die Milz"}
            BonneReponse := 1
        question:
            Enonce := "Welches Organ speichert den Urin?"
            Reponses := array{"Die Blase", "Die Nieren", "Der Darm", "Der Magen"}
            BonneReponse := 0
        question:
            Enonce := "Was ist der laengste Knochen des Koerpers?"
            Reponses := array{"Das Schienbein", "Der Oberschenkelknochen", "Der Schaedel", "Der Steigbuegel"}
            BonneReponse := 1
        question:
            Enonce := "Was transportiert Sauerstoff im Blut?"
            Reponses := array{"Die DNA", "Weisse Blutkoerperchen", "Blutplaettchen", "Rote Blutkoerperchen"}
            BonneReponse := 3
        question:
            Enonce := "Was bekaempft Infektionen?"
            Reponses := array{"Weisse Blutkoerperchen", "Rote Blutkoerperchen", "Blutplaettchen", "Melanin"}
            BonneReponse := 0
        question:
            Enonce := "Welches Molekuel traegt die Erbinformation?"
            Reponses := array{"Keratin", "Die RNA", "Melanin", "Die DNA"}
            BonneReponse := 3
        question:
            Enonce := "Welches Hormon reguliert den Blutzucker?"
            Reponses := array{"Insulin", "Adrenalin", "Melanin", "Keratin"}
            BonneReponse := 0
        question:
            Enonce := "Was ist die groesste Arterie des Koerpers?"
            Reponses := array{"Eine Vene", "Die Aorta", "Die Luftroehre", "Die Speiseroehre"}
            BonneReponse := 1
        question:
            Enonce := "Durch welche Roehre gelangt Luft in die Lunge?"
            Reponses := array{"Die Luftroehre", "Die Speiseroehre", "Die Aorta", "Eine Vene"}
            BonneReponse := 0
        question:
            Enonce := "Durch welche Roehre gelangt Nahrung in den Magen?"
            Reponses := array{"Die Luftroehre", "Die Speiseroehre", "Die Aorta", "Der Kehlkopf"}
            BonneReponse := 1
        question:
            Enonce := "Welches rote Eiweiss transportiert Sauerstoff?"
            Reponses := array{"Kollagen", "Melanin", "Keratin", "Haemoglobin"}
            BonneReponse := 3
        question:
            Enonce := "Welche Zellen leiten Nervensignale weiter?"
            Reponses := array{"Neuronen", "Rote Blutkoerperchen", "Weisse Blutkoerperchen", "Blutplaettchen"}
            BonneReponse := 0
        question:
            Enonce := "Welches Mineral macht Knochen stark?"
            Reponses := array{"Kollagen", "Melanin", "Keratin", "Kalzium"}
            BonneReponse := 3
        question:
            Enonce := "Welche Membran schwingt im Ohr mit dem Schall?"
            Reponses := array{"Die Hornhaut", "Die Iris", "Die Netzhaut", "Das Trommelfell"}
            BonneReponse := 3
        question:
            Enonce := "Welches Hormon beschleunigt das Herz bei Stress?"
            Reponses := array{"Adrenalin", "Insulin", "Cortisol", "Testosteron"}
            BonneReponse := 0
        question:
            Enonce := "Welches Organ produziert Insulin?"
            Reponses := array{"Die Nieren", "Die Leber", "Die Bauchspeicheldruese", "Die Schilddruese"}
            BonneReponse := 2
        question:
            Enonce := "Was ist der kleinste Knochen des Koerpers?"
            Reponses := array{"Der Oberschenkelknochen", "Der Steigbuegel", "Das Schienbein", "Der Schaedel"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Hauptmuskel dient der Atmung?"
            Reponses := array{"Der Bizeps", "Das Zwerchfell", "Der grosse Gesaessmuskel", "Das Herz"}
            BonneReponse := 1
        question:
            Enonce := "Was ist der groesste Muskel des Koerpers?"
            Reponses := array{"Das Zwerchfell", "Der Bizeps", "Der grosse Gesaessmuskel", "Das Herz"}
            BonneReponse := 2
        question:
            Enonce := "Wo sitzt der Gleichgewichtssinn?"
            Reponses := array{"Die Netzhaut", "Das Kleinhirn", "Das Innenohr", "Das Rueckenmark"}
            BonneReponse := 2
        question:
            Enonce := "Was ist der laengste Nerv des Koerpers?"
            Reponses := array{"Der Ischiasnerv", "Der Sehnerv", "Das Rueckenmark", "Die Sehne"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Teil des Auges ist gefaerbt?"
            Reponses := array{"Der Sehnerv", "Die Netzhaut", "Die Hornhaut", "Die Iris"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Teil des Auges nimmt Licht auf?"
            Reponses := array{"Der Sehnerv", "Die Iris", "Die Hornhaut", "Die Netzhaut"}
            BonneReponse := 3
        question:
            Enonce := "Was verbindet Muskel und Knochen?"
            Reponses := array{"Das Band", "Die Sehne", "Der Knorpel", "Das Rueckenmark"}
            BonneReponse := 1
        question:
            Enonce := "Was verbindet Knochen miteinander?"
            Reponses := array{"Der Steigbuegel", "Die Sehne", "Der Knorpel", "Das Band"}
            BonneReponse := 3
        question:
            Enonce := "Welches Pigment faerbt die Haut?"
            Reponses := array{"Melanin", "Keratin", "Insulin", "Adrenalin"}
            BonneReponse := 0
        question:
            Enonce := "Welches Hormon wird bei Angst ausgeschuettet?"
            Reponses := array{"Adrenalin", "Insulin", "Melanin", "Keratin"}
            BonneReponse := 0
        question:
            Enonce := "Welche Druese reguliert den Stoffwechsel (Hals)?"
            Reponses := array{"Die Milz", "Die Hirnanhangdruese", "Die Bauchspeicheldruese", "Die Schilddruese"}
            BonneReponse := 3
        question:
            Enonce := "Wo findet der Sauerstoffaustausch in der Lunge statt?"
            Reponses := array{"Die Luftroehre", "Die Lungenblaeschen", "Der Kehlkopf", "Die Gallenblase"}
            BonneReponse := 1
        question:
            Enonce := "Welches Organ speichert die Galle der Leber?"
            Reponses := array{"Die Gallenblase", "Der Blinddarm", "Die Milz", "Die Bauchspeicheldruese"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Knochen schuetzt das Knie?"
            Reponses := array{"Der Unterkiefer", "Das Schluesselbein", "Die Kniescheibe", "Der Oberschenkelknochen"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Teil des Auges stellt scharf?"
            Reponses := array{"Die Iris", "Die Pupille", "Die Augenlinse", "Die Hornhaut"}
            BonneReponse := 2
        question:
            Enonce := "An welchem Darmteil sitzt der Blinddarm?"
            Reponses := array{"Der Magen", "Der Zwoelffingerdarm", "Die Speiseroehre", "Der Dickdarm"}
            BonneReponse := 3
        question:
            Enonce := "Welches Protein macht die Haut elastisch?"
            Reponses := array{"Keratin", "Kollagen", "Melanin", "Haemoglobin"}
            BonneReponse := 1
        question:
            Enonce := "Was ist der gelbe fluessige Teil des Blutes?"
            Reponses := array{"Der Speichel", "Die Lymphe", "Die Galle", "Das Plasma"}
            BonneReponse := 3
        question:
            Enonce := "Was bilden weisse Blutkoerperchen gegen Keime?"
            Reponses := array{"Kollagen", "Enzyme", "Haemoglobin", "Antikoerper"}
            BonneReponse := 3
        question:
            Enonce := "Welche Druese ueber den Nieren bildet Adrenalin?"
            Reponses := array{"Die Schilddruese", "Die Nebennieren", "Die Hirnanhangdruese", "Die Bauchspeicheldruese"}
            BonneReponse := 1
        question:
            Enonce := "Welcher erste Darmabschnitt folgt dem Magen?"
            Reponses := array{"Der Dickdarm", "Der Zwoelffingerdarm", "Der Blinddarm", "Die Speiseroehre"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Hirnteil steuert Gleichgewicht und Koordination?"
            Reponses := array{"Das Rueckenmark", "Das Kleinhirn", "Die Hirnanhangdruese", "Das Gehirn"}
            BonneReponse := 1
        question:
            Enonce := "Welche Druese gilt als Hauptdruese?"
            Reponses := array{"Die Milz", "Die Schilddruese", "Die Bauchspeicheldruese", "Die Hirnanhangdruese"}
            BonneReponse := 3
        question:
            Enonce := "Welches Organ recycelt alte rote Blutkoerperchen?"
            Reponses := array{"Die Bauchspeicheldruese", "Die Leber", "Die Nieren", "Die Milz"}
            BonneReponse := 3
        question:
            Enonce := "Was uebertraegt Signale vom Gehirn zum Koerper?"
            Reponses := array{"Das Rueckenmark", "Der Ischiasnerv", "Der Sehnerv", "Die Sehne"}
            BonneReponse := 0
        question:
            Enonce := "Woraus bestehen Haare und Naegel?"
            Reponses := array{"Keratin", "Melanin", "Der Knorpel", "Die DNA"}
            BonneReponse := 0
        question:
            Enonce := "Was hilft dem Blut zu gerinnen?"
            Reponses := array{"Die DNA", "Rote Blutkoerperchen", "Weisse Blutkoerperchen", "Blutplaettchen"}
            BonneReponse := 3
        question:
            Enonce := "Welche DNA-Kopie dient der Proteinherstellung?"
            Reponses := array{"Die RNA", "Die DNA", "Keratin", "Insulin"}
            BonneReponse := 0
        question:
            Enonce := "Welches Gewebe daempft die Gelenke?"
            Reponses := array{"Die Sehne", "Der Knorpel", "Das Band", "Das Rueckenmark"}
            BonneReponse := 1
        question:
            Enonce := "Welcher durchsichtige Teil bedeckt das Auge vorne?"
            Reponses := array{"Die Netzhaut", "Die Iris", "Die Hornhaut", "Der Sehnerv"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Nerv verbindet Auge und Gehirn?"
            Reponses := array{"Das Rueckenmark", "Der Ischiasnerv", "Der Sehnerv", "Die Netzhaut"}
            BonneReponse := 2
        question:
            Enonce := "Welche Hirnstruktur ist wichtig fuer das Gedaechtnis?"
            Reponses := array{"Der Hippocampus", "Das Kleinhirn", "Die Hirnrinde", "Das Rueckenmark"}
            BonneReponse := 0
        question:
            Enonce := "Welche aeussere Hirnschicht steuert das Denken?"
            Reponses := array{"Das Rueckenmark", "Das Kleinhirn", "Der Hippocampus", "Die Hirnrinde"}
            BonneReponse := 3
        question:
            Enonce := "Wo geben Neuronen Informationen weiter?"
            Reponses := array{"Die Synapse", "Neuronen", "Die Hirnrinde", "Das Rueckenmark"}
            BonneReponse := 0
        question:
            Enonce := "Was ist die Filtereinheit der Niere?"
            Reponses := array{"Eine Kapillare", "Die Lungenblaeschen", "Die Darmzotten", "Das Nephron"}
            BonneReponse := 3
        question:
            Enonce := "Welche kleinen Strukturen nehmen Naehrstoffe im Darm auf?"
            Reponses := array{"Das Nephron", "Die Lungenblaeschen", "Die Darmzotten", "Die Geschmacksknospen"}
            BonneReponse := 2
        question:
            Enonce := "Welche kleinsten Gefaesse verbinden Arterien und Venen?"
            Reponses := array{"Eine Kapillare", "Die Aorta", "Eine Vene", "Eine Arterie"}
            BonneReponse := 0
        question:
            Enonce := "Welches Stresshormon schuetten die Nebennieren aus?"
            Reponses := array{"Insulin", "Cortisol", "Testosteron", "Melanin"}
            BonneReponse := 1
        question:
            Enonce := "Welche Zungenstrukturen erkennen Geschmack?"
            Reponses := array{"Die Synapse", "Die Darmzotten", "Die Lungenblaeschen", "Die Geschmacksknospen"}
            BonneReponse := 3
        question:
            Enonce := "Welche Immunfluessigkeit fliesst ausserhalb des Blutes?"
            Reponses := array{"Das Plasma", "Die Lymphe", "Die Galle", "Der Speichel"}
            BonneReponse := 1
        question:
            Enonce := "Welche Gefaesse fuehren das Blut zum Herzen zurueck?"
            Reponses := array{"Die Aorta", "Eine Arterie", "Eine Vene", "Eine Kapillare"}
            BonneReponse := 2
        question:
            Enonce := "Welches Halsorgan enthaelt die Stimmbaender?"
            Reponses := array{"Der Kehlkopf", "Die Luftroehre", "Die Speiseroehre", "Das Trommelfell"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Knochen hat ein Erwachsener?"
            Reponses := array{"226", "186", "206", "256"}
            BonneReponse := 2
        question:
            Enonce := "Wie viele Zaehne hat ein Erwachsener (mit Weisheitszaehnen)?"
            Reponses := array{"28", "32", "30", "36"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Milchzaehne hat ein Kind?"
            Reponses := array{"28", "16", "24", "20"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Kammern hat das Herz?"
            Reponses := array{"2", "4", "3", "6"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Liter Blut hat ein Erwachsener (ca.)?"
            Reponses := array{"2", "5", "8", "12"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Rippenpaare haben wir?"
            Reponses := array{"14", "10", "12", "16"}
            BonneReponse := 2
        question:
            Enonce := "Wie viele Wirbel hat die Wirbelsaeule (inkl. Kreuz-/Steissbein)?"
            Reponses := array{"24", "33", "29", "38"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Chromosomenpaare hat der Mensch?"
            Reponses := array{"46", "21", "24", "23"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Muskeln hat der Koerper (ca.)?"
            Reponses := array{"200", "600", "400", "900"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Knochen hat die Hand?"
            Reponses := array{"19", "27", "23", "31"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Knochen hat der Fuss?"
            Reponses := array{"26", "20", "24", "30"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Gehoerknoechelchen hat jedes Ohr?"
            Reponses := array{"3", "2", "4", "5"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Hirnnervenpaare haben wir?"
            Reponses := array{"10", "8", "12", "14"}
            BonneReponse := 2
        question:
            Enonce := "Wie viele Muskeln bewegen jedes Auge?"
            Reponses := array{"8", "3", "4", "6"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Knochen hat der Schaedel (ca.)?"
            Reponses := array{"14", "22", "18", "26"}
            BonneReponse := 1

MakeAnatomieQuestionsIT() : []question =
    array:
        question:
            Enonce := "Quale organo pompa il sangue?"
            Reponses := array{"I reni", "I polmoni", "Il fegato", "Il cuore"}
            BonneReponse := 3
        question:
            Enonce := "Quale organo permette di respirare?"
            Reponses := array{"La milza", "Il cuore", "Lo stomaco", "I polmoni"}
            BonneReponse := 3
        question:
            Enonce := "Qual e l'organo piu grande del corpo?"
            Reponses := array{"Il fegato", "La pelle", "Il cervello", "L'intestino"}
            BonneReponse := 1
        question:
            Enonce := "Quale organo controlla tutto il corpo?"
            Reponses := array{"Il cuore", "Il cervello", "Il fegato", "Il midollo spinale"}
            BonneReponse := 1
        question:
            Enonce := "Quale organo digerisce il cibo con l'acido?"
            Reponses := array{"Il pancreas", "L'intestino", "Il fegato", "Lo stomaco"}
            BonneReponse := 3
        question:
            Enonce := "Quali organi filtrano il sangue?"
            Reponses := array{"Il fegato", "I polmoni", "La milza", "I reni"}
            BonneReponse := 3
        question:
            Enonce := "Quale organo produce la bile?"
            Reponses := array{"Il pancreas", "Il fegato", "Lo stomaco", "La milza"}
            BonneReponse := 1
        question:
            Enonce := "Quale organo immagazzina l'urina?"
            Reponses := array{"La vescica", "I reni", "L'intestino", "Lo stomaco"}
            BonneReponse := 0
        question:
            Enonce := "Qual e l'osso piu lungo del corpo?"
            Reponses := array{"La tibia", "Il femore", "Il cranio", "La staffa"}
            BonneReponse := 1
        question:
            Enonce := "Cosa trasporta l'ossigeno nel sangue?"
            Reponses := array{"Il DNA", "I globuli bianchi", "Le piastrine", "I globuli rossi"}
            BonneReponse := 3
        question:
            Enonce := "Cosa combatte le infezioni?"
            Reponses := array{"I globuli bianchi", "I globuli rossi", "Le piastrine", "La melanina"}
            BonneReponse := 0
        question:
            Enonce := "Quale molecola porta l'eredita?"
            Reponses := array{"La cheratina", "L'RNA", "La melanina", "Il DNA"}
            BonneReponse := 3
        question:
            Enonce := "Quale ormone regola lo zucchero nel sangue?"
            Reponses := array{"L'insulina", "L'adrenalina", "La melanina", "La cheratina"}
            BonneReponse := 0
        question:
            Enonce := "Qual e l'arteria piu grande del corpo?"
            Reponses := array{"Una vena", "L'aorta", "La trachea", "L'esofago"}
            BonneReponse := 1
        question:
            Enonce := "Attraverso quale tubo passa l'aria verso i polmoni?"
            Reponses := array{"La trachea", "L'esofago", "L'aorta", "Una vena"}
            BonneReponse := 0
        question:
            Enonce := "Attraverso quale tubo passa il cibo verso lo stomaco?"
            Reponses := array{"La trachea", "L'esofago", "L'aorta", "La laringe"}
            BonneReponse := 1
        question:
            Enonce := "Quale proteina rossa trasporta l'ossigeno?"
            Reponses := array{"Il collagene", "La melanina", "La cheratina", "L'emoglobina"}
            BonneReponse := 3
        question:
            Enonce := "Quali cellule trasmettono i segnali nervosi?"
            Reponses := array{"I neuroni", "I globuli rossi", "I globuli bianchi", "Le piastrine"}
            BonneReponse := 0
        question:
            Enonce := "Quale minerale rende forti le ossa?"
            Reponses := array{"Il collagene", "La melanina", "La cheratina", "Il calcio"}
            BonneReponse := 3
        question:
            Enonce := "Quale membrana vibra con il suono nell'orecchio?"
            Reponses := array{"La cornea", "L'iride", "La retina", "Il timpano"}
            BonneReponse := 3
        question:
            Enonce := "Quale ormone accelera il cuore sotto stress?"
            Reponses := array{"L'adrenalina", "L'insulina", "Il cortisolo", "Il testosterone"}
            BonneReponse := 0
        question:
            Enonce := "Quale organo produce l'insulina?"
            Reponses := array{"I reni", "Il fegato", "Il pancreas", "La tiroide"}
            BonneReponse := 2
        question:
            Enonce := "Qual e l'osso piu piccolo del corpo?"
            Reponses := array{"Il femore", "La staffa", "La tibia", "Il cranio"}
            BonneReponse := 1
        question:
            Enonce := "Quale muscolo principale serve per respirare?"
            Reponses := array{"Il bicipite", "Il diaframma", "Il grande gluteo", "Il cuore"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il muscolo piu grande del corpo?"
            Reponses := array{"Il diaframma", "Il bicipite", "Il grande gluteo", "Il cuore"}
            BonneReponse := 2
        question:
            Enonce := "Dove si trova il senso dell'equilibrio?"
            Reponses := array{"La retina", "Il cervelletto", "L'orecchio interno", "Il midollo spinale"}
            BonneReponse := 2
        question:
            Enonce := "Qual e il nervo piu lungo del corpo?"
            Reponses := array{"Il nervo sciatico", "Il nervo ottico", "Il midollo spinale", "Il tendine"}
            BonneReponse := 0
        question:
            Enonce := "Quale parte dell'occhio e colorata?"
            Reponses := array{"Il nervo ottico", "La retina", "La cornea", "L'iride"}
            BonneReponse := 3
        question:
            Enonce := "Quale parte dell'occhio capta la luce?"
            Reponses := array{"Il nervo ottico", "L'iride", "La cornea", "La retina"}
            BonneReponse := 3
        question:
            Enonce := "Cosa collega il muscolo all'osso?"
            Reponses := array{"Il legamento", "Il tendine", "La cartilagine", "Il midollo spinale"}
            BonneReponse := 1
        question:
            Enonce := "Cosa collega le ossa tra loro?"
            Reponses := array{"La staffa", "Il tendine", "La cartilagine", "Il legamento"}
            BonneReponse := 3
        question:
            Enonce := "Quale pigmento colora la pelle?"
            Reponses := array{"La melanina", "La cheratina", "L'insulina", "L'adrenalina"}
            BonneReponse := 0
        question:
            Enonce := "Quale ormone viene rilasciato dalla paura?"
            Reponses := array{"L'adrenalina", "L'insulina", "La melanina", "La cheratina"}
            BonneReponse := 0
        question:
            Enonce := "Quale ghiandola regola il metabolismo (collo)?"
            Reponses := array{"La milza", "L'ipofisi", "Il pancreas", "La tiroide"}
            BonneReponse := 3
        question:
            Enonce := "Dove avviene lo scambio di ossigeno nei polmoni?"
            Reponses := array{"La trachea", "Gli alveoli", "La laringe", "La cistifellea"}
            BonneReponse := 1
        question:
            Enonce := "Quale organo immagazzina la bile prodotta dal fegato?"
            Reponses := array{"La cistifellea", "L'appendice", "La milza", "Il pancreas"}
            BonneReponse := 0
        question:
            Enonce := "Quale osso protegge il ginocchio?"
            Reponses := array{"La mandibola", "La clavicola", "La rotula", "Il femore"}
            BonneReponse := 2
        question:
            Enonce := "Quale parte dell'occhio mette a fuoco?"
            Reponses := array{"L'iride", "La pupilla", "Il cristallino", "La cornea"}
            BonneReponse := 2
        question:
            Enonce := "A quale parte dell'intestino e attaccata l'appendice?"
            Reponses := array{"Lo stomaco", "Il duodeno", "L'esofago", "Il colon"}
            BonneReponse := 3
        question:
            Enonce := "Quale proteina rende elastica la pelle?"
            Reponses := array{"La cheratina", "Il collagene", "La melanina", "L'emoglobina"}
            BonneReponse := 1
        question:
            Enonce := "Qual e la parte liquida gialla del sangue?"
            Reponses := array{"La saliva", "La linfa", "La bile", "Il plasma"}
            BonneReponse := 3
        question:
            Enonce := "Cosa producono i globuli bianchi contro i microbi?"
            Reponses := array{"Il collagene", "Gli enzimi", "L'emoglobina", "Gli anticorpi"}
            BonneReponse := 3
        question:
            Enonce := "Quale ghiandola sopra i reni produce adrenalina?"
            Reponses := array{"La tiroide", "Le ghiandole surrenali", "L'ipofisi", "Il pancreas"}
            BonneReponse := 1
        question:
            Enonce := "Quale primo tratto dell'intestino segue lo stomaco?"
            Reponses := array{"Il colon", "Il duodeno", "L'appendice", "L'esofago"}
            BonneReponse := 1
        question:
            Enonce := "Quale parte del cervello gestisce equilibrio e coordinazione?"
            Reponses := array{"Il midollo spinale", "Il cervelletto", "L'ipofisi", "Il cervello"}
            BonneReponse := 1
        question:
            Enonce := "Quale ghiandola e detta ghiandola maestra?"
            Reponses := array{"La milza", "La tiroide", "Il pancreas", "L'ipofisi"}
            BonneReponse := 3
        question:
            Enonce := "Quale organo ricicla i vecchi globuli rossi?"
            Reponses := array{"Il pancreas", "Il fegato", "I reni", "La milza"}
            BonneReponse := 3
        question:
            Enonce := "Cosa trasmette i messaggi dal cervello al corpo?"
            Reponses := array{"Il midollo spinale", "Il nervo sciatico", "Il nervo ottico", "Il tendine"}
            BonneReponse := 0
        question:
            Enonce := "Di cosa sono fatti capelli e unghie?"
            Reponses := array{"La cheratina", "La melanina", "La cartilagine", "Il DNA"}
            BonneReponse := 0
        question:
            Enonce := "Cosa aiuta il sangue a coagulare?"
            Reponses := array{"Il DNA", "I globuli rossi", "I globuli bianchi", "Le piastrine"}
            BonneReponse := 3
        question:
            Enonce := "Quale copia del DNA serve a produrre proteine?"
            Reponses := array{"L'RNA", "Il DNA", "La cheratina", "L'insulina"}
            BonneReponse := 0
        question:
            Enonce := "Quale tessuto ammortizza le articolazioni?"
            Reponses := array{"Il tendine", "La cartilagine", "Il legamento", "Il midollo spinale"}
            BonneReponse := 1
        question:
            Enonce := "Quale parte trasparente copre il davanti dell'occhio?"
            Reponses := array{"La retina", "L'iride", "La cornea", "Il nervo ottico"}
            BonneReponse := 2
        question:
            Enonce := "Quale nervo collega l'occhio al cervello?"
            Reponses := array{"Il midollo spinale", "Il nervo sciatico", "Il nervo ottico", "La retina"}
            BonneReponse := 2
        question:
            Enonce := "Quale struttura cerebrale e chiave per la memoria?"
            Reponses := array{"L'ippocampo", "Il cervelletto", "La corteccia cerebrale", "Il midollo spinale"}
            BonneReponse := 0
        question:
            Enonce := "Quale strato esterno del cervello gestisce il pensiero?"
            Reponses := array{"Il midollo spinale", "Il cervelletto", "L'ippocampo", "La corteccia cerebrale"}
            BonneReponse := 3
        question:
            Enonce := "Dove i neuroni si trasmettono le informazioni?"
            Reponses := array{"La sinapsi", "I neuroni", "La corteccia cerebrale", "Il midollo spinale"}
            BonneReponse := 0
        question:
            Enonce := "Qual e l'unita filtrante del rene?"
            Reponses := array{"Un capillare", "Gli alveoli", "I villi intestinali", "Il nefrone"}
            BonneReponse := 3
        question:
            Enonce := "Quali piccole strutture assorbono i nutrienti nell'intestino?"
            Reponses := array{"Il nefrone", "Gli alveoli", "I villi intestinali", "Le papille gustative"}
            BonneReponse := 2
        question:
            Enonce := "Quali vasi piu piccoli collegano arterie e vene?"
            Reponses := array{"Un capillare", "L'aorta", "Una vena", "Un'arteria"}
            BonneReponse := 0
        question:
            Enonce := "Quale ormone dello stress rilasciano le surrenali?"
            Reponses := array{"L'insulina", "Il cortisolo", "Il testosterone", "La melanina"}
            BonneReponse := 1
        question:
            Enonce := "Quali strutture della lingua rilevano il gusto?"
            Reponses := array{"La sinapsi", "I villi intestinali", "Gli alveoli", "Le papille gustative"}
            BonneReponse := 3
        question:
            Enonce := "Quale liquido immunitario scorre fuori dal sangue?"
            Reponses := array{"Il plasma", "La linfa", "La bile", "La saliva"}
            BonneReponse := 1
        question:
            Enonce := "Quali vasi riportano il sangue al cuore?"
            Reponses := array{"L'aorta", "Un'arteria", "Una vena", "Un capillare"}
            BonneReponse := 2
        question:
            Enonce := "Quale organo della gola contiene le corde vocali?"
            Reponses := array{"La laringe", "La trachea", "L'esofago", "Il timpano"}
            BonneReponse := 0
        question:
            Enonce := "Quante ossa ha un adulto?"
            Reponses := array{"226", "186", "206", "256"}
            BonneReponse := 2
        question:
            Enonce := "Quanti denti ha un adulto (con i denti del giudizio)?"
            Reponses := array{"28", "32", "30", "36"}
            BonneReponse := 1
        question:
            Enonce := "Quanti denti da latte ha un bambino?"
            Reponses := array{"28", "16", "24", "20"}
            BonneReponse := 3
        question:
            Enonce := "Quante camere ha il cuore?"
            Reponses := array{"2", "4", "3", "6"}
            BonneReponse := 1
        question:
            Enonce := "Quanti litri di sangue ha un adulto (circa)?"
            Reponses := array{"2", "5", "8", "12"}
            BonneReponse := 1
        question:
            Enonce := "Quante paia di costole abbiamo?"
            Reponses := array{"14", "10", "12", "16"}
            BonneReponse := 2
        question:
            Enonce := "Quante vertebre ha la colonna (con sacro/coccige)?"
            Reponses := array{"24", "33", "29", "38"}
            BonneReponse := 1
        question:
            Enonce := "Quante paia di cromosomi ha l'uomo?"
            Reponses := array{"46", "21", "24", "23"}
            BonneReponse := 3
        question:
            Enonce := "Quanti muscoli ha il corpo (circa)?"
            Reponses := array{"200", "600", "400", "900"}
            BonneReponse := 1
        question:
            Enonce := "Quante ossa ha la mano?"
            Reponses := array{"19", "27", "23", "31"}
            BonneReponse := 1
        question:
            Enonce := "Quante ossa ha il piede?"
            Reponses := array{"26", "20", "24", "30"}
            BonneReponse := 0
        question:
            Enonce := "Quanti ossicini ha ogni orecchio?"
            Reponses := array{"3", "2", "4", "5"}
            BonneReponse := 0
        question:
            Enonce := "Quante paia di nervi cranici abbiamo?"
            Reponses := array{"10", "8", "12", "14"}
            BonneReponse := 2
        question:
            Enonce := "Quanti muscoli muovono ogni occhio?"
            Reponses := array{"8", "3", "4", "6"}
            BonneReponse := 3
        question:
            Enonce := "Quante ossa ha il cranio (circa)?"
            Reponses := array{"14", "22", "18", "26"}
            BonneReponse := 1

MakeAnatomieQuestions() : []question =
    MakeAnatomieQuestionsFR()
