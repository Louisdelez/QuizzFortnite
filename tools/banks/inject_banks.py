#!/usr/bin/env python3
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)
# Greffe les banques generees (_flags_bank / _capitals_bank) dans quiz_manager.verse :
# remplace tout depuis le marqueur "# ===== Banque DRAPEAUX FR" jusqu'a la fin du fichier.
# (FlagDiff / CapDiff, inchanges, restent definis plus haut dans le fichier.)
SRC = f"{_ROOT}/verse/quiz_manager.verse"
MARK = "# ===== Banque DRAPEAUX FR"

def banks_only(path):
    txt = open(path, encoding="utf-8").read()
    i = txt.index("# ===== Banque")
    # remonte au debut de la ligne (indentation comprise)
    i = txt.rfind("\n", 0, i) + 1
    return txt[i:].rstrip("\n") + "\n"

flags = banks_only(f"{_ROOT}/tools/_flags_bank.verse.txt")
# capitales : on garde TOUT le fichier (CapDiff + banques) — CapDiff n'existe
# qu'ici, contrairement a FlagDiff defini plus haut dans quiz_manager.verse.
caps = open(f"{_ROOT}/tools/_capitals_bank.verse.txt", encoding="utf-8").read().rstrip("\n") + "\n"

src = open(SRC, encoding="utf-8").read()
j = src.index(MARK)
j = src.rfind("\n", 0, j) + 1
head = src[:j]

out = head + flags + "\n" + caps
open(SRC, "w", encoding="utf-8", newline="\n").write(out)
print("OK : banques 5 langues greffees (%d lignes au total)" % out.count("\n"))
