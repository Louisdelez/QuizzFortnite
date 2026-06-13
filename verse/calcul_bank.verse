# Quizz CALCUL MENTAL (300 questions generees, langue-neutre)
# GENERE par tools/build_calcul.py — NE PAS EDITER A LA MAIN.

CalculDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}

MakeCalculQuestionsFR() : []question =
    array:
        question:
            Enonce := "85 + 56 = ?"
            Reponses := array{"141", "140", "151", "131"}
            BonneReponse := 0
        question:
            Enonce := "89 - 78 = ?"
            Reponses := array{"6", "31", "11", "1"}
            BonneReponse := 2
        question:
            Enonce := "16 + 66 = ?"
            Reponses := array{"80", "77", "82", "83"}
            BonneReponse := 2
        question:
            Enonce := "19 + 68 = ?"
            Reponses := array{"82", "67", "87", "78"}
            BonneReponse := 2
        question:
            Enonce := "88 + 77 = ?"
            Reponses := array{"155", "175", "164", "165"}
            BonneReponse := 3
        question:
            Enonce := "35 + 44 = ?"
            Reponses := array{"77", "81", "79", "80"}
            BonneReponse := 2
        question:
            Enonce := "54 + 65 = ?"
            Reponses := array{"119", "117", "99", "124"}
            BonneReponse := 0
        question:
            Enonce := "54 - 27 = ?"
            Reponses := array{"25", "27", "32", "72"}
            BonneReponse := 1
        question:
            Enonce := "40 + 19 = ?"
            Reponses := array{"60", "61", "59", "57"}
            BonneReponse := 2
        question:
            Enonce := "40 + 11 = ?"
            Reponses := array{"50", "51", "53", "46"}
            BonneReponse := 1
        question:
            Enonce := "72 - 64 = ?"
            Reponses := array{"6", "28", "8", "3"}
            BonneReponse := 2
        question:
            Enonce := "22 + 47 = ?"
            Reponses := array{"49", "69", "74", "79"}
            BonneReponse := 1
        question:
            Enonce := "49 + 76 = ?"
            Reponses := array{"125", "105", "115", "145"}
            BonneReponse := 0
        question:
            Enonce := "66 + 43 = ?"
            Reponses := array{"109", "111", "108", "89"}
            BonneReponse := 0
        question:
            Enonce := "86 + 87 = ?"
            Reponses := array{"173", "183", "172", "163"}
            BonneReponse := 0
        question:
            Enonce := "33 - 28 = ?"
            Reponses := array{"5", "4", "6", "7"}
            BonneReponse := 0
        question:
            Enonce := "61 - 34 = ?"
            Reponses := array{"47", "28", "25", "27"}
            BonneReponse := 3
        question:
            Enonce := "11 + 63 = ?"
            Reponses := array{"54", "73", "84", "74"}
            BonneReponse := 3
        question:
            Enonce := "74 - 59 = ?"
            Reponses := array{"14", "15", "51", "10"}
            BonneReponse := 1
        question:
            Enonce := "49 - 33 = ?"
            Reponses := array{"61", "16", "11", "36"}
            BonneReponse := 1
        question:
            Enonce := "25 + 44 = ?"
            Reponses := array{"96", "68", "69", "71"}
            BonneReponse := 2
        question:
            Enonce := "17 + 67 = ?"
            Reponses := array{"84", "86", "104", "83"}
            BonneReponse := 0
        question:
            Enonce := "33 - 19 = ?"
            Reponses := array{"13", "24", "14", "16"}
            BonneReponse := 2
        question:
            Enonce := "57 - 17 = ?"
            Reponses := array{"30", "40", "50", "38"}
            BonneReponse := 1
        question:
            Enonce := "62 + 58 = ?"
            Reponses := array{"120", "125", "119", "210"}
            BonneReponse := 0
        question:
            Enonce := "26 + 28 = ?"
            Reponses := array{"59", "64", "49", "54"}
            BonneReponse := 3
        question:
            Enonce := "72 + 57 = ?"
            Reponses := array{"219", "129", "134", "139"}
            BonneReponse := 1
        question:
            Enonce := "20 + 77 = ?"
            Reponses := array{"97", "99", "96", "117"}
            BonneReponse := 0
        question:
            Enonce := "56 + 25 = ?"
            Reponses := array{"86", "82", "18", "81"}
            BonneReponse := 3
        question:
            Enonce := "52 - 13 = ?"
            Reponses := array{"39", "19", "38", "37"}
            BonneReponse := 0
        question:
            Enonce := "33 + 21 = ?"
            Reponses := array{"59", "55", "54", "56"}
            BonneReponse := 2
        question:
            Enonce := "74 + 46 = ?"
            Reponses := array{"118", "120", "110", "119"}
            BonneReponse := 1
        question:
            Enonce := "52 + 52 = ?"
            Reponses := array{"104", "105", "102", "99"}
            BonneReponse := 0
        question:
            Enonce := "17 + 61 = ?"
            Reponses := array{"78", "83", "76", "77"}
            BonneReponse := 0
        question:
            Enonce := "33 + 48 = ?"
            Reponses := array{"79", "71", "81", "82"}
            BonneReponse := 2
        question:
            Enonce := "11 + 25 = ?"
            Reponses := array{"37", "36", "35", "26"}
            BonneReponse := 1
        question:
            Enonce := "46 + 36 = ?"
            Reponses := array{"92", "102", "82", "84"}
            BonneReponse := 2
        question:
            Enonce := "75 + 37 = ?"
            Reponses := array{"112", "111", "102", "117"}
            BonneReponse := 0
        question:
            Enonce := "14 + 36 = ?"
            Reponses := array{"50", "48", "52", "49"}
            BonneReponse := 0
        question:
            Enonce := "67 + 56 = ?"
            Reponses := array{"118", "213", "123", "124"}
            BonneReponse := 2
        question:
            Enonce := "30 - 27 = ?"
            Reponses := array{"3", "2", "8", "23"}
            BonneReponse := 0
        question:
            Enonce := "83 - 39 = ?"
            Reponses := array{"39", "44", "42", "49"}
            BonneReponse := 1
        question:
            Enonce := "39 + 38 = ?"
            Reponses := array{"67", "87", "72", "77"}
            BonneReponse := 3
        question:
            Enonce := "81 + 36 = ?"
            Reponses := array{"122", "118", "117", "115"}
            BonneReponse := 2
        question:
            Enonce := "38 - 21 = ?"
            Reponses := array{"22", "17", "15", "16"}
            BonneReponse := 1
        question:
            Enonce := "85 + 55 = ?"
            Reponses := array{"138", "140", "130", "135"}
            BonneReponse := 1
        question:
            Enonce := "11 + 11 = ?"
            Reponses := array{"21", "20", "22", "32"}
            BonneReponse := 2
        question:
            Enonce := "83 + 50 = ?"
            Reponses := array{"143", "132", "313", "133"}
            BonneReponse := 3
        question:
            Enonce := "50 + 50 = ?"
            Reponses := array{"99", "105", "100", "110"}
            BonneReponse := 2
        question:
            Enonce := "68 - 58 = ?"
            Reponses := array{"10", "30", "5", "9"}
            BonneReponse := 0
        question:
            Enonce := "28 - 25 = ?"
            Reponses := array{"2", "1", "3", "4"}
            BonneReponse := 2
        question:
            Enonce := "69 + 50 = ?"
            Reponses := array{"99", "114", "139", "119"}
            BonneReponse := 3
        question:
            Enonce := "81 + 44 = ?"
            Reponses := array{"145", "135", "120", "125"}
            BonneReponse := 3
        question:
            Enonce := "79 - 25 = ?"
            Reponses := array{"55", "54", "64", "59"}
            BonneReponse := 1
        question:
            Enonce := "63 + 73 = ?"
            Reponses := array{"131", "136", "126", "134"}
            BonneReponse := 1
        question:
            Enonce := "49 - 46 = ?"
            Reponses := array{"3", "2", "8", "1"}
            BonneReponse := 0
        question:
            Enonce := "32 + 52 = ?"
            Reponses := array{"86", "84", "83", "94"}
            BonneReponse := 1
        question:
            Enonce := "68 + 60 = ?"
            Reponses := array{"118", "128", "148", "123"}
            BonneReponse := 1
        question:
            Enonce := "88 + 49 = ?"
            Reponses := array{"137", "142", "132", "136"}
            BonneReponse := 0
        question:
            Enonce := "77 + 30 = ?"
            Reponses := array{"107", "102", "117", "17"}
            BonneReponse := 0
        question:
            Enonce := "65 + 21 = ?"
            Reponses := array{"87", "76", "86", "106"}
            BonneReponse := 2
        question:
            Enonce := "42 - 15 = ?"
            Reponses := array{"27", "17", "72", "26"}
            BonneReponse := 0
        question:
            Enonce := "36 - 21 = ?"
            Reponses := array{"17", "16", "14", "15"}
            BonneReponse := 3
        question:
            Enonce := "39 + 61 = ?"
            Reponses := array{"90", "101", "80", "100"}
            BonneReponse := 3
        question:
            Enonce := "66 - 14 = ?"
            Reponses := array{"52", "57", "62", "50"}
            BonneReponse := 0
        question:
            Enonce := "87 - 37 = ?"
            Reponses := array{"55", "40", "60", "50"}
            BonneReponse := 3
        question:
            Enonce := "71 + 30 = ?"
            Reponses := array{"100", "101", "121", "96"}
            BonneReponse := 1
        question:
            Enonce := "31 + 86 = ?"
            Reponses := array{"97", "116", "117", "112"}
            BonneReponse := 2
        question:
            Enonce := "80 + 57 = ?"
            Reponses := array{"157", "139", "137", "142"}
            BonneReponse := 2
        question:
            Enonce := "38 - 31 = ?"
            Reponses := array{"5", "17", "7", "6"}
            BonneReponse := 2
        question:
            Enonce := "23 - 20 = ?"
            Reponses := array{"8", "3", "4", "23"}
            BonneReponse := 1
        question:
            Enonce := "24 + 62 = ?"
            Reponses := array{"96", "106", "86", "66"}
            BonneReponse := 2
        question:
            Enonce := "41 + 28 = ?"
            Reponses := array{"89", "71", "69", "70"}
            BonneReponse := 2
        question:
            Enonce := "62 - 27 = ?"
            Reponses := array{"35", "36", "15", "55"}
            BonneReponse := 0
        question:
            Enonce := "37 + 31 = ?"
            Reponses := array{"63", "88", "68", "48"}
            BonneReponse := 2
        question:
            Enonce := "87 + 32 = ?"
            Reponses := array{"129", "118", "124", "119"}
            BonneReponse := 3
        question:
            Enonce := "85 - 52 = ?"
            Reponses := array{"33", "28", "23", "53"}
            BonneReponse := 0
        question:
            Enonce := "42 + 46 = ?"
            Reponses := array{"90", "89", "108", "88"}
            BonneReponse := 3
        question:
            Enonce := "48 - 24 = ?"
            Reponses := array{"24", "44", "19", "42"}
            BonneReponse := 0
        question:
            Enonce := "61 + 55 = ?"
            Reponses := array{"116", "136", "111", "121"}
            BonneReponse := 0
        question:
            Enonce := "33 + 52 = ?"
            Reponses := array{"65", "85", "58", "105"}
            BonneReponse := 1
        question:
            Enonce := "26 + 67 = ?"
            Reponses := array{"91", "88", "92", "93"}
            BonneReponse := 3
        question:
            Enonce := "62 - 11 = ?"
            Reponses := array{"51", "15", "41", "71"}
            BonneReponse := 0
        question:
            Enonce := "30 - 25 = ?"
            Reponses := array{"5", "3", "25", "6"}
            BonneReponse := 0
        question:
            Enonce := "77 - 68 = ?"
            Reponses := array{"19", "7", "14", "9"}
            BonneReponse := 3
        question:
            Enonce := "53 - 14 = ?"
            Reponses := array{"29", "49", "39", "44"}
            BonneReponse := 2
        question:
            Enonce := "66 - 30 = ?"
            Reponses := array{"36", "35", "16", "37"}
            BonneReponse := 0
        question:
            Enonce := "63 + 52 = ?"
            Reponses := array{"110", "114", "115", "125"}
            BonneReponse := 2
        question:
            Enonce := "13 + 72 = ?"
            Reponses := array{"85", "105", "83", "95"}
            BonneReponse := 0
        question:
            Enonce := "81 + 37 = ?"
            Reponses := array{"98", "117", "113", "118"}
            BonneReponse := 3
        question:
            Enonce := "60 + 35 = ?"
            Reponses := array{"95", "90", "75", "85"}
            BonneReponse := 0
        question:
            Enonce := "44 + 31 = ?"
            Reponses := array{"75", "65", "95", "80"}
            BonneReponse := 0
        question:
            Enonce := "42 + 27 = ?"
            Reponses := array{"70", "59", "74", "69"}
            BonneReponse := 3
        question:
            Enonce := "60 + 51 = ?"
            Reponses := array{"91", "113", "131", "111"}
            BonneReponse := 3
        question:
            Enonce := "83 + 87 = ?"
            Reponses := array{"180", "150", "165", "170"}
            BonneReponse := 3
        question:
            Enonce := "59 + 57 = ?"
            Reponses := array{"116", "114", "96", "115"}
            BonneReponse := 0
        question:
            Enonce := "17 + 56 = ?"
            Reponses := array{"75", "68", "73", "74"}
            BonneReponse := 2
        question:
            Enonce := "68 - 29 = ?"
            Reponses := array{"59", "39", "41", "93"}
            BonneReponse := 1
        question:
            Enonce := "31 + 63 = ?"
            Reponses := array{"95", "94", "96", "49"}
            BonneReponse := 1
        question:
            Enonce := "79 + 54 = ?"
            Reponses := array{"133", "135", "123", "113"}
            BonneReponse := 0
        question:
            Enonce := "9 x 7 = ?"
            Reponses := array{"58", "43", "63", "36"}
            BonneReponse := 2
        question:
            Enonce := "426 - 153 = ?"
            Reponses := array{"278", "275", "253", "273"}
            BonneReponse := 3
        question:
            Enonce := "10 x 7 = ?"
            Reponses := array{"70", "65", "71", "72"}
            BonneReponse := 0
        question:
            Enonce := "11 x 9 = ?"
            Reponses := array{"104", "98", "89", "99"}
            BonneReponse := 3
        question:
            Enonce := "598 - 198 = ?"
            Reponses := array{"400", "420", "380", "399"}
            BonneReponse := 0
        question:
            Enonce := "455 - 110 = ?"
            Reponses := array{"355", "344", "335", "345"}
            BonneReponse := 3
        question:
            Enonce := "389 + 391 = ?"
            Reponses := array{"800", "778", "780", "775"}
            BonneReponse := 2
        question:
            Enonce := "729 - 168 = ?"
            Reponses := array{"561", "651", "571", "581"}
            BonneReponse := 0
        question:
            Enonce := "408 + 304 = ?"
            Reponses := array{"713", "712", "710", "692"}
            BonneReponse := 1
        question:
            Enonce := "8 x 12 = ?"
            Reponses := array{"96", "106", "76", "101"}
            BonneReponse := 0
        question:
            Enonce := "255 + 479 = ?"
            Reponses := array{"744", "734", "729", "733"}
            BonneReponse := 1
        question:
            Enonce := "662 - 177 = ?"
            Reponses := array{"505", "495", "485", "480"}
            BonneReponse := 2
        question:
            Enonce := "969 - 195 = ?"
            Reponses := array{"774", "772", "775", "754"}
            BonneReponse := 0
        question:
            Enonce := "7 x 10 = ?"
            Reponses := array{"69", "70", "7", "71"}
            BonneReponse := 1
        question:
            Enonce := "354 + 172 = ?"
            Reponses := array{"536", "525", "526", "516"}
            BonneReponse := 2
        question:
            Enonce := "10 x 9 = ?"
            Reponses := array{"88", "95", "100", "90"}
            BonneReponse := 3
        question:
            Enonce := "11 x 12 = ?"
            Reponses := array{"130", "132", "312", "122"}
            BonneReponse := 1
        question:
            Enonce := "692 - 131 = ?"
            Reponses := array{"559", "651", "560", "561"}
            BonneReponse := 3
        question:
            Enonce := "12 x 12 = ?"
            Reponses := array{"142", "144", "146", "124"}
            BonneReponse := 1
        question:
            Enonce := "9 x 9 = ?"
            Reponses := array{"101", "71", "81", "86"}
            BonneReponse := 2
        question:
            Enonce := "325 + 423 = ?"
            Reponses := array{"750", "749", "478", "748"}
            BonneReponse := 3
        question:
            Enonce := "12 x 6 = ?"
            Reponses := array{"72", "73", "74", "67"}
            BonneReponse := 0
        question:
            Enonce := "358 + 376 = ?"
            Reponses := array{"732", "734", "754", "729"}
            BonneReponse := 1
        question:
            Enonce := "379 + 343 = ?"
            Reponses := array{"722", "732", "712", "272"}
            BonneReponse := 0
        question:
            Enonce := "133 + 435 = ?"
            Reponses := array{"563", "658", "568", "566"}
            BonneReponse := 2
        question:
            Enonce := "876 - 197 = ?"
            Reponses := array{"659", "669", "679", "699"}
            BonneReponse := 2
        question:
            Enonce := "304 + 325 = ?"
            Reponses := array{"631", "649", "629", "627"}
            BonneReponse := 2
        question:
            Enonce := "10 x 12 = ?"
            Reponses := array{"121", "210", "120", "118"}
            BonneReponse := 2
        question:
            Enonce := "374 - 166 = ?"
            Reponses := array{"207", "209", "213", "208"}
            BonneReponse := 3
        question:
            Enonce := "11 x 6 = ?"
            Reponses := array{"56", "68", "66", "71"}
            BonneReponse := 2
        question:
            Enonce := "548 - 143 = ?"
            Reponses := array{"415", "405", "406", "410"}
            BonneReponse := 1
        question:
            Enonce := "259 + 467 = ?"
            Reponses := array{"725", "728", "726", "736"}
            BonneReponse := 2
        question:
            Enonce := "365 + 210 = ?"
            Reponses := array{"580", "570", "577", "575"}
            BonneReponse := 3
        question:
            Enonce := "6 x 6 = ?"
            Reponses := array{"36", "37", "46", "26"}
            BonneReponse := 0
        question:
            Enonce := "235 + 192 = ?"
            Reponses := array{"428", "422", "427", "432"}
            BonneReponse := 2
        question:
            Enonce := "408 + 224 = ?"
            Reponses := array{"637", "642", "633", "632"}
            BonneReponse := 3
        question:
            Enonce := "163 + 204 = ?"
            Reponses := array{"637", "369", "367", "347"}
            BonneReponse := 2
        question:
            Enonce := "250 - 148 = ?"
            Reponses := array{"12", "102", "104", "100"}
            BonneReponse := 1
        question:
            Enonce := "7 x 11 = ?"
            Reponses := array{"82", "79", "67", "77"}
            BonneReponse := 3
        question:
            Enonce := "6 x 7 = ?"
            Reponses := array{"43", "42", "32", "44"}
            BonneReponse := 1
        question:
            Enonce := "480 + 469 = ?"
            Reponses := array{"948", "951", "954", "949"}
            BonneReponse := 3
        question:
            Enonce := "412 + 348 = ?"
            Reponses := array{"740", "758", "750", "760"}
            BonneReponse := 3
        question:
            Enonce := "212 + 367 = ?"
            Reponses := array{"581", "574", "579", "580"}
            BonneReponse := 2
        question:
            Enonce := "618 - 160 = ?"
            Reponses := array{"457", "458", "548", "456"}
            BonneReponse := 1
        question:
            Enonce := "12 x 11 = ?"
            Reponses := array{"132", "130", "312", "134"}
            BonneReponse := 0
        question:
            Enonce := "6 x 9 = ?"
            Reponses := array{"54", "56", "55", "34"}
            BonneReponse := 0
        question:
            Enonce := "146 + 456 = ?"
            Reponses := array{"602", "597", "601", "607"}
            BonneReponse := 0
        question:
            Enonce := "386 - 175 = ?"
            Reponses := array{"121", "211", "209", "206"}
            BonneReponse := 1
        question:
            Enonce := "283 + 373 = ?"
            Reponses := array{"651", "654", "658", "656"}
            BonneReponse := 3
        question:
            Enonce := "521 - 177 = ?"
            Reponses := array{"342", "343", "345", "344"}
            BonneReponse := 3
        question:
            Enonce := "485 + 489 = ?"
            Reponses := array{"972", "979", "974", "954"}
            BonneReponse := 2
        question:
            Enonce := "427 + 153 = ?"
            Reponses := array{"580", "578", "585", "600"}
            BonneReponse := 0
        question:
            Enonce := "451 + 453 = ?"
            Reponses := array{"914", "94", "904", "924"}
            BonneReponse := 2
        question:
            Enonce := "388 + 431 = ?"
            Reponses := array{"814", "818", "819", "839"}
            BonneReponse := 2
        question:
            Enonce := "364 + 192 = ?"
            Reponses := array{"561", "551", "556", "554"}
            BonneReponse := 2
        question:
            Enonce := "7 x 7 = ?"
            Reponses := array{"49", "39", "51", "94"}
            BonneReponse := 0
        question:
            Enonce := "870 - 158 = ?"
            Reponses := array{"710", "707", "712", "702"}
            BonneReponse := 2
        question:
            Enonce := "7 x 8 = ?"
            Reponses := array{"56", "61", "36", "54"}
            BonneReponse := 0
        question:
            Enonce := "10 x 10 = ?"
            Reponses := array{"120", "95", "100", "80"}
            BonneReponse := 2
        question:
            Enonce := "6 x 10 = ?"
            Reponses := array{"70", "60", "80", "62"}
            BonneReponse := 1
        question:
            Enonce := "527 - 127 = ?"
            Reponses := array{"420", "390", "400", "398"}
            BonneReponse := 2
        question:
            Enonce := "6 x 8 = ?"
            Reponses := array{"47", "48", "53", "46"}
            BonneReponse := 1
        question:
            Enonce := "9 x 6 = ?"
            Reponses := array{"34", "59", "53", "54"}
            BonneReponse := 3
        question:
            Enonce := "12 x 8 = ?"
            Reponses := array{"91", "96", "76", "98"}
            BonneReponse := 1
        question:
            Enonce := "404 + 382 = ?"
            Reponses := array{"766", "786", "791", "787"}
            BonneReponse := 1
        question:
            Enonce := "9 x 8 = ?"
            Reponses := array{"67", "27", "62", "72"}
            BonneReponse := 3
        question:
            Enonce := "144 + 170 = ?"
            Reponses := array{"294", "312", "314", "309"}
            BonneReponse := 2
        question:
            Enonce := "125 + 289 = ?"
            Reponses := array{"412", "414", "404", "419"}
            BonneReponse := 1
        question:
            Enonce := "392 + 117 = ?"
            Reponses := array{"511", "499", "504", "509"}
            BonneReponse := 3
        question:
            Enonce := "9 x 11 = ?"
            Reponses := array{"99", "97", "94", "89"}
            BonneReponse := 0
        question:
            Enonce := "11 x 7 = ?"
            Reponses := array{"97", "77", "79", "78"}
            BonneReponse := 1
        question:
            Enonce := "371 + 475 = ?"
            Reponses := array{"826", "846", "851", "866"}
            BonneReponse := 1
        question:
            Enonce := "341 - 153 = ?"
            Reponses := array{"190", "198", "189", "188"}
            BonneReponse := 3
        question:
            Enonce := "666 - 170 = ?"
            Reponses := array{"498", "491", "494", "496"}
            BonneReponse := 3
        question:
            Enonce := "8 x 6 = ?"
            Reponses := array{"50", "28", "48", "38"}
            BonneReponse := 2
        question:
            Enonce := "10 x 11 = ?"
            Reponses := array{"110", "108", "100", "111"}
            BonneReponse := 0
        question:
            Enonce := "956 - 123 = ?"
            Reponses := array{"833", "832", "813", "843"}
            BonneReponse := 0
        question:
            Enonce := "460 + 117 = ?"
            Reponses := array{"567", "557", "577", "572"}
            BonneReponse := 2
        question:
            Enonce := "713 - 170 = ?"
            Reponses := array{"553", "544", "543", "548"}
            BonneReponse := 2
        question:
            Enonce := "204 + 443 = ?"
            Reponses := array{"647", "467", "646", "627"}
            BonneReponse := 0
        question:
            Enonce := "8 x 10 = ?"
            Reponses := array{"82", "60", "80", "70"}
            BonneReponse := 2
        question:
            Enonce := "11 x 11 = ?"
            Reponses := array{"126", "101", "121", "211"}
            BonneReponse := 2
        question:
            Enonce := "415 + 311 = ?"
            Reponses := array{"726", "721", "276", "736"}
            BonneReponse := 0
        question:
            Enonce := "974 - 144 = ?"
            Reponses := array{"831", "840", "830", "829"}
            BonneReponse := 2
        question:
            Enonce := "7 x 9 = ?"
            Reponses := array{"53", "36", "68", "63"}
            BonneReponse := 3
        question:
            Enonce := "219 + 457 = ?"
            Reponses := array{"696", "766", "678", "676"}
            BonneReponse := 3
        question:
            Enonce := "374 + 213 = ?"
            Reponses := array{"587", "588", "582", "607"}
            BonneReponse := 0
        question:
            Enonce := "10 x 8 = ?"
            Reponses := array{"80", "8", "79", "81"}
            BonneReponse := 0
        question:
            Enonce := "265 + 270 = ?"
            Reponses := array{"515", "535", "355", "536"}
            BonneReponse := 1
        question:
            Enonce := "660 - 141 = ?"
            Reponses := array{"519", "529", "159", "520"}
            BonneReponse := 0
        question:
            Enonce := "278 + 322 = ?"
            Reponses := array{"600", "580", "60", "598"}
            BonneReponse := 0
        question:
            Enonce := "659 - 179 = ?"
            Reponses := array{"470", "480", "840", "481"}
            BonneReponse := 1
        question:
            Enonce := "448 + 395 = ?"
            Reponses := array{"844", "843", "842", "823"}
            BonneReponse := 1
        question:
            Enonce := "11 x 10 = ?"
            Reponses := array{"90", "110", "109", "108"}
            BonneReponse := 1
        question:
            Enonce := "234 + 215 = ?"
            Reponses := array{"449", "447", "450", "444"}
            BonneReponse := 0
        question:
            Enonce := "129 + 258 = ?"
            Reponses := array{"386", "837", "397", "387"}
            BonneReponse := 3
        question:
            Enonce := "265 + 334 = ?"
            Reponses := array{"599", "579", "604", "598"}
            BonneReponse := 0
        question:
            Enonce := "778 - 151 = ?"
            Reponses := array{"627", "632", "622", "647"}
            BonneReponse := 0
        question:
            Enonce := "372 + 460 = ?"
            Reponses := array{"837", "832", "834", "833"}
            BonneReponse := 1
        question:
            Enonce := "340 + 465 = ?"
            Reponses := array{"85", "807", "825", "805"}
            BonneReponse := 3
        question:
            Enonce := "16 x 18 = ?"
            Reponses := array{"290", "278", "288", "308"}
            BonneReponse := 2
        question:
            Enonce := "29 x 7 = ?"
            Reponses := array{"223", "203", "205", "23"}
            BonneReponse := 1
        question:
            Enonce := "23 x 19 = ?"
            Reponses := array{"436", "347", "417", "437"}
            BonneReponse := 3
        question:
            Enonce := "25% de 240 = ?"
            Reponses := array{"60", "6", "58", "61"}
            BonneReponse := 0
        question:
            Enonce := "17 x 16 = ?"
            Reponses := array{"277", "272", "270", "722"}
            BonneReponse := 1
        question:
            Enonce := "25 x 6 = ?"
            Reponses := array{"170", "510", "160", "150"}
            BonneReponse := 3
        question:
            Enonce := "17 x 18 = ?"
            Reponses := array{"305", "306", "36", "326"}
            BonneReponse := 1
        question:
            Enonce := "10% de 480 = ?"
            Reponses := array{"47", "68", "46", "48"}
            BonneReponse := 3
        question:
            Enonce := "43 x 3 = ?"
            Reponses := array{"149", "109", "129", "128"}
            BonneReponse := 2
        question:
            Enonce := "15 x 5 = ?"
            Reponses := array{"75", "55", "73", "76"}
            BonneReponse := 0
        question:
            Enonce := "10% de 60 = ?"
            Reponses := array{"7", "6", "26", "4"}
            BonneReponse := 1
        question:
            Enonce := "75% de 360 = ?"
            Reponses := array{"268", "270", "290", "720"}
            BonneReponse := 1
        question:
            Enonce := "22 x 3 = ?"
            Reponses := array{"56", "71", "61", "66"}
            BonneReponse := 3
        question:
            Enonce := "42 x 4 = ?"
            Reponses := array{"168", "158", "173", "170"}
            BonneReponse := 0
        question:
            Enonce := "15 x 8 = ?"
            Reponses := array{"120", "140", "130", "125"}
            BonneReponse := 0
        question:
            Enonce := "15 x 9 = ?"
            Reponses := array{"145", "155", "135", "137"}
            BonneReponse := 2
        question:
            Enonce := "14 x 14 = ?"
            Reponses := array{"191", "197", "196", "216"}
            BonneReponse := 2
        question:
            Enonce := "17 x 8 = ?"
            Reponses := array{"131", "316", "126", "136"}
            BonneReponse := 3
        question:
            Enonce := "26 x 4 = ?"
            Reponses := array{"105", "103", "124", "104"}
            BonneReponse := 3
        question:
            Enonce := "33 x 6 = ?"
            Reponses := array{"199", "198", "200", "208"}
            BonneReponse := 1
        question:
            Enonce := "48 x 5 = ?"
            Reponses := array{"245", "230", "238", "240"}
            BonneReponse := 3
        question:
            Enonce := "10% de 120 = ?"
            Reponses := array{"32", "14", "7", "12"}
            BonneReponse := 3
        question:
            Enonce := "47 x 6 = ?"
            Reponses := array{"282", "302", "283", "277"}
            BonneReponse := 0
        question:
            Enonce := "19 x 16 = ?"
            Reponses := array{"303", "299", "309", "304"}
            BonneReponse := 3
        question:
            Enonce := "50% de 60 = ?"
            Reponses := array{"28", "30", "20", "29"}
            BonneReponse := 1
        question:
            Enonce := "13 x 13 = ?"
            Reponses := array{"149", "169", "171", "619"}
            BonneReponse := 1
        question:
            Enonce := "42 x 9 = ?"
            Reponses := array{"378", "358", "383", "379"}
            BonneReponse := 0
        question:
            Enonce := "75% de 480 = ?"
            Reponses := array{"370", "359", "360", "380"}
            BonneReponse := 2
        question:
            Enonce := "17 x 17 = ?"
            Reponses := array{"309", "288", "289", "290"}
            BonneReponse := 2
        question:
            Enonce := "45 x 4 = ?"
            Reponses := array{"160", "180", "200", "170"}
            BonneReponse := 1
        question:
            Enonce := "29 x 3 = ?"
            Reponses := array{"78", "67", "87", "86"}
            BonneReponse := 2
        question:
            Enonce := "23 x 6 = ?"
            Reponses := array{"138", "139", "137", "140"}
            BonneReponse := 0
        question:
            Enonce := "42 x 5 = ?"
            Reponses := array{"211", "210", "200", "212"}
            BonneReponse := 1
        question:
            Enonce := "22 x 11 = ?"
            Reponses := array{"242", "244", "240", "243"}
            BonneReponse := 0
        question:
            Enonce := "75% de 80 = ?"
            Reponses := array{"55", "6", "60", "58"}
            BonneReponse := 2
        question:
            Enonce := "15 x 15 = ?"
            Reponses := array{"245", "226", "235", "225"}
            BonneReponse := 3
        question:
            Enonce := "22 x 16 = ?"
            Reponses := array{"354", "332", "352", "347"}
            BonneReponse := 2
        question:
            Enonce := "27 x 16 = ?"
            Reponses := array{"433", "342", "432", "437"}
            BonneReponse := 2
        question:
            Enonce := "18 x 18 = ?"
            Reponses := array{"319", "304", "324", "325"}
            BonneReponse := 2
        question:
            Enonce := "28 x 18 = ?"
            Reponses := array{"484", "524", "504", "499"}
            BonneReponse := 2
        question:
            Enonce := "16 x 14 = ?"
            Reponses := array{"225", "223", "224", "222"}
            BonneReponse := 2
        question:
            Enonce := "75% de 300 = ?"
            Reponses := array{"215", "230", "225", "227"}
            BonneReponse := 2
        question:
            Enonce := "16 x 9 = ?"
            Reponses := array{"144", "146", "143", "124"}
            BonneReponse := 0
        question:
            Enonce := "16 x 8 = ?"
            Reponses := array{"218", "128", "148", "138"}
            BonneReponse := 1
        question:
            Enonce := "26 x 5 = ?"
            Reponses := array{"132", "125", "130", "150"}
            BonneReponse := 2
        question:
            Enonce := "19 x 19 = ?"
            Reponses := array{"341", "361", "360", "631"}
            BonneReponse := 1
        question:
            Enonce := "25 x 25 = ?"
            Reponses := array{"625", "635", "265", "645"}
            BonneReponse := 0
        question:
            Enonce := "47 x 3 = ?"
            Reponses := array{"140", "131", "121", "141"}
            BonneReponse := 3
        question:
            Enonce := "25 x 15 = ?"
            Reponses := array{"395", "376", "377", "375"}
            BonneReponse := 3
        question:
            Enonce := "14 x 18 = ?"
            Reponses := array{"247", "262", "252", "253"}
            BonneReponse := 2
        question:
            Enonce := "38 x 4 = ?"
            Reponses := array{"157", "147", "132", "152"}
            BonneReponse := 3
        question:
            Enonce := "13 x 6 = ?"
            Reponses := array{"88", "78", "77", "83"}
            BonneReponse := 1
        question:
            Enonce := "35 x 3 = ?"
            Reponses := array{"110", "125", "95", "105"}
            BonneReponse := 3
        question:
            Enonce := "23 x 17 = ?"
            Reponses := array{"391", "390", "381", "386"}
            BonneReponse := 0
        question:
            Enonce := "27 x 5 = ?"
            Reponses := array{"315", "135", "130", "136"}
            BonneReponse := 1
        question:
            Enonce := "28 x 9 = ?"
            Reponses := array{"251", "232", "252", "262"}
            BonneReponse := 2
        question:
            Enonce := "22 x 5 = ?"
            Reponses := array{"100", "112", "110", "108"}
            BonneReponse := 2
        question:
            Enonce := "30 x 9 = ?"
            Reponses := array{"268", "250", "270", "260"}
            BonneReponse := 2
        question:
            Enonce := "25 x 5 = ?"
            Reponses := array{"120", "125", "115", "123"}
            BonneReponse := 1
        question:
            Enonce := "20 x 20 = ?"
            Reponses := array{"380", "410", "400", "395"}
            BonneReponse := 2
        question:
            Enonce := "32 x 5 = ?"
            Reponses := array{"161", "170", "140", "160"}
            BonneReponse := 3
        question:
            Enonce := "15 x 4 = ?"
            Reponses := array{"62", "59", "65", "60"}
            BonneReponse := 3
        question:
            Enonce := "13 x 8 = ?"
            Reponses := array{"105", "103", "104", "124"}
            BonneReponse := 2
        question:
            Enonce := "24 x 5 = ?"
            Reponses := array{"118", "119", "140", "120"}
            BonneReponse := 3
        question:
            Enonce := "22 x 15 = ?"
            Reponses := array{"331", "340", "332", "330"}
            BonneReponse := 3
        question:
            Enonce := "43 x 7 = ?"
            Reponses := array{"321", "301", "306", "300"}
            BonneReponse := 1
        question:
            Enonce := "36 x 9 = ?"
            Reponses := array{"324", "334", "319", "326"}
            BonneReponse := 0
        question:
            Enonce := "29 x 9 = ?"
            Reponses := array{"621", "266", "260", "261"}
            BonneReponse := 3
        question:
            Enonce := "39 x 5 = ?"
            Reponses := array{"185", "196", "195", "194"}
            BonneReponse := 2
        question:
            Enonce := "14 x 17 = ?"
            Reponses := array{"328", "238", "228", "243"}
            BonneReponse := 1
        question:
            Enonce := "23 x 18 = ?"
            Reponses := array{"414", "413", "419", "409"}
            BonneReponse := 0
        question:
            Enonce := "43 x 6 = ?"
            Reponses := array{"528", "248", "258", "238"}
            BonneReponse := 2
        question:
            Enonce := "37 x 7 = ?"
            Reponses := array{"254", "239", "260", "259"}
            BonneReponse := 3
        question:
            Enonce := "10% de 300 = ?"
            Reponses := array{"28", "35", "32", "30"}
            BonneReponse := 3
        question:
            Enonce := "44 x 8 = ?"
            Reponses := array{"332", "357", "354", "352"}
            BonneReponse := 3
        question:
            Enonce := "34 x 3 = ?"
            Reponses := array{"12", "101", "102", "100"}
            BonneReponse := 2
        question:
            Enonce := "27 x 18 = ?"
            Reponses := array{"846", "476", "486", "485"}
            BonneReponse := 2
        question:
            Enonce := "10% de 240 = ?"
            Reponses := array{"42", "26", "24", "14"}
            BonneReponse := 2
        question:
            Enonce := "35 x 6 = ?"
            Reponses := array{"212", "230", "208", "210"}
            BonneReponse := 3
        question:
            Enonce := "26 x 15 = ?"
            Reponses := array{"385", "370", "390", "930"}
            BonneReponse := 2
        question:
            Enonce := "20% de 40 = ?"
            Reponses := array{"8", "7", "28", "18"}
            BonneReponse := 0
        question:
            Enonce := "75% de 160 = ?"
            Reponses := array{"119", "125", "100", "120"}
            BonneReponse := 3
        question:
            Enonce := "27 x 3 = ?"
            Reponses := array{"76", "18", "61", "81"}
            BonneReponse := 3
        question:
            Enonce := "48 x 6 = ?"
            Reponses := array{"289", "287", "286", "288"}
            BonneReponse := 3
        question:
            Enonce := "25% de 480 = ?"
            Reponses := array{"118", "121", "125", "120"}
            BonneReponse := 3
        question:
            Enonce := "42 x 7 = ?"
            Reponses := array{"292", "294", "299", "304"}
            BonneReponse := 1
        question:
            Enonce := "22 x 9 = ?"
            Reponses := array{"198", "178", "196", "197"}
            BonneReponse := 0
        question:
            Enonce := "39 x 6 = ?"
            Reponses := array{"214", "239", "234", "244"}
            BonneReponse := 2
        question:
            Enonce := "23 x 13 = ?"
            Reponses := array{"289", "297", "299", "319"}
            BonneReponse := 2
        question:
            Enonce := "21 x 16 = ?"
            Reponses := array{"346", "336", "335", "331"}
            BonneReponse := 1
        question:
            Enonce := "25% de 60 = ?"
            Reponses := array{"15", "14", "13", "51"}
            BonneReponse := 0
        question:
            Enonce := "20 x 7 = ?"
            Reponses := array{"150", "139", "120", "140"}
            BonneReponse := 3
        question:
            Enonce := "21 x 4 = ?"
            Reponses := array{"89", "79", "48", "84"}
            BonneReponse := 3
        question:
            Enonce := "47 x 7 = ?"
            Reponses := array{"329", "330", "334", "339"}
            BonneReponse := 0
        question:
            Enonce := "30 x 4 = ?"
            Reponses := array{"120", "100", "210", "140"}
            BonneReponse := 0
        question:
            Enonce := "17 x 13 = ?"
            Reponses := array{"222", "220", "221", "241"}
            BonneReponse := 2
        question:
            Enonce := "18 x 4 = ?"
            Reponses := array{"82", "92", "73", "72"}
            BonneReponse := 3
        question:
            Enonce := "47 x 5 = ?"
            Reponses := array{"235", "325", "236", "234"}
            BonneReponse := 0
        question:
            Enonce := "14 x 16 = ?"
            Reponses := array{"224", "229", "225", "226"}
            BonneReponse := 0
        question:
            Enonce := "50% de 240 = ?"
            Reponses := array{"120", "140", "115", "210"}
            BonneReponse := 0

MakeCalculQuestions() : []question =
    MakeCalculQuestionsFR()

MakeCalculQuestionsEN() : []question =
    MakeCalculQuestionsFR()

MakeCalculQuestionsES() : []question =
    MakeCalculQuestionsFR()

MakeCalculQuestionsDE() : []question =
    MakeCalculQuestionsFR()

MakeCalculQuestionsIT() : []question =
    MakeCalculQuestionsFR()
