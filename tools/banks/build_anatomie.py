#!/usr/bin/env python3
# Quizz "Anatomie" (texte) : questions numeriques (reponses = nombres,
# langue-neutre) + questions a reponse-organe (vocabulaire x5 langues).
import os, random, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from quiz_common import emit_custom, LANGS
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

ROOT = _ROOT

# vocabulaire (cle -> FR,EN,ES,DE,IT)
V = {
 "coeur": ("Le coeur","The heart","El corazon","Das Herz","Il cuore"),
 "cerveau": ("Le cerveau","The brain","El cerebro","Das Gehirn","Il cervello"),
 "foie": ("Le foie","The liver","El higado","Die Leber","Il fegato"),
 "poumons": ("Les poumons","The lungs","Los pulmones","Die Lunge","I polmoni"),
 "reins": ("Les reins","The kidneys","Los rinones","Die Nieren","I reni"),
 "estomac": ("L'estomac","The stomach","El estomago","Der Magen","Lo stomaco"),
 "pancreas": ("Le pancreas","The pancreas","El pancreas","Die Bauchspeicheldruese","Il pancreas"),
 "rate": ("La rate","The spleen","El bazo","Die Milz","La milza"),
 "peau": ("La peau","The skin","La piel","Die Haut","La pelle"),
 "intestin": ("L'intestin","The intestine","El intestino","Der Darm","L'intestino"),
 "vessie": ("La vessie","The bladder","La vejiga","Die Blase","La vescica"),
 "femur": ("Le femur","The femur","El femur","Der Oberschenkelknochen","Il femore"),
 "etrier": ("L'etrier","The stapes","El estribo","Der Steigbuegel","La staffa"),
 "crane": ("Le crane","The skull","El craneo","Der Schaedel","Il cranio"),
 "tibia": ("Le tibia","The tibia","La tibia","Das Schienbein","La tibia"),
 "gr": ("Les globules rouges","Red blood cells","Los globulos rojos","Rote Blutkoerperchen","I globuli rossi"),
 "gb": ("Les globules blancs","White blood cells","Los globulos blancos","Weisse Blutkoerperchen","I globuli bianchi"),
 "plaquettes": ("Les plaquettes","Platelets","Las plaquetas","Blutplaettchen","Le piastrine"),
 "melanine": ("La melanine","Melanin","La melanina","Melanin","La melanina"),
 "keratine": ("La keratine","Keratin","La queratina","Keratin","La cheratina"),
 "adn": ("L'ADN","DNA","El ADN","Die DNA","Il DNA"),
 "arn": ("L'ARN","RNA","El ARN","Die RNA","L'RNA"),
 "oreille": ("L'oreille interne","The inner ear","El oido interno","Das Innenohr","L'orecchio interno"),
 "diaphragme": ("Le diaphragme","The diaphragm","El diafragma","Das Zwerchfell","Il diaframma"),
 "fessier": ("Le grand fessier","The gluteus maximus","El gluteo mayor","Der grosse Gesaessmuskel","Il grande gluteo"),
 "biceps": ("Le biceps","The biceps","El biceps","Der Bizeps","Il bicipite"),
 "sciatique": ("Le nerf sciatique","The sciatic nerve","El nervio ciatico","Der Ischiasnerv","Il nervo sciatico"),
 "optique": ("Le nerf optique","The optic nerve","El nervio optico","Der Sehnerv","Il nervo ottico"),
 "iris": ("L'iris","The iris","El iris","Die Iris","L'iride"),
 "retine": ("La retine","The retina","La retina","Die Netzhaut","La retina"),
 "cornee": ("La cornee","The cornea","La cornea","Die Hornhaut","La cornea"),
 "tendon": ("Le tendon","The tendon","El tendon","Die Sehne","Il tendine"),
 "ligament": ("Le ligament","The ligament","El ligamento","Das Band","Il legamento"),
 "cartilage": ("Le cartilage","Cartilage","El cartilago","Der Knorpel","La cartilagine"),
 "insuline": ("L'insuline","Insulin","La insulina","Insulin","L'insulina"),
 "adrenaline": ("L'adrenaline","Adrenaline","La adrenalina","Adrenalin","L'adrenalina"),
 "thyroide": ("La thyroide","The thyroid","La tiroides","Die Schilddruese","La tiroide"),
 "hypophyse": ("L'hypophyse","The pituitary gland","La hipofisis","Die Hirnanhangdruese","L'ipofisi"),
 "cervelet": ("Le cervelet","The cerebellum","El cerebelo","Das Kleinhirn","Il cervelletto"),
 "moelle": ("La moelle epiniere","The spinal cord","La medula espinal","Das Rueckenmark","Il midollo spinale"),
 "aorte": ("L'aorte","The aorta","La aorta","Die Aorta","L'aorta"),
 "artere": ("Une artere","An artery","Una arteria","Eine Arterie","Un'arteria"),
 "veine": ("Une veine","A vein","Una vena","Eine Vene","Una vena"),
 "capillaire": ("Un capillaire","A capillary","Un capilar","Eine Kapillare","Un capillare"),
 "trachee": ("La trachee","The trachea","La traquea","Die Luftroehre","La trachea"),
 "alveoles": ("Les alveoles","The alveoli","Los alveolos","Die Lungenblaeschen","Gli alveoli"),
 "larynx": ("Le larynx","The larynx","La laringe","Der Kehlkopf","La laringe"),
 "oesophage": ("L'oesophage","The esophagus","El esofago","Die Speiseroehre","L'esofago"),
 "vesicule": ("La vesicule biliaire","The gallbladder","La vesicula biliar","Die Gallenblase","La cistifellea"),
 "appendice": ("L'appendice","The appendix","El apendice","Der Blinddarm","L'appendice"),
 "duodenum": ("Le duodenum","The duodenum","El duodeno","Der Zwoelffingerdarm","Il duodeno"),
 "colon": ("Le colon","The colon","El colon","Der Dickdarm","Il colon"),
 "tympan": ("Le tympan","The eardrum","El timpano","Das Trommelfell","Il timpano"),
 "cristallin": ("Le cristallin","The lens","El cristalino","Die Augenlinse","Il cristallino"),
 "pupille": ("La pupille","The pupil","La pupila","Die Pupille","La pupilla"),
 "papilles": ("Les papilles gustatives","The taste buds","Las papilas gustativas","Die Geschmacksknospen","Le papille gustative"),
 "clavicule": ("La clavicule","The clavicle","La clavicula","Das Schluesselbein","La clavicola"),
 "rotule": ("La rotule","The kneecap","La rotula","Die Kniescheibe","La rotula"),
 "mandibule": ("La mandibule","The jawbone","La mandibula","Der Unterkiefer","La mandibola"),
 "vertebres": ("Les vertebres","The vertebrae","Las vertebras","Die Wirbel","Le vertebre"),
 "cotes": ("Les cotes","The ribs","Las costillas","Die Rippen","Le costole"),
 "phalanges": ("Les phalanges","The phalanges","Las falanges","Die Fingerknochen","Le falangi"),
 "calcium": ("Le calcium","Calcium","El calcio","Kalzium","Il calcio"),
 "collagene": ("Le collagene","Collagen","El colageno","Kollagen","Il collagene"),
 "hemoglobine": ("L'hemoglobine","Hemoglobin","La hemoglobina","Haemoglobin","L'emoglobina"),
 "plasma": ("Le plasma","Plasma","El plasma","Das Plasma","Il plasma"),
 "lymphe": ("La lymphe","Lymph","La linfa","Die Lymphe","La linfa"),
 "anticorps": ("Les anticorps","Antibodies","Los anticuerpos","Antikoerper","Gli anticorpi"),
 "neurones": ("Les neurones","Neurons","Las neuronas","Neuronen","I neuroni"),
 "synapse": ("La synapse","The synapse","La sinapsis","Die Synapse","La sinapsi"),
 "cortex": ("Le cortex cerebral","The cerebral cortex","La corteza cerebral","Die Hirnrinde","La corteccia cerebrale"),
 "hippocampe": ("L'hippocampe","The hippocampus","El hipocampo","Der Hippocampus","L'ippocampo"),
 "salive": ("La salive","Saliva","La saliva","Der Speichel","La saliva"),
 "bile": ("La bile","Bile","La bilis","Die Galle","La bile"),
 "enzymes": ("Les enzymes","Enzymes","Las enzimas","Enzyme","Gli enzimi"),
 "testosterone": ("La testosterone","Testosterone","La testosterona","Testosteron","Il testosterone"),
 "cortisol": ("Le cortisol","Cortisol","El cortisol","Cortisol","Il cortisolo"),
 "surrenales": ("Les glandes surrenales","The adrenal glands","Las glandulas suprarrenales","Die Nebennieren","Le ghiandole surrenali"),
 "nephron": ("Le nephron","The nephron","La nefrona","Das Nephron","Il nefrone"),
 "villosites": ("Les villosites intestinales","The intestinal villi","Las vellosidades intestinales","Die Darmzotten","I villi intestinali"),
}

# questions a reponse-organe : (Q FR,EN,ES,DE,IT, cle_reponse, [3 cles distracteurs], palier)
W = [
 (("Quel organe pompe le sang ?","Which organ pumps blood?","Que organo bombea la sangre?","Welches Organ pumpt das Blut?","Quale organo pompa il sangue?"),"coeur",["poumons","foie","reins"],0),
 (("Quel organe permet de respirer ?","Which organ lets you breathe?","Que organo permite respirar?","Mit welchem Organ atmet man?","Quale organo permette di respirare?"),"poumons",["coeur","estomac","rate"],0),
 (("Quel est le plus grand organe du corps ?","What is the largest organ of the body?","Cual es el organo mas grande del cuerpo?","Was ist das groesste Organ des Koerpers?","Qual e l'organo piu grande del corpo?"),"peau",["foie","cerveau","intestin"],0),
 (("Quel organe controle tout le corps ?","Which organ controls the whole body?","Que organo controla todo el cuerpo?","Welches Organ steuert den ganzen Koerper?","Quale organo controlla tutto il corpo?"),"cerveau",["coeur","foie","moelle"],0),
 (("Quel organe digere les aliments avec de l'acide ?","Which organ digests food with acid?","Que organo digiere la comida con acido?","Welches Organ verdaut Nahrung mit Saeure?","Quale organo digerisce il cibo con l'acido?"),"estomac",["intestin","foie","pancreas"],0),
 (("Quels organes filtrent le sang ?","Which organs filter the blood?","Que organos filtran la sangre?","Welche Organe filtern das Blut?","Quali organi filtrano il sangue?"),"reins",["poumons","rate","foie"],0),
 (("Quel organe produit la bile ?","Which organ produces bile?","Que organo produce la bilis?","Welches Organ produziert die Galle?","Quale organo produce la bile?"),"foie",["pancreas","estomac","rate"],0),
 (("Quel organe stocke l'urine ?","Which organ stores urine?","Que organo almacena la orina?","Welches Organ speichert den Urin?","Quale organo immagazzina l'urina?"),"vessie",["reins","intestin","estomac"],0),
 (("Quel est l'os le plus long du corps ?","What is the longest bone in the body?","Cual es el hueso mas largo del cuerpo?","Was ist der laengste Knochen des Koerpers?","Qual e l'osso piu lungo del corpo?"),"femur",["tibia","crane","etrier"],0),
 (("Qu'est-ce qui transporte l'oxygene dans le sang ?","What carries oxygen in the blood?","Que transporta el oxigeno en la sangre?","Was transportiert Sauerstoff im Blut?","Cosa trasporta l'ossigeno nel sangue?"),"gr",["gb","plaquettes","adn"],0),
 (("Qu'est-ce qui combat les infections ?","What fights infections?","Que combate las infecciones?","Was bekaempft Infektionen?","Cosa combatte le infezioni?"),"gb",["gr","plaquettes","melanine"],0),
 (("Quelle molecule porte l'heredite ?","Which molecule carries heredity?","Que molecula lleva la herencia?","Welches Molekuel traegt die Erbinformation?","Quale molecola porta l'eredita?"),"adn",["arn","melanine","keratine"],0),
 (("Quelle hormone regule le sucre dans le sang ?","Which hormone regulates blood sugar?","Que hormona regula el azucar en sangre?","Welches Hormon reguliert den Blutzucker?","Quale ormone regola lo zucchero nel sangue?"),"insuline",["adrenaline","melanine","keratine"],0),
 (("Quelle est la plus grande artere du corps ?","What is the largest artery in the body?","Cual es la arteria mas grande del cuerpo?","Was ist die groesste Arterie des Koerpers?","Qual e l'arteria piu grande del corpo?"),"aorte",["veine","trachee","oesophage"],0),
 (("Par quel tube passe l'air vers les poumons ?","Through which tube does air reach the lungs?","Por que tubo pasa el aire hacia los pulmones?","Durch welche Roehre gelangt Luft in die Lunge?","Attraverso quale tubo passa l'aria verso i polmoni?"),"trachee",["oesophage","aorte","veine"],0),
 (("Par quel tube passent les aliments vers l'estomac ?","Through which tube does food reach the stomach?","Por que tubo pasan los alimentos al estomago?","Durch welche Roehre gelangt Nahrung in den Magen?","Attraverso quale tubo passa il cibo verso lo stomaco?"),"oesophage",["trachee","aorte","larynx"],0),
 (("Quel liquide rouge transporte l'oxygene ?","Which red protein carries oxygen?","Que proteina roja transporta el oxigeno?","Welches rote Eiweiss transportiert Sauerstoff?","Quale proteina rossa trasporta l'ossigeno?"),"hemoglobine",["melanine","keratine","collagene"],0),
 (("Quelles cellules transmettent les signaux nerveux ?","Which cells transmit nerve signals?","Que celulas transmiten las senales nerviosas?","Welche Zellen leiten Nervensignale weiter?","Quali cellule trasmettono i segnali nervosi?"),"neurones",["gr","gb","plaquettes"],0),
 (("Quel mineral rend les os solides ?","Which mineral makes bones strong?","Que mineral hace fuertes los huesos?","Welches Mineral macht Knochen stark?","Quale minerale rende forti le ossa?"),"calcium",["melanine","keratine","collagene"],0),
 (("Quelle membrane vibre dans l'oreille avec le son ?","Which membrane vibrates with sound in the ear?","Que membrana vibra con el sonido en el oido?","Welche Membran schwingt im Ohr mit dem Schall?","Quale membrana vibra con il suono nell'orecchio?"),"tympan",["iris","retine","cornee"],0),
 (("Quelle hormone fait battre le coeur en cas de stress ?","Which hormone speeds the heart under stress?","Que hormona acelera el corazon con el estres?","Welches Hormon beschleunigt das Herz bei Stress?","Quale ormone accelera il cuore sotto stress?"),"adrenaline",["insuline","cortisol","testosterone"],0),
 # ---- palier 1 ----
 (("Quel organe produit l'insuline ?","Which organ produces insulin?","Que organo produce la insulina?","Welches Organ produziert Insulin?","Quale organo produce l'insulina?"),"pancreas",["foie","reins","thyroide"],1),
 (("Quel est l'os le plus petit du corps ?","What is the smallest bone in the body?","Cual es el hueso mas pequeno del cuerpo?","Was ist der kleinste Knochen des Koerpers?","Qual e l'osso piu piccolo del corpo?"),"etrier",["femur","tibia","crane"],1),
 (("Quel muscle principal sert a respirer ?","Which main muscle is used for breathing?","Que musculo principal sirve para respirar?","Welcher Hauptmuskel dient der Atmung?","Quale muscolo principale serve per respirare?"),"diaphragme",["biceps","fessier","coeur"],1),
 (("Quel est le plus grand muscle du corps ?","What is the largest muscle of the body?","Cual es el musculo mas grande del cuerpo?","Was ist der groesste Muskel des Koerpers?","Qual e il muscolo piu grande del corpo?"),"fessier",["biceps","diaphragme","coeur"],1),
 (("Ou se trouve le sens de l'equilibre ?","Where is the sense of balance located?","Donde esta el sentido del equilibrio?","Wo sitzt der Gleichgewichtssinn?","Dove si trova il senso dell'equilibrio?"),"oreille",["cervelet","retine","moelle"],1),
 (("Quel est le nerf le plus long du corps ?","What is the longest nerve in the body?","Cual es el nervio mas largo del cuerpo?","Was ist der laengste Nerv des Koerpers?","Qual e il nervo piu lungo del corpo?"),"sciatique",["optique","moelle","tendon"],1),
 (("Quelle partie de l'oeil est coloree ?","Which part of the eye is colored?","Que parte del ojo tiene color?","Welcher Teil des Auges ist gefaerbt?","Quale parte dell'occhio e colorata?"),"iris",["retine","cornee","optique"],1),
 (("Quelle partie de l'oeil capte la lumiere ?","Which part of the eye captures light?","Que parte del ojo capta la luz?","Welcher Teil des Auges nimmt Licht auf?","Quale parte dell'occhio capta la luce?"),"retine",["iris","cornee","optique"],1),
 (("Qu'est-ce qui relie le muscle a l'os ?","What connects muscle to bone?","Que une el musculo al hueso?","Was verbindet Muskel und Knochen?","Cosa collega il muscolo all'osso?"),"tendon",["ligament","cartilage","moelle"],1),
 (("Qu'est-ce qui relie les os entre eux ?","What connects bones together?","Que une los huesos entre si?","Was verbindet Knochen miteinander?","Cosa collega le ossa tra loro?"),"ligament",["tendon","cartilage","etrier"],1),
 (("Quel pigment colore la peau ?","Which pigment colors the skin?","Que pigmento da color a la piel?","Welches Pigment faerbt die Haut?","Quale pigmento colora la pelle?"),"melanine",["keratine","insuline","adrenaline"],1),
 (("Quelle hormone est liberee par la peur ?","Which hormone is released by fear?","Que hormona se libera con el miedo?","Welches Hormon wird bei Angst ausgeschuettet?","Quale ormone viene rilasciato dalla paura?"),"adrenaline",["insuline","melanine","keratine"],1),
 (("Quelle glande regule le metabolisme (cou) ?","Which gland regulates metabolism (neck)?","Que glandula regula el metabolismo (cuello)?","Welche Druese reguliert den Stoffwechsel (Hals)?","Quale ghiandola regola il metabolismo (collo)?"),"thyroide",["hypophyse","pancreas","rate"],1),
 (("Ou se fait l'echange d'oxygene dans les poumons ?","Where does oxygen exchange happen in the lungs?","Donde ocurre el intercambio de oxigeno en los pulmones?","Wo findet der Sauerstoffaustausch in der Lunge statt?","Dove avviene lo scambio di ossigeno nei polmoni?"),"alveoles",["trachee","larynx","vesicule"],1),
 (("Quel organe stocke la bile produite par le foie ?","Which organ stores the bile made by the liver?","Que organo almacena la bilis del higado?","Welches Organ speichert die Galle der Leber?","Quale organo immagazzina la bile prodotta dal fegato?"),"vesicule",["appendice","rate","pancreas"],1),
 (("Quel os protege le genou ?","Which bone protects the knee?","Que hueso protege la rodilla?","Welcher Knochen schuetzt das Knie?","Quale osso protegge il ginocchio?"),"rotule",["clavicule","mandibule","femur"],1),
 (("Quelle partie de l'oeil fait la mise au point ?","Which part of the eye focuses light?","Que parte del ojo enfoca la luz?","Welcher Teil des Auges stellt scharf?","Quale parte dell'occhio mette a fuoco?"),"cristallin",["pupille","iris","cornee"],1),
 (("Quel organe creux contient l'appendice ?","Which part of the gut bears the appendix?","Que parte del intestino tiene el apendice?","An welchem Darmteil sitzt der Blinddarm?","A quale parte dell'intestino e attaccata l'appendice?"),"colon",["duodenum","oesophage","estomac"],1),
 (("Quelle proteine donne sa souplesse a la peau ?","Which protein gives skin its flexibility?","Que proteina da flexibilidad a la piel?","Welches Protein macht die Haut elastisch?","Quale proteina rende elastica la pelle?"),"collagene",["keratine","melanine","hemoglobine"],1),
 (("Quel est le liquide jaune du sang sans les cellules ?","What is the yellow fluid part of blood?","Cual es la parte liquida amarilla de la sangre?","Was ist der gelbe fluessige Teil des Blutes?","Qual e la parte liquida gialla del sangue?"),"plasma",["lymphe","bile","salive"],1),
 (("Que produisent les globules blancs pour neutraliser les microbes ?","What do white blood cells make to fight germs?","Que producen los globulos blancos contra los microbios?","Was bilden weisse Blutkoerperchen gegen Keime?","Cosa producono i globuli bianchi contro i microbi?"),"anticorps",["enzymes","hemoglobine","collagene"],1),
 (("Quelle glande au-dessus des reins produit l'adrenaline ?","Which gland above the kidneys makes adrenaline?","Que glandula sobre los rinones produce adrenalina?","Welche Druese ueber den Nieren bildet Adrenalin?","Quale ghiandola sopra i reni produce adrenalina?"),"surrenales",["thyroide","hypophyse","pancreas"],1),
 (("Quel premier segment de l'intestin suit l'estomac ?","Which first gut segment follows the stomach?","Que primer tramo del intestino sigue al estomago?","Welcher erste Darmabschnitt folgt dem Magen?","Quale primo tratto dell'intestino segue lo stomaco?"),"duodenum",["colon","appendice","oesophage"],1),
 # ---- palier 2 ----
 (("Quelle partie du cerveau gere l'equilibre et la coordination ?","Which brain part manages balance and coordination?","Que parte del cerebro gestiona el equilibrio y la coordinacion?","Welcher Hirnteil steuert Gleichgewicht und Koordination?","Quale parte del cervello gestisce equilibrio e coordinazione?"),"cervelet",["moelle","hypophyse","cerveau"],2),
 (("Quelle glande est surnommee la glande maitresse ?","Which gland is called the master gland?","Que glandula es llamada la glandula maestra?","Welche Druese gilt als Hauptdruese?","Quale ghiandola e detta ghiandola maestra?"),"hypophyse",["thyroide","pancreas","rate"],2),
 (("Quel organe recycle les vieux globules rouges ?","Which organ recycles old red blood cells?","Que organo recicla los globulos rojos viejos?","Welches Organ recycelt alte rote Blutkoerperchen?","Quale organo ricicla i vecchi globuli rossi?"),"rate",["foie","reins","pancreas"],2),
 (("Qu'est-ce qui transmet les messages du cerveau au corps ?","What transmits messages from brain to body?","Que transmite los mensajes del cerebro al cuerpo?","Was uebertraegt Signale vom Gehirn zum Koerper?","Cosa trasmette i messaggi dal cervello al corpo?"),"moelle",["sciatique","optique","tendon"],2),
 (("De quoi sont faits les cheveux et les ongles ?","What are hair and nails made of?","De que estan hechos el pelo y las unas?","Woraus bestehen Haare und Naegel?","Di cosa sono fatti capelli e unghie?"),"keratine",["melanine","cartilage","adn"],2),
 (("Qu'est-ce qui aide le sang a coaguler ?","What helps blood to clot?","Que ayuda a coagular la sangre?","Was hilft dem Blut zu gerinnen?","Cosa aiuta il sangue a coagulare?"),"plaquettes",["gr","gb","adn"],2),
 (("Quelle copie de l'ADN sert a fabriquer les proteines ?","Which DNA copy is used to make proteins?","Que copia del ADN sirve para fabricar proteinas?","Welche DNA-Kopie dient der Proteinherstellung?","Quale copia del DNA serve a produrre proteine?"),"arn",["adn","keratine","insuline"],2),
 (("Quel tissu amortit les articulations ?","Which tissue cushions the joints?","Que tejido amortigua las articulaciones?","Welches Gewebe daempft die Gelenke?","Quale tessuto ammortizza le articolazioni?"),"cartilage",["tendon","ligament","moelle"],2),
 (("Quelle partie transparente couvre le devant de l'oeil ?","Which transparent part covers the front of the eye?","Que parte transparente cubre el frente del ojo?","Welcher durchsichtige Teil bedeckt das Auge vorne?","Quale parte trasparente copre il davanti dell'occhio?"),"cornee",["iris","retine","optique"],2),
 (("Quel nerf relie l'oeil au cerveau ?","Which nerve connects the eye to the brain?","Que nervio conecta el ojo con el cerebro?","Welcher Nerv verbindet Auge und Gehirn?","Quale nervo collega l'occhio al cervello?"),"optique",["sciatique","moelle","retine"],2),
 (("Quelle structure du cerveau est cle pour la memoire ?","Which brain structure is key for memory?","Que estructura cerebral es clave para la memoria?","Welche Hirnstruktur ist wichtig fuer das Gedaechtnis?","Quale struttura cerebrale e chiave per la memoria?"),"hippocampe",["cervelet","cortex","moelle"],2),
 (("Quelle couche externe du cerveau gere la pensee ?","Which outer brain layer handles thinking?","Que capa externa del cerebro gestiona el pensamiento?","Welche aeussere Hirnschicht steuert das Denken?","Quale strato esterno del cervello gestisce il pensiero?"),"cortex",["cervelet","hippocampe","moelle"],2),
 (("Ou les neurones se transmettent-ils l'information ?","Where do neurons pass information to each other?","Donde se transmiten la informacion las neuronas?","Wo geben Neuronen Informationen weiter?","Dove i neuroni si trasmettono le informazioni?"),"synapse",["neurones","cortex","moelle"],2),
 (("Quelle est l'unite filtrante du rein ?","What is the filtering unit of the kidney?","Cual es la unidad filtrante del rinon?","Was ist die Filtereinheit der Niere?","Qual e l'unita filtrante del rene?"),"nephron",["alveoles","villosites","capillaire"],2),
 (("Quelles petites structures absorbent les nutriments dans l'intestin ?","Which tiny structures absorb nutrients in the gut?","Que pequenas estructuras absorben los nutrientes en el intestino?","Welche kleinen Strukturen nehmen Naehrstoffe im Darm auf?","Quali piccole strutture assorbono i nutrienti nell'intestino?"),"villosites",["alveoles","nephron","papilles"],2),
 (("Quels plus petits vaisseaux relient arteres et veines ?","Which smallest vessels link arteries and veins?","Que vasos mas pequenos unen arterias y venas?","Welche kleinsten Gefaesse verbinden Arterien und Venen?","Quali vasi piu piccoli collegano arterie e vene?"),"capillaire",["aorte","veine","artere"],2),
 (("Quelle hormone du stress est liberee par les surrenales ?","Which stress hormone do the adrenals release?","Que hormona del estres liberan las suprarrenales?","Welches Stresshormon schuetten die Nebennieren aus?","Quale ormone dello stress rilasciano le surrenali?"),"cortisol",["insuline","testosterone","melanine"],2),
 (("Quelles structures de la langue detectent les gouts ?","Which tongue structures detect taste?","Que estructuras de la lengua detectan el sabor?","Welche Zungenstrukturen erkennen Geschmack?","Quali strutture della lingua rilevano il gusto?"),"papilles",["villosites","alveoles","synapse"],2),
 (("Quel liquide du systeme immunitaire circule hors du sang ?","Which immune fluid flows outside the blood?","Que liquido inmunitario circula fuera de la sangre?","Welche Immunfluessigkeit fliesst ausserhalb des Blutes?","Quale liquido immunitario scorre fuori dal sangue?"),"lymphe",["plasma","bile","salive"],2),
 (("Quels vaisseaux ramenent le sang vers le coeur ?","Which vessels carry blood back to the heart?","Que vasos llevan la sangre de vuelta al corazon?","Welche Gefaesse fuehren das Blut zum Herzen zurueck?","Quali vasi riportano il sangue al cuore?"),"veine",["artere","aorte","capillaire"],2),
 (("Quel organe de la gorge contient les cordes vocales ?","Which throat organ holds the vocal cords?","Que organo de la garganta tiene las cuerdas vocales?","Welches Halsorgan enthaelt die Stimmbaender?","Quale organo della gola contiene le corde vocali?"),"larynx",["trachee","oesophage","tympan"],2),
]

# questions numeriques : (Q FR,EN,ES,DE,IT, bonne, [3 distracteurs], palier)
N = [
 (("Combien d'os a un adulte ?","How many bones does an adult have?","Cuantos huesos tiene un adulto?","Wie viele Knochen hat ein Erwachsener?","Quante ossa ha un adulto?"),"206",["186","226","256"],0),
 (("Combien de dents a un adulte (avec les dents de sagesse) ?","How many teeth does an adult have (with wisdom teeth)?","Cuantos dientes tiene un adulto (con muelas del juicio)?","Wie viele Zaehne hat ein Erwachsener (mit Weisheitszaehnen)?","Quanti denti ha un adulto (con i denti del giudizio)?"),"32",["28","30","36"],0),
 (("Combien de dents de lait a un enfant ?","How many baby teeth does a child have?","Cuantos dientes de leche tiene un nino?","Wie viele Milchzaehne hat ein Kind?","Quanti denti da latte ha un bambino?"),"20",["16","24","28"],0),
 (("Combien de chambres a le coeur ?","How many chambers does the heart have?","Cuantas cavidades tiene el corazon?","Wie viele Kammern hat das Herz?","Quante camere ha il cuore?"),"4",["2","3","6"],0),
 (("Combien de litres de sang a un adulte (environ) ?","About how many liters of blood does an adult have?","Cuantos litros de sangre tiene un adulto (aprox.)?","Wie viele Liter Blut hat ein Erwachsener (ca.)?","Quanti litri di sangue ha un adulto (circa)?"),"5",["2","8","12"],0),
 (("Combien de paires de cotes a-t-on ?","How many pairs of ribs do we have?","Cuantos pares de costillas tenemos?","Wie viele Rippenpaare haben wir?","Quante paia di costole abbiamo?"),"12",["10","14","16"],1),
 (("Combien de vertebres a la colonne (avec sacrum/coccyx) ?","How many vertebrae in the spine (incl. sacrum/coccyx)?","Cuantas vertebras tiene la columna (con sacro/coxis)?","Wie viele Wirbel hat die Wirbelsaeule (inkl. Kreuz-/Steissbein)?","Quante vertebre ha la colonna (con sacro/coccige)?"),"33",["24","29","38"],1),
 (("Combien de paires de chromosomes a l'humain ?","How many pairs of chromosomes do humans have?","Cuantos pares de cromosomas tiene el humano?","Wie viele Chromosomenpaare hat der Mensch?","Quante paia di cromosomi ha l'uomo?"),"23",["21","24","46"],1),
 (("Combien de muscles a le corps humain (environ) ?","About how many muscles does the human body have?","Cuantos musculos tiene el cuerpo (aprox.)?","Wie viele Muskeln hat der Koerper (ca.)?","Quanti muscoli ha il corpo (circa)?"),"600",["200","400","900"],1),
 (("Combien d'os a la main ?","How many bones are in the hand?","Cuantos huesos tiene la mano?","Wie viele Knochen hat die Hand?","Quante ossa ha la mano?"),"27",["19","23","31"],1),
 (("Combien d'os a le pied ?","How many bones are in the foot?","Cuantos huesos tiene el pie?","Wie viele Knochen hat der Fuss?","Quante ossa ha il piede?"),"26",["20","24","30"],2),
 (("Combien d'osselets a chaque oreille ?","How many ossicles are in each ear?","Cuantos huesecillos tiene cada oido?","Wie viele Gehoerknoechelchen hat jedes Ohr?","Quanti ossicini ha ogni orecchio?"),"3",["2","4","5"],2),
 (("Combien de paires de nerfs craniens a-t-on ?","How many pairs of cranial nerves do we have?","Cuantos pares de nervios craneales tenemos?","Wie viele Hirnnervenpaare haben wir?","Quante paia di nervi cranici abbiamo?"),"12",["8","10","14"],2),
 (("Combien de muscles bougent chaque oeil ?","How many muscles move each eye?","Cuantos musculos mueven cada ojo?","Wie viele Muskeln bewegen jedes Auge?","Quanti muscoli muovono ogni occhio?"),"6",["3","4","8"],2),
 (("Combien d'os a le crane (environ) ?","About how many bones are in the skull?","Cuantos huesos tiene el craneo (aprox.)?","Wie viele Knochen hat der Schaedel (ca.)?","Quante ossa ha il cranio (circa)?"),"22",["14","18","26"],2),
]

rows = {lang: [] for lang in LANGS}
diffs = []
for q, key, dks, tier in W:
    qq = dict(zip(LANGS, q))
    rng = random.Random("anat-" + key + qq["EN"][:12])
    answers = [key] + dks
    correct = rng.randrange(4)
    answers[0], answers[correct] = answers[correct], answers[0]
    ci = answers.index(key)
    for li, lang in enumerate(LANGS):
        rows[lang].append((qq[lang], [V[a][li] for a in answers], ci))
    diffs.append(tier)
for q, good, ds, tier in N:
    qq = dict(zip(LANGS, q))
    rng = random.Random("anatn-" + good + qq["EN"][:12])
    answers = [good] + ds
    correct = rng.randrange(4)
    answers[0], answers[correct] = answers[correct], answers[0]
    ci = answers.index(good)
    for lang in LANGS:
        rows[lang].append((qq[lang], list(answers), ci))
    diffs.append(tier)

emit_custom(f"{ROOT}/verse/anatomie_bank.verse",
            "anatomie_bank.verse — Quizz ANATOMIE (corps humain)",
            "AnatomieDiff", "Anatomie", rows, diffs)
print("Paliers : %d/%d/%d" % (diffs.count(0), diffs.count(1), diffs.count(2)))
