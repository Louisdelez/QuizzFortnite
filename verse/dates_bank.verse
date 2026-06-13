using { /Verse.org/Assets }

# dates_bank.verse — Quizz DATES HISTORIQUES (en quelle annee...)
# GENERE — NE PAS EDITER A LA MAIN.

DatesDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}

MakeDatesQuestionsFR() : []question =
    array:
        question:
            Enonce := "En quelle annee : la Revolution francaise ?"
            Reponses := array{"1789", "1796", "1769", "1787"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : la chute du mur de Berlin ?"
            Reponses := array{"1990", "1986", "1984", "1989"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : le debut de la Premiere Guerre mondiale ?"
            Reponses := array{"1912", "1916", "1944", "1914"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : la fin de la Premiere Guerre mondiale ?"
            Reponses := array{"1916", "1888", "1913", "1918"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : le debut de la Seconde Guerre mondiale ?"
            Reponses := array{"1919", "1942", "1939", "1969"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee : la fin de la Seconde Guerre mondiale ?"
            Reponses := array{"1945", "1975", "1944", "1947"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : le premier pas sur la Lune ?"
            Reponses := array{"1971", "1966", "1939", "1969"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : la decouverte de l'Amerique ?"
            Reponses := array{"1462", "1502", "1512", "1492"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : les attentats du 11 septembre ?"
            Reponses := array{"2021", "2001", "2003", "2006"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : le couronnement de Charlemagne ?"
            Reponses := array{"799", "807", "815", "800"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : le sacre de Napoleon ?"
            Reponses := array{"1803", "1804", "1789", "1807"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : le naufrage du Titanic ?"
            Reponses := array{"1914", "1882", "1902", "1912"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : l'independance des Etats-Unis ?"
            Reponses := array{"1776", "1756", "1761", "1796"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : l'inauguration de la tour Eiffel ?"
            Reponses := array{"1889", "1894", "1890", "1874"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : les premiers JO modernes ?"
            Reponses := array{"1891", "1901", "1866", "1896"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : la victoire de la France au Mondial ?"
            Reponses := array{"1998", "1996", "1999", "2003"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : la mise en circulation de l'euro ?"
            Reponses := array{"1972", "1995", "2002", "2000"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee : la chute de l'Empire romain d'Occident ?"
            Reponses := array{"483", "456", "476", "473"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee : la bataille d'Hastings ?"
            Reponses := array{"1071", "1076", "1066", "1065"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee : la Grande Charte (Magna Carta) ?"
            Reponses := array{"1216", "1230", "1215", "1222"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee : l'arrivee de la peste noire en Europe ?"
            Reponses := array{"1367", "1332", "1327", "1347"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : le traite de Versailles ?"
            Reponses := array{"1916", "1919", "1934", "1924"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : le debarquement de Normandie ?"
            Reponses := array{"1949", "1944", "1974", "1939"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : l'assassinat de JFK ?"
            Reponses := array{"1963", "1960", "1961", "1956"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : la liberation de Nelson Mandela ?"
            Reponses := array{"1995", "1987", "1989", "1990"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : la bataille de Marignan ?"
            Reponses := array{"1515", "1512", "1505", "1522"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : la prise de la Bastille ?"
            Reponses := array{"1779", "1788", "1789", "1799"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee : la bataille d'Austerlitz ?"
            Reponses := array{"1807", "1812", "1775", "1805"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : la bataille de Waterloo ?"
            Reponses := array{"1795", "1785", "1815", "1808"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee : le debut de la guerre de Secession ?"
            Reponses := array{"1861", "1858", "1863", "1881"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : l'abolition de l'esclavage en France ?"
            Reponses := array{"1845", "1848", "1849", "1818"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : la Commune de Paris ?"
            Reponses := array{"1871", "1866", "1841", "1876"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : la revolution russe ?"
            Reponses := array{"1917", "1920", "1947", "1910"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : le krach de Wall Street ?"
            Reponses := array{"1929", "1944", "1914", "1927"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : l'arrivee d'Hitler au pouvoir ?"
            Reponses := array{"1933", "1935", "1928", "1903"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : le debut de la guerre d'Espagne ?"
            Reponses := array{"1937", "1906", "1935", "1936"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : l'independance de l'Inde ?"
            Reponses := array{"1917", "1947", "1949", "1932"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : la creation de l'Etat d'Israel ?"
            Reponses := array{"1948", "1946", "1953", "1918"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : la creation de l'OTAN ?"
            Reponses := array{"1949", "1942", "1950", "1934"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : la mort de Staline ?"
            Reponses := array{"1973", "1946", "1960", "1953"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : le traite de Rome ?"
            Reponses := array{"1952", "1957", "1972", "1927"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : le lancement de Spoutnik ?"
            Reponses := array{"1952", "1967", "1957", "1954"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee : la construction du mur de Berlin ?"
            Reponses := array{"1961", "1946", "1941", "1963"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : la crise des missiles de Cuba ?"
            Reponses := array{"1962", "1965", "1963", "1942"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : Mai 68 ?"
            Reponses := array{"1969", "1968", "1966", "1975"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : le festival de Woodstock ?"
            Reponses := array{"1970", "1939", "1969", "1962"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee : la fin de la guerre du Vietnam ?"
            Reponses := array{"1982", "1975", "1977", "1995"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : la catastrophe de Tchernobyl ?"
            Reponses := array{"1971", "1991", "1986", "1966"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee : la guerre du Golfe ?"
            Reponses := array{"1981", "1989", "1991", "1976"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee : la dissolution de l'URSS ?"
            Reponses := array{"1986", "1992", "1961", "1991"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : le traite de Maastricht ?"
            Reponses := array{"1992", "1985", "1993", "2012"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : la retrocession de Hong Kong ?"
            Reponses := array{"1967", "2004", "2027", "1997"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : le referendum du Brexit ?"
            Reponses := array{"2013", "2014", "2016", "2026"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee : la pandemie de COVID-19 declaree ?"
            Reponses := array{"2050", "2021", "2020", "1990"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee : la fondation de Rome ?"
            Reponses := array{"752 av. J.-C.", "750 av. J.-C.", "758 av. J.-C.", "753 av. J.-C."}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : la bataille de Marathon ?"
            Reponses := array{"492 av. J.-C.", "490 av. J.-C.", "491 av. J.-C.", "485 av. J.-C."}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : la mort d'Alexandre le Grand ?"
            Reponses := array{"323 av. J.-C.", "303 av. J.-C.", "313 av. J.-C.", "343 av. J.-C."}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : l'assassinat de Jules Cesar ?"
            Reponses := array{"44 av. J.-C.", "45 av. J.-C.", "39 av. J.-C.", "54 av. J.-C."}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : l'eruption du Vesuve (Pompei) ?"
            Reponses := array{"99", "79", "81", "94"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : l'edit de Milan ?"
            Reponses := array{"293", "333", "306", "313"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : l'Hegire ?"
            Reponses := array{"619", "592", "622", "602"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee : la bataille de Poitiers (Charles Martel) ?"
            Reponses := array{"737", "702", "732", "762"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee : la premiere croisade ?"
            Reponses := array{"1111", "1096", "1093", "1066"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : la chute de Constantinople ?"
            Reponses := array{"1453", "1463", "1451", "1458"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : le massacre de la Saint-Barthelemy ?"
            Reponses := array{"1572", "1569", "1542", "1582"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : l'edit de Nantes ?"
            Reponses := array{"1599", "1598", "1601", "1600"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : le voyage du Mayflower ?"
            Reponses := array{"1600", "1620", "1621", "1650"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : la grande peste de Londres ?"
            Reponses := array{"1663", "1635", "1660", "1665"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : la publication des Principia de Newton ?"
            Reponses := array{"1684", "1682", "1677", "1687"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : l'abolition de l'esclavage au Royaume-Uni ?"
            Reponses := array{"1818", "1833", "1813", "1848"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : la publication de L'Origine des especes ?"
            Reponses := array{"1861", "1859", "1844", "1854"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : l'ouverture du canal de Suez ?"
            Reponses := array{"1869", "1889", "1874", "1872"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : le brevet du telephone ?"
            Reponses := array{"1876", "1873", "1886", "1883"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee : le premier vol des freres Wright ?"
            Reponses := array{"1906", "1903", "1904", "1902"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : la decouverte de la penicilline ?"
            Reponses := array{"1930", "1928", "1918", "1913"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : la decouverte de la structure de l'ADN ?"
            Reponses := array{"1952", "1953", "1968", "1983"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee : la premiere greffe du coeur ?"
            Reponses := array{"1982", "1987", "1974", "1967"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : l'invention du World Wide Web ?"
            Reponses := array{"1994", "1979", "1989", "1959"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee : le lancement du premier iPhone ?"
            Reponses := array{"2000", "2004", "1997", "2007"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee : la creation du Bitcoin ?"
            Reponses := array{"1979", "2016", "2009", "2007"}
            BonneReponse := 2

MakeDatesQuestionsEN() : []question =
    array:
        question:
            Enonce := "In what year: the French Revolution?"
            Reponses := array{"1789", "1796", "1769", "1787"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the fall of the Berlin Wall?"
            Reponses := array{"1990", "1986", "1984", "1989"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the start of World War I?"
            Reponses := array{"1912", "1916", "1944", "1914"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the end of World War I?"
            Reponses := array{"1916", "1888", "1913", "1918"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the start of World War II?"
            Reponses := array{"1919", "1942", "1939", "1969"}
            BonneReponse := 2
        question:
            Enonce := "In what year: the end of World War II?"
            Reponses := array{"1945", "1975", "1944", "1947"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the first Moon landing?"
            Reponses := array{"1971", "1966", "1939", "1969"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the discovery of America?"
            Reponses := array{"1462", "1502", "1512", "1492"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the September 11 attacks?"
            Reponses := array{"2021", "2001", "2003", "2006"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the coronation of Charlemagne?"
            Reponses := array{"799", "807", "815", "800"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the coronation of Napoleon?"
            Reponses := array{"1803", "1804", "1789", "1807"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the sinking of the Titanic?"
            Reponses := array{"1914", "1882", "1902", "1912"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the independence of the United States?"
            Reponses := array{"1776", "1756", "1761", "1796"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the opening of the Eiffel Tower?"
            Reponses := array{"1889", "1894", "1890", "1874"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the first modern Olympics?"
            Reponses := array{"1891", "1901", "1866", "1896"}
            BonneReponse := 3
        question:
            Enonce := "In what year: France winning the World Cup?"
            Reponses := array{"1998", "1996", "1999", "2003"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the launch of euro coins?"
            Reponses := array{"1972", "1995", "2002", "2000"}
            BonneReponse := 2
        question:
            Enonce := "In what year: the fall of the Western Roman Empire?"
            Reponses := array{"483", "456", "476", "473"}
            BonneReponse := 2
        question:
            Enonce := "In what year: the Battle of Hastings?"
            Reponses := array{"1071", "1076", "1066", "1065"}
            BonneReponse := 2
        question:
            Enonce := "In what year: the Magna Carta?"
            Reponses := array{"1216", "1230", "1215", "1222"}
            BonneReponse := 2
        question:
            Enonce := "In what year: the Black Death reaching Europe?"
            Reponses := array{"1367", "1332", "1327", "1347"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the Treaty of Versailles?"
            Reponses := array{"1916", "1919", "1934", "1924"}
            BonneReponse := 1
        question:
            Enonce := "In what year: D-Day?"
            Reponses := array{"1949", "1944", "1974", "1939"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the assassination of JFK?"
            Reponses := array{"1963", "1960", "1961", "1956"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the release of Nelson Mandela?"
            Reponses := array{"1995", "1987", "1989", "1990"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the Battle of Marignano?"
            Reponses := array{"1515", "1512", "1505", "1522"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the storming of the Bastille?"
            Reponses := array{"1779", "1788", "1789", "1799"}
            BonneReponse := 2
        question:
            Enonce := "In what year: the Battle of Austerlitz?"
            Reponses := array{"1807", "1812", "1775", "1805"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the Battle of Waterloo?"
            Reponses := array{"1795", "1785", "1815", "1808"}
            BonneReponse := 2
        question:
            Enonce := "In what year: the start of the American Civil War?"
            Reponses := array{"1861", "1858", "1863", "1881"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the abolition of slavery in France?"
            Reponses := array{"1845", "1848", "1849", "1818"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the Paris Commune?"
            Reponses := array{"1871", "1866", "1841", "1876"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the Russian Revolution?"
            Reponses := array{"1917", "1920", "1947", "1910"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the Wall Street Crash?"
            Reponses := array{"1929", "1944", "1914", "1927"}
            BonneReponse := 0
        question:
            Enonce := "In what year: Hitler coming to power?"
            Reponses := array{"1933", "1935", "1928", "1903"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the start of the Spanish Civil War?"
            Reponses := array{"1937", "1906", "1935", "1936"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the independence of India?"
            Reponses := array{"1917", "1947", "1949", "1932"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the creation of Israel?"
            Reponses := array{"1948", "1946", "1953", "1918"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the creation of NATO?"
            Reponses := array{"1949", "1942", "1950", "1934"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the death of Stalin?"
            Reponses := array{"1973", "1946", "1960", "1953"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the Treaty of Rome?"
            Reponses := array{"1952", "1957", "1972", "1927"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the launch of Sputnik?"
            Reponses := array{"1952", "1967", "1957", "1954"}
            BonneReponse := 2
        question:
            Enonce := "In what year: the building of the Berlin Wall?"
            Reponses := array{"1961", "1946", "1941", "1963"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the Cuban Missile Crisis?"
            Reponses := array{"1962", "1965", "1963", "1942"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the May 68 protests in France?"
            Reponses := array{"1969", "1968", "1966", "1975"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the Woodstock festival?"
            Reponses := array{"1970", "1939", "1969", "1962"}
            BonneReponse := 2
        question:
            Enonce := "In what year: the end of the Vietnam War?"
            Reponses := array{"1982", "1975", "1977", "1995"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the Chernobyl disaster?"
            Reponses := array{"1971", "1991", "1986", "1966"}
            BonneReponse := 2
        question:
            Enonce := "In what year: the Gulf War?"
            Reponses := array{"1981", "1989", "1991", "1976"}
            BonneReponse := 2
        question:
            Enonce := "In what year: the dissolution of the USSR?"
            Reponses := array{"1986", "1992", "1961", "1991"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the Maastricht Treaty?"
            Reponses := array{"1992", "1985", "1993", "2012"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the handover of Hong Kong?"
            Reponses := array{"1967", "2004", "2027", "1997"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the Brexit referendum?"
            Reponses := array{"2013", "2014", "2016", "2026"}
            BonneReponse := 2
        question:
            Enonce := "In what year: the COVID-19 pandemic declared?"
            Reponses := array{"2050", "2021", "2020", "1990"}
            BonneReponse := 2
        question:
            Enonce := "In what year: the founding of Rome?"
            Reponses := array{"752 BC", "750 BC", "758 BC", "753 BC"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the Battle of Marathon?"
            Reponses := array{"492 BC", "490 BC", "491 BC", "485 BC"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the death of Alexander the Great?"
            Reponses := array{"323 BC", "303 BC", "313 BC", "343 BC"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the assassination of Julius Caesar?"
            Reponses := array{"44 BC", "45 BC", "39 BC", "54 BC"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the eruption of Vesuvius (Pompeii)?"
            Reponses := array{"99", "79", "81", "94"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the Edict of Milan?"
            Reponses := array{"293", "333", "306", "313"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the Hijra?"
            Reponses := array{"619", "592", "622", "602"}
            BonneReponse := 2
        question:
            Enonce := "In what year: the Battle of Tours?"
            Reponses := array{"737", "702", "732", "762"}
            BonneReponse := 2
        question:
            Enonce := "In what year: the First Crusade?"
            Reponses := array{"1111", "1096", "1093", "1066"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the fall of Constantinople?"
            Reponses := array{"1453", "1463", "1451", "1458"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the St. Bartholomew's Day massacre?"
            Reponses := array{"1572", "1569", "1542", "1582"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the Edict of Nantes?"
            Reponses := array{"1599", "1598", "1601", "1600"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the voyage of the Mayflower?"
            Reponses := array{"1600", "1620", "1621", "1650"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the Great Plague of London?"
            Reponses := array{"1663", "1635", "1660", "1665"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the publication of Newton's Principia?"
            Reponses := array{"1684", "1682", "1677", "1687"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the abolition of slavery in the UK?"
            Reponses := array{"1818", "1833", "1813", "1848"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the publication of On the Origin of Species?"
            Reponses := array{"1861", "1859", "1844", "1854"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the opening of the Suez Canal?"
            Reponses := array{"1869", "1889", "1874", "1872"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the patent of the telephone?"
            Reponses := array{"1876", "1873", "1886", "1883"}
            BonneReponse := 0
        question:
            Enonce := "In what year: the Wright brothers' first flight?"
            Reponses := array{"1906", "1903", "1904", "1902"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the discovery of penicillin?"
            Reponses := array{"1930", "1928", "1918", "1913"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the discovery of the structure of DNA?"
            Reponses := array{"1952", "1953", "1968", "1983"}
            BonneReponse := 1
        question:
            Enonce := "In what year: the first heart transplant?"
            Reponses := array{"1982", "1987", "1974", "1967"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the invention of the World Wide Web?"
            Reponses := array{"1994", "1979", "1989", "1959"}
            BonneReponse := 2
        question:
            Enonce := "In what year: the launch of the first iPhone?"
            Reponses := array{"2000", "2004", "1997", "2007"}
            BonneReponse := 3
        question:
            Enonce := "In what year: the creation of Bitcoin?"
            Reponses := array{"1979", "2016", "2009", "2007"}
            BonneReponse := 2

MakeDatesQuestionsES() : []question =
    array:
        question:
            Enonce := "En que ano: la Revolucion francesa?"
            Reponses := array{"1789", "1796", "1769", "1787"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: la caida del Muro de Berlin?"
            Reponses := array{"1990", "1986", "1984", "1989"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: el inicio de la Primera Guerra Mundial?"
            Reponses := array{"1912", "1916", "1944", "1914"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: el fin de la Primera Guerra Mundial?"
            Reponses := array{"1916", "1888", "1913", "1918"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: el inicio de la Segunda Guerra Mundial?"
            Reponses := array{"1919", "1942", "1939", "1969"}
            BonneReponse := 2
        question:
            Enonce := "En que ano: el fin de la Segunda Guerra Mundial?"
            Reponses := array{"1945", "1975", "1944", "1947"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: la llegada del hombre a la Luna?"
            Reponses := array{"1971", "1966", "1939", "1969"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: el descubrimiento de America?"
            Reponses := array{"1462", "1502", "1512", "1492"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: los atentados del 11 de septiembre?"
            Reponses := array{"2021", "2001", "2003", "2006"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: la coronacion de Carlomagno?"
            Reponses := array{"799", "807", "815", "800"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: la coronacion de Napoleon?"
            Reponses := array{"1803", "1804", "1789", "1807"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: el hundimiento del Titanic?"
            Reponses := array{"1914", "1882", "1902", "1912"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: la independencia de Estados Unidos?"
            Reponses := array{"1776", "1756", "1761", "1796"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: la inauguracion de la Torre Eiffel?"
            Reponses := array{"1889", "1894", "1890", "1874"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: los primeros JJOO modernos?"
            Reponses := array{"1891", "1901", "1866", "1896"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: la victoria de Francia en el Mundial?"
            Reponses := array{"1998", "1996", "1999", "2003"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: la entrada en circulacion del euro?"
            Reponses := array{"1972", "1995", "2002", "2000"}
            BonneReponse := 2
        question:
            Enonce := "En que ano: la caida del Imperio romano de Occidente?"
            Reponses := array{"483", "456", "476", "473"}
            BonneReponse := 2
        question:
            Enonce := "En que ano: la batalla de Hastings?"
            Reponses := array{"1071", "1076", "1066", "1065"}
            BonneReponse := 2
        question:
            Enonce := "En que ano: la Carta Magna?"
            Reponses := array{"1216", "1230", "1215", "1222"}
            BonneReponse := 2
        question:
            Enonce := "En que ano: la llegada de la peste negra a Europa?"
            Reponses := array{"1367", "1332", "1327", "1347"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: el Tratado de Versalles?"
            Reponses := array{"1916", "1919", "1934", "1924"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: el desembarco de Normandia?"
            Reponses := array{"1949", "1944", "1974", "1939"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: el asesinato de JFK?"
            Reponses := array{"1963", "1960", "1961", "1956"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: la liberacion de Nelson Mandela?"
            Reponses := array{"1995", "1987", "1989", "1990"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: la batalla de Marignano?"
            Reponses := array{"1515", "1512", "1505", "1522"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: la toma de la Bastilla?"
            Reponses := array{"1779", "1788", "1789", "1799"}
            BonneReponse := 2
        question:
            Enonce := "En que ano: la batalla de Austerlitz?"
            Reponses := array{"1807", "1812", "1775", "1805"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: la batalla de Waterloo?"
            Reponses := array{"1795", "1785", "1815", "1808"}
            BonneReponse := 2
        question:
            Enonce := "En que ano: el inicio de la guerra de Secesion?"
            Reponses := array{"1861", "1858", "1863", "1881"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: la abolicion de la esclavitud en Francia?"
            Reponses := array{"1845", "1848", "1849", "1818"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: la Comuna de Paris?"
            Reponses := array{"1871", "1866", "1841", "1876"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: la Revolucion rusa?"
            Reponses := array{"1917", "1920", "1947", "1910"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: el crac de Wall Street?"
            Reponses := array{"1929", "1944", "1914", "1927"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: la llegada de Hitler al poder?"
            Reponses := array{"1933", "1935", "1928", "1903"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: el inicio de la Guerra Civil espanola?"
            Reponses := array{"1937", "1906", "1935", "1936"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: la independencia de la India?"
            Reponses := array{"1917", "1947", "1949", "1932"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: la creacion de Israel?"
            Reponses := array{"1948", "1946", "1953", "1918"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: la creacion de la OTAN?"
            Reponses := array{"1949", "1942", "1950", "1934"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: la muerte de Stalin?"
            Reponses := array{"1973", "1946", "1960", "1953"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: el Tratado de Roma?"
            Reponses := array{"1952", "1957", "1972", "1927"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: el lanzamiento del Sputnik?"
            Reponses := array{"1952", "1967", "1957", "1954"}
            BonneReponse := 2
        question:
            Enonce := "En que ano: la construccion del Muro de Berlin?"
            Reponses := array{"1961", "1946", "1941", "1963"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: la crisis de los misiles de Cuba?"
            Reponses := array{"1962", "1965", "1963", "1942"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: Mayo del 68?"
            Reponses := array{"1969", "1968", "1966", "1975"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: el festival de Woodstock?"
            Reponses := array{"1970", "1939", "1969", "1962"}
            BonneReponse := 2
        question:
            Enonce := "En que ano: el fin de la guerra de Vietnam?"
            Reponses := array{"1982", "1975", "1977", "1995"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: el desastre de Chernobil?"
            Reponses := array{"1971", "1991", "1986", "1966"}
            BonneReponse := 2
        question:
            Enonce := "En que ano: la guerra del Golfo?"
            Reponses := array{"1981", "1989", "1991", "1976"}
            BonneReponse := 2
        question:
            Enonce := "En que ano: la disolucion de la URSS?"
            Reponses := array{"1986", "1992", "1961", "1991"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: el Tratado de Maastricht?"
            Reponses := array{"1992", "1985", "1993", "2012"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: la devolucion de Hong Kong?"
            Reponses := array{"1967", "2004", "2027", "1997"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: el referendum del Brexit?"
            Reponses := array{"2013", "2014", "2016", "2026"}
            BonneReponse := 2
        question:
            Enonce := "En que ano: la declaracion de la pandemia de COVID-19?"
            Reponses := array{"2050", "2021", "2020", "1990"}
            BonneReponse := 2
        question:
            Enonce := "En que ano: la fundacion de Roma?"
            Reponses := array{"752 a.C.", "750 a.C.", "758 a.C.", "753 a.C."}
            BonneReponse := 3
        question:
            Enonce := "En que ano: la batalla de Maraton?"
            Reponses := array{"492 a.C.", "490 a.C.", "491 a.C.", "485 a.C."}
            BonneReponse := 1
        question:
            Enonce := "En que ano: la muerte de Alejandro Magno?"
            Reponses := array{"323 a.C.", "303 a.C.", "313 a.C.", "343 a.C."}
            BonneReponse := 0
        question:
            Enonce := "En que ano: el asesinato de Julio Cesar?"
            Reponses := array{"44 a.C.", "45 a.C.", "39 a.C.", "54 a.C."}
            BonneReponse := 0
        question:
            Enonce := "En que ano: la erupcion del Vesubio (Pompeya)?"
            Reponses := array{"99", "79", "81", "94"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: el Edicto de Milan?"
            Reponses := array{"293", "333", "306", "313"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: la Hegira?"
            Reponses := array{"619", "592", "622", "602"}
            BonneReponse := 2
        question:
            Enonce := "En que ano: la batalla de Poitiers?"
            Reponses := array{"737", "702", "732", "762"}
            BonneReponse := 2
        question:
            Enonce := "En que ano: la primera cruzada?"
            Reponses := array{"1111", "1096", "1093", "1066"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: la caida de Constantinopla?"
            Reponses := array{"1453", "1463", "1451", "1458"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: la matanza de San Bartolome?"
            Reponses := array{"1572", "1569", "1542", "1582"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: el Edicto de Nantes?"
            Reponses := array{"1599", "1598", "1601", "1600"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: el viaje del Mayflower?"
            Reponses := array{"1600", "1620", "1621", "1650"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: la gran peste de Londres?"
            Reponses := array{"1663", "1635", "1660", "1665"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: la publicacion de los Principia de Newton?"
            Reponses := array{"1684", "1682", "1677", "1687"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: la abolicion de la esclavitud en Reino Unido?"
            Reponses := array{"1818", "1833", "1813", "1848"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: la publicacion de El origen de las especies?"
            Reponses := array{"1861", "1859", "1844", "1854"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: la apertura del canal de Suez?"
            Reponses := array{"1869", "1889", "1874", "1872"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: la patente del telefono?"
            Reponses := array{"1876", "1873", "1886", "1883"}
            BonneReponse := 0
        question:
            Enonce := "En que ano: el primer vuelo de los hermanos Wright?"
            Reponses := array{"1906", "1903", "1904", "1902"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: el descubrimiento de la penicilina?"
            Reponses := array{"1930", "1928", "1918", "1913"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: el descubrimiento de la estructura del ADN?"
            Reponses := array{"1952", "1953", "1968", "1983"}
            BonneReponse := 1
        question:
            Enonce := "En que ano: el primer trasplante de corazon?"
            Reponses := array{"1982", "1987", "1974", "1967"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: la invencion de la World Wide Web?"
            Reponses := array{"1994", "1979", "1989", "1959"}
            BonneReponse := 2
        question:
            Enonce := "En que ano: el lanzamiento del primer iPhone?"
            Reponses := array{"2000", "2004", "1997", "2007"}
            BonneReponse := 3
        question:
            Enonce := "En que ano: la creacion de Bitcoin?"
            Reponses := array{"1979", "2016", "2009", "2007"}
            BonneReponse := 2

MakeDatesQuestionsDE() : []question =
    array:
        question:
            Enonce := "In welchem Jahr: die Franzoesische Revolution?"
            Reponses := array{"1789", "1796", "1769", "1787"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: der Fall der Berliner Mauer?"
            Reponses := array{"1990", "1986", "1984", "1989"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: der Beginn des Ersten Weltkriegs?"
            Reponses := array{"1912", "1916", "1944", "1914"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: das Ende des Ersten Weltkriegs?"
            Reponses := array{"1916", "1888", "1913", "1918"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: der Beginn des Zweiten Weltkriegs?"
            Reponses := array{"1919", "1942", "1939", "1969"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr: das Ende des Zweiten Weltkriegs?"
            Reponses := array{"1945", "1975", "1944", "1947"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: die erste Mondlandung?"
            Reponses := array{"1971", "1966", "1939", "1969"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: die Entdeckung Amerikas?"
            Reponses := array{"1462", "1502", "1512", "1492"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: die Anschlaege vom 11. September?"
            Reponses := array{"2021", "2001", "2003", "2006"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: die Kroenung Karls des Grossen?"
            Reponses := array{"799", "807", "815", "800"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: die Kroenung Napoleons?"
            Reponses := array{"1803", "1804", "1789", "1807"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: der Untergang der Titanic?"
            Reponses := array{"1914", "1882", "1902", "1912"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: die Unabhaengigkeit der USA?"
            Reponses := array{"1776", "1756", "1761", "1796"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: die Eroeffnung des Eiffelturms?"
            Reponses := array{"1889", "1894", "1890", "1874"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: die ersten modernen Olympischen Spiele?"
            Reponses := array{"1891", "1901", "1866", "1896"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: Frankreichs WM-Sieg?"
            Reponses := array{"1998", "1996", "1999", "2003"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: die Einfuehrung des Euro-Bargelds?"
            Reponses := array{"1972", "1995", "2002", "2000"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr: der Untergang Westroms?"
            Reponses := array{"483", "456", "476", "473"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr: die Schlacht von Hastings?"
            Reponses := array{"1071", "1076", "1066", "1065"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr: die Magna Carta?"
            Reponses := array{"1216", "1230", "1215", "1222"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr: die Ankunft des Schwarzen Todes in Europa?"
            Reponses := array{"1367", "1332", "1327", "1347"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: der Versailler Vertrag?"
            Reponses := array{"1916", "1919", "1934", "1924"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: die Landung in der Normandie?"
            Reponses := array{"1949", "1944", "1974", "1939"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: die Ermordung von JFK?"
            Reponses := array{"1963", "1960", "1961", "1956"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: die Freilassung Nelson Mandelas?"
            Reponses := array{"1995", "1987", "1989", "1990"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: die Schlacht bei Marignano?"
            Reponses := array{"1515", "1512", "1505", "1522"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: der Sturm auf die Bastille?"
            Reponses := array{"1779", "1788", "1789", "1799"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr: die Schlacht bei Austerlitz?"
            Reponses := array{"1807", "1812", "1775", "1805"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: die Schlacht bei Waterloo?"
            Reponses := array{"1795", "1785", "1815", "1808"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr: der Beginn des Sezessionskriegs?"
            Reponses := array{"1861", "1858", "1863", "1881"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: die Abschaffung der Sklaverei in Frankreich?"
            Reponses := array{"1845", "1848", "1849", "1818"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: die Pariser Kommune?"
            Reponses := array{"1871", "1866", "1841", "1876"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: die Russische Revolution?"
            Reponses := array{"1917", "1920", "1947", "1910"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: der Boersenkrach an der Wall Street?"
            Reponses := array{"1929", "1944", "1914", "1927"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: Hitlers Machtergreifung?"
            Reponses := array{"1933", "1935", "1928", "1903"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: der Beginn des Spanischen Buergerkriegs?"
            Reponses := array{"1937", "1906", "1935", "1936"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: die Unabhaengigkeit Indiens?"
            Reponses := array{"1917", "1947", "1949", "1932"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: die Gruendung Israels?"
            Reponses := array{"1948", "1946", "1953", "1918"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: die Gruendung der NATO?"
            Reponses := array{"1949", "1942", "1950", "1934"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: der Tod Stalins?"
            Reponses := array{"1973", "1946", "1960", "1953"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: die Roemischen Vertraege?"
            Reponses := array{"1952", "1957", "1972", "1927"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: der Start von Sputnik?"
            Reponses := array{"1952", "1967", "1957", "1954"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr: der Bau der Berliner Mauer?"
            Reponses := array{"1961", "1946", "1941", "1963"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: die Kubakrise?"
            Reponses := array{"1962", "1965", "1963", "1942"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: die Mai-Unruhen 1968?"
            Reponses := array{"1969", "1968", "1966", "1975"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: das Woodstock-Festival?"
            Reponses := array{"1970", "1939", "1969", "1962"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr: das Ende des Vietnamkriegs?"
            Reponses := array{"1982", "1975", "1977", "1995"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: die Katastrophe von Tschernobyl?"
            Reponses := array{"1971", "1991", "1986", "1966"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr: der Zweite Golfkrieg?"
            Reponses := array{"1981", "1989", "1991", "1976"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr: die Aufloesung der UdSSR?"
            Reponses := array{"1986", "1992", "1961", "1991"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: der Vertrag von Maastricht?"
            Reponses := array{"1992", "1985", "1993", "2012"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: die Rueckgabe Hongkongs?"
            Reponses := array{"1967", "2004", "2027", "1997"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: das Brexit-Referendum?"
            Reponses := array{"2013", "2014", "2016", "2026"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr: die Erklaerung der COVID-19-Pandemie?"
            Reponses := array{"2050", "2021", "2020", "1990"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr: die Gruendung Roms?"
            Reponses := array{"752 v. Chr.", "750 v. Chr.", "758 v. Chr.", "753 v. Chr."}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: die Schlacht bei Marathon?"
            Reponses := array{"492 v. Chr.", "490 v. Chr.", "491 v. Chr.", "485 v. Chr."}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: der Tod Alexanders des Grossen?"
            Reponses := array{"323 v. Chr.", "303 v. Chr.", "313 v. Chr.", "343 v. Chr."}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: die Ermordung Caesars?"
            Reponses := array{"44 v. Chr.", "45 v. Chr.", "39 v. Chr.", "54 v. Chr."}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: der Ausbruch des Vesuvs (Pompeji)?"
            Reponses := array{"99", "79", "81", "94"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: das Edikt von Mailand?"
            Reponses := array{"293", "333", "306", "313"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: die Hidschra?"
            Reponses := array{"619", "592", "622", "602"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr: die Schlacht von Tours?"
            Reponses := array{"737", "702", "732", "762"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr: der Erste Kreuzzug?"
            Reponses := array{"1111", "1096", "1093", "1066"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: der Fall Konstantinopels?"
            Reponses := array{"1453", "1463", "1451", "1458"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: die Bartholomaeusnacht?"
            Reponses := array{"1572", "1569", "1542", "1582"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: das Edikt von Nantes?"
            Reponses := array{"1599", "1598", "1601", "1600"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: die Fahrt der Mayflower?"
            Reponses := array{"1600", "1620", "1621", "1650"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: die Grosse Pest von London?"
            Reponses := array{"1663", "1635", "1660", "1665"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: die Veroeffentlichung von Newtons Principia?"
            Reponses := array{"1684", "1682", "1677", "1687"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: die Abschaffung der Sklaverei in Grossbritannien?"
            Reponses := array{"1818", "1833", "1813", "1848"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: die Veroeffentlichung von Die Entstehung der Arten?"
            Reponses := array{"1861", "1859", "1844", "1854"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: die Eroeffnung des Sueskanals?"
            Reponses := array{"1869", "1889", "1874", "1872"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: das Telefon-Patent?"
            Reponses := array{"1876", "1873", "1886", "1883"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr: der erste Flug der Brueder Wright?"
            Reponses := array{"1906", "1903", "1904", "1902"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: die Entdeckung des Penicillins?"
            Reponses := array{"1930", "1928", "1918", "1913"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: die Entdeckung der DNA-Struktur?"
            Reponses := array{"1952", "1953", "1968", "1983"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr: die erste Herztransplantation?"
            Reponses := array{"1982", "1987", "1974", "1967"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: die Erfindung des World Wide Web?"
            Reponses := array{"1994", "1979", "1989", "1959"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr: die Vorstellung des ersten iPhones?"
            Reponses := array{"2000", "2004", "1997", "2007"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr: die Schaffung von Bitcoin?"
            Reponses := array{"1979", "2016", "2009", "2007"}
            BonneReponse := 2

MakeDatesQuestionsIT() : []question =
    array:
        question:
            Enonce := "In che anno: la Rivoluzione francese?"
            Reponses := array{"1789", "1796", "1769", "1787"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: la caduta del Muro di Berlino?"
            Reponses := array{"1990", "1986", "1984", "1989"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: l'inizio della Prima guerra mondiale?"
            Reponses := array{"1912", "1916", "1944", "1914"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: la fine della Prima guerra mondiale?"
            Reponses := array{"1916", "1888", "1913", "1918"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: l'inizio della Seconda guerra mondiale?"
            Reponses := array{"1919", "1942", "1939", "1969"}
            BonneReponse := 2
        question:
            Enonce := "In che anno: la fine della Seconda guerra mondiale?"
            Reponses := array{"1945", "1975", "1944", "1947"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: il primo sbarco sulla Luna?"
            Reponses := array{"1971", "1966", "1939", "1969"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: la scoperta dell'America?"
            Reponses := array{"1462", "1502", "1512", "1492"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: gli attentati dell'11 settembre?"
            Reponses := array{"2021", "2001", "2003", "2006"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: l'incoronazione di Carlo Magno?"
            Reponses := array{"799", "807", "815", "800"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: l'incoronazione di Napoleone?"
            Reponses := array{"1803", "1804", "1789", "1807"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: l'affondamento del Titanic?"
            Reponses := array{"1914", "1882", "1902", "1912"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: l'indipendenza degli Stati Uniti?"
            Reponses := array{"1776", "1756", "1761", "1796"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: l'inaugurazione della Torre Eiffel?"
            Reponses := array{"1889", "1894", "1890", "1874"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: le prime Olimpiadi moderne?"
            Reponses := array{"1891", "1901", "1866", "1896"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: la vittoria della Francia ai Mondiali?"
            Reponses := array{"1998", "1996", "1999", "2003"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: l'entrata in circolazione dell'euro?"
            Reponses := array{"1972", "1995", "2002", "2000"}
            BonneReponse := 2
        question:
            Enonce := "In che anno: la caduta dell'Impero romano d'Occidente?"
            Reponses := array{"483", "456", "476", "473"}
            BonneReponse := 2
        question:
            Enonce := "In che anno: la battaglia di Hastings?"
            Reponses := array{"1071", "1076", "1066", "1065"}
            BonneReponse := 2
        question:
            Enonce := "In che anno: la Magna Carta?"
            Reponses := array{"1216", "1230", "1215", "1222"}
            BonneReponse := 2
        question:
            Enonce := "In che anno: l'arrivo della peste nera in Europa?"
            Reponses := array{"1367", "1332", "1327", "1347"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: il Trattato di Versailles?"
            Reponses := array{"1916", "1919", "1934", "1924"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: lo sbarco in Normandia?"
            Reponses := array{"1949", "1944", "1974", "1939"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: l'assassinio di JFK?"
            Reponses := array{"1963", "1960", "1961", "1956"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: la liberazione di Nelson Mandela?"
            Reponses := array{"1995", "1987", "1989", "1990"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: la battaglia di Marignano?"
            Reponses := array{"1515", "1512", "1505", "1522"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: la presa della Bastiglia?"
            Reponses := array{"1779", "1788", "1789", "1799"}
            BonneReponse := 2
        question:
            Enonce := "In che anno: la battaglia di Austerlitz?"
            Reponses := array{"1807", "1812", "1775", "1805"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: la battaglia di Waterloo?"
            Reponses := array{"1795", "1785", "1815", "1808"}
            BonneReponse := 2
        question:
            Enonce := "In che anno: l'inizio della guerra di secessione?"
            Reponses := array{"1861", "1858", "1863", "1881"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: l'abolizione della schiavitu in Francia?"
            Reponses := array{"1845", "1848", "1849", "1818"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: la Comune di Parigi?"
            Reponses := array{"1871", "1866", "1841", "1876"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: la Rivoluzione russa?"
            Reponses := array{"1917", "1920", "1947", "1910"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: il crollo di Wall Street?"
            Reponses := array{"1929", "1944", "1914", "1927"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: l'ascesa al potere di Hitler?"
            Reponses := array{"1933", "1935", "1928", "1903"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: l'inizio della guerra civile spagnola?"
            Reponses := array{"1937", "1906", "1935", "1936"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: l'indipendenza dell'India?"
            Reponses := array{"1917", "1947", "1949", "1932"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: la creazione di Israele?"
            Reponses := array{"1948", "1946", "1953", "1918"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: la creazione della NATO?"
            Reponses := array{"1949", "1942", "1950", "1934"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: la morte di Stalin?"
            Reponses := array{"1973", "1946", "1960", "1953"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: il Trattato di Roma?"
            Reponses := array{"1952", "1957", "1972", "1927"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: il lancio dello Sputnik?"
            Reponses := array{"1952", "1967", "1957", "1954"}
            BonneReponse := 2
        question:
            Enonce := "In che anno: la costruzione del Muro di Berlino?"
            Reponses := array{"1961", "1946", "1941", "1963"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: la crisi dei missili di Cuba?"
            Reponses := array{"1962", "1965", "1963", "1942"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: il Maggio francese?"
            Reponses := array{"1969", "1968", "1966", "1975"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: il festival di Woodstock?"
            Reponses := array{"1970", "1939", "1969", "1962"}
            BonneReponse := 2
        question:
            Enonce := "In che anno: la fine della guerra del Vietnam?"
            Reponses := array{"1982", "1975", "1977", "1995"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: il disastro di Chernobyl?"
            Reponses := array{"1971", "1991", "1986", "1966"}
            BonneReponse := 2
        question:
            Enonce := "In che anno: la guerra del Golfo?"
            Reponses := array{"1981", "1989", "1991", "1976"}
            BonneReponse := 2
        question:
            Enonce := "In che anno: la dissoluzione dell'URSS?"
            Reponses := array{"1986", "1992", "1961", "1991"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: il Trattato di Maastricht?"
            Reponses := array{"1992", "1985", "1993", "2012"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: la restituzione di Hong Kong?"
            Reponses := array{"1967", "2004", "2027", "1997"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: il referendum sulla Brexit?"
            Reponses := array{"2013", "2014", "2016", "2026"}
            BonneReponse := 2
        question:
            Enonce := "In che anno: la dichiarazione della pandemia di COVID-19?"
            Reponses := array{"2050", "2021", "2020", "1990"}
            BonneReponse := 2
        question:
            Enonce := "In che anno: la fondazione di Roma?"
            Reponses := array{"752 a.C.", "750 a.C.", "758 a.C.", "753 a.C."}
            BonneReponse := 3
        question:
            Enonce := "In che anno: la battaglia di Maratona?"
            Reponses := array{"492 a.C.", "490 a.C.", "491 a.C.", "485 a.C."}
            BonneReponse := 1
        question:
            Enonce := "In che anno: la morte di Alessandro Magno?"
            Reponses := array{"323 a.C.", "303 a.C.", "313 a.C.", "343 a.C."}
            BonneReponse := 0
        question:
            Enonce := "In che anno: l'assassinio di Giulio Cesare?"
            Reponses := array{"44 a.C.", "45 a.C.", "39 a.C.", "54 a.C."}
            BonneReponse := 0
        question:
            Enonce := "In che anno: l'eruzione del Vesuvio (Pompei)?"
            Reponses := array{"99", "79", "81", "94"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: l'editto di Milano?"
            Reponses := array{"293", "333", "306", "313"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: l'Egira?"
            Reponses := array{"619", "592", "622", "602"}
            BonneReponse := 2
        question:
            Enonce := "In che anno: la battaglia di Poitiers?"
            Reponses := array{"737", "702", "732", "762"}
            BonneReponse := 2
        question:
            Enonce := "In che anno: la prima crociata?"
            Reponses := array{"1111", "1096", "1093", "1066"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: la caduta di Costantinopoli?"
            Reponses := array{"1453", "1463", "1451", "1458"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: la strage di San Bartolomeo?"
            Reponses := array{"1572", "1569", "1542", "1582"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: l'editto di Nantes?"
            Reponses := array{"1599", "1598", "1601", "1600"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: il viaggio del Mayflower?"
            Reponses := array{"1600", "1620", "1621", "1650"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: la grande peste di Londra?"
            Reponses := array{"1663", "1635", "1660", "1665"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: la pubblicazione dei Principia di Newton?"
            Reponses := array{"1684", "1682", "1677", "1687"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: l'abolizione della schiavitu nel Regno Unito?"
            Reponses := array{"1818", "1833", "1813", "1848"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: la pubblicazione de L'origine delle specie?"
            Reponses := array{"1861", "1859", "1844", "1854"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: l'apertura del canale di Suez?"
            Reponses := array{"1869", "1889", "1874", "1872"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: il brevetto del telefono?"
            Reponses := array{"1876", "1873", "1886", "1883"}
            BonneReponse := 0
        question:
            Enonce := "In che anno: il primo volo dei fratelli Wright?"
            Reponses := array{"1906", "1903", "1904", "1902"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: la scoperta della penicillina?"
            Reponses := array{"1930", "1928", "1918", "1913"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: la scoperta della struttura del DNA?"
            Reponses := array{"1952", "1953", "1968", "1983"}
            BonneReponse := 1
        question:
            Enonce := "In che anno: il primo trapianto di cuore?"
            Reponses := array{"1982", "1987", "1974", "1967"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: l'invenzione del World Wide Web?"
            Reponses := array{"1994", "1979", "1989", "1959"}
            BonneReponse := 2
        question:
            Enonce := "In che anno: il lancio del primo iPhone?"
            Reponses := array{"2000", "2004", "1997", "2007"}
            BonneReponse := 3
        question:
            Enonce := "In che anno: la creazione di Bitcoin?"
            Reponses := array{"1979", "2016", "2009", "2007"}
            BonneReponse := 2

MakeDatesQuestions() : []question =
    MakeDatesQuestionsFR()
