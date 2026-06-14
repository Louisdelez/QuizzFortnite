#!/usr/bin/env python3
# Quizz "Jeux video" (image jaquette/logo -> nom du jeu/serie). FR + wrappers.
# ⚠ visuels sous licence : OK serveur prive. Filtre auto des sans-image.
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from quiz_common import build_images, emit_bank, filter_with_images
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

BANK_ONLY = "--bank-only" in sys.argv
ROOT = _ROOT

G = [
 ("Minecraft","Minecraft",0),("Fortnite","Fortnite",0),
 ("Grand Theft Auto V","GTA V",0),("The Legend of Zelda","Zelda",0),
 ("Super Mario Bros.","Super Mario",0),("Tetris","Tetris",0),
 ("Pac-Man","Pac-Man",0),("Space Invaders","Space Invaders",0),
 ("Call of Duty","Call of Duty",0),("FIFA (video game series)","FIFA",0),
 ("Counter-Strike","Counter-Strike",0),("League of Legends","League of Legends",0),
 ("Among Us","Among Us",0),("Roblox","Roblox",0),
 ("The Witcher 3: Wild Hunt","The Witcher 3",0),("Red Dead Redemption 2","Red Dead Redemption 2",0),
 ("The Elder Scrolls V: Skyrim","Skyrim",0),("Assassin's Creed","Assassin's Creed",0),
 ("Sonic the Hedgehog","Sonic",0),("Pokemon Red and Blue","Pokemon",0),
 ("Tomb Raider","Tomb Raider",0),("Resident Evil","Resident Evil",0),
 ("Mortal Kombat","Mortal Kombat",0),("Street Fighter","Street Fighter",0),
 ("Need for Speed","Need for Speed",0),("World of Warcraft","World of Warcraft",0),
 ("Overwatch","Overwatch",0),("Cyberpunk 2077","Cyberpunk 2077",0),
 ("Halo (franchise)","Halo",0),("God of War (franchise)","God of War",0),
 # ---- palier 1 ----
 ("The Last of Us","The Last of Us",1),("Uncharted","Uncharted",1),
 ("Final Fantasy","Final Fantasy",1),("Metal Gear Solid","Metal Gear Solid",1),
 ("Dark Souls","Dark Souls",1),("Elden Ring","Elden Ring",1),
 ("Bloodborne","Bloodborne",1),("Sekiro: Shadows Die Twice","Sekiro",1),
 ("Diablo (video game)","Diablo",1),("StarCraft","StarCraft",1),
 ("Doom (1993 video game)","Doom",1),("Quake (video game)","Quake",1),
 ("Half-Life (video game)","Half-Life",1),("Portal (video game)","Portal",1),
 ("BioShock","BioShock",1),("Borderlands (video game)","Borderlands",1),
 ("Far Cry","Far Cry",1),("Watch Dogs","Watch Dogs",1),
 ("Mass Effect","Mass Effect",1),("Dragon Age","Dragon Age",1),
 ("The Sims","Les Sims",1),("SimCity","SimCity",1),
 ("Civilization (series)","Civilization",1),("Age of Empires","Age of Empires",1),
 ("Super Smash Bros.","Super Smash Bros",1),("Mario Kart","Mario Kart",1),
 ("Animal Crossing","Animal Crossing",1),("Kirby (series)","Kirby",1),
 ("Donkey Kong","Donkey Kong",1),("Metroid","Metroid",1),
 ("Castlevania","Castlevania",1),("Mega Man","Mega Man",1),
 ("Crash Bandicoot","Crash Bandicoot",1),("Spyro the Dragon","Spyro",1),
 ("Rayman","Rayman",1),("Hollow Knight","Hollow Knight",1),
 ("Hades (video game)","Hades",1),("Stardew Valley","Stardew Valley",1),
 ("Terraria","Terraria",1),("Rocket League","Rocket League",1),
 ("Valorant","Valorant",1),("Apex Legends","Apex Legends",1),
 ("PUBG: Battlegrounds","PUBG",1),("Genshin Impact","Genshin Impact",1),
 # ---- palier 2 ----
 ("Pong","Pong",2),("Donkey Kong (1981 video game)","Donkey Kong 1981",2),
 ("Galaga","Galaga",2),("Dig Dug","Dig Dug",2),
 ("Frogger","Frogger",2),("Centipede (video game)","Centipede",2),
 ("Asteroids (video game)","Asteroids",2),("Q*bert","Q*bert",2),
 ("Prince of Persia","Prince of Persia",2),("Myst","Myst",2),
 ("Wolfenstein 3D","Wolfenstein 3D",2),("Duke Nukem","Duke Nukem",2),
 ("Deus Ex","Deus Ex",2),("System Shock","System Shock",2),
 ("Baldur's Gate","Baldur's Gate",2),("Planescape: Torment","Planescape Torment",2),
 ("Fallout (series)","Fallout",2),("Disco Elysium","Disco Elysium",2),
 ("Ico (video game)","Ico",2),("Shadow of the Colossus","Shadow of the Colossus",2),
 ("Katamari Damacy","Katamari Damacy",2),("Okami","Okami",2),
 ("Earthbound","Earthbound",2),("Chrono Trigger","Chrono Trigger",2),
 ("Secret of Mana","Secret of Mana",2),("Suikoden","Suikoden",2),
 ("Persona (series)","Persona",2),("Nier: Automata","Nier Automata",2),
 ("Monster Hunter","Monster Hunter",2),("Dead by Daylight","Dead by Daylight",2),
 ("Cuphead","Cuphead",2),("Celeste (video game)","Celeste",2),
 ("Undertale","Undertale",2),("Braid (video game)","Braid",2),
 ("Limbo (video game)","Limbo",2),("Journey (2012 video game)","Journey",2),
 ("Outlast","Outlast",2),("Amnesia: The Dark Descent","Amnesia",2),
 # ---- marge palier 0/1 (popularite) ----
 ("Candy Crush Saga","Candy Crush",0),("Clash of Clans","Clash of Clans",0),
 ("Clash Royale","Clash Royale",0),("Angry Birds","Angry Birds",0),
 ("Subway Surfers","Subway Surfers",0),("Temple Run","Temple Run",0),
 ("Flappy Bird","Flappy Bird",0),("Fall Guys","Fall Guys",0),
 ("Brawl Stars","Brawl Stars",0),("Pokemon Go","Pokemon Go",0),
 ("Dota 2","Dota 2",0),("Hearthstone","Hearthstone",0),
 ("Five Nights at Freddy's","Five Nights at Freddy's",0),("Geometry Dash","Geometry Dash",0),
 ("Plants vs. Zombies","Plants vs Zombies",0),("Cut the Rope","Cut the Rope",1),
 ("Fruit Ninja","Fruit Ninja",1),("Crossy Road","Crossy Road",1),
 ("Sea of Thieves","Sea of Thieves",1),("It Takes Two (video game)","It Takes Two",1),
 ("Mario Party","Mario Party",1),("Just Dance (video game series)","Just Dance",1),
 ("Tekken","Tekken",1),("Guilty Gear","Guilty Gear",2),
 ("Gran Turismo (series)","Gran Turismo",1),("Forza Horizon","Forza Horizon",1),
 ("Pro Evolution Soccer","PES",1),("NBA 2K","NBA 2K",1),
]

items = [{"id": w, "wiki": w, "tier": t,
          "names": {"FR": n, "EN": n, "ES": n, "DE": n, "IT": n}}
         for (w, n, t) in G]
seen = set(); dd = []
for it in items:
    if it["names"]["FR"] in seen: continue
    seen.add(it["names"]["FR"]); dd.append(it)
items = dd
print("Jeux video (avant filtre) :", len(items))
items = filter_with_images(items)
print("Jeux video (avec image) :", len(items))

if not BANK_ONLY:
    errs = build_images(items, f"{ROOT}/assets/jeuxvideo", "jv")
    if errs:
        print("ERREURS:"); [print("  " + e) for e in errs]; sys.exit(1)
    print("OK : images jeuxvideo/")

ENONCE = {"FR": "Quel est ce jeu video ?", "EN": "What video game is this?",
          "ES": "Que videojuego es este?", "DE": "Welches Videospiel ist das?",
          "IT": "Quale videogioco e questo?"}
emit_bank(f"{ROOT}/verse/jeuxvideo_bank.verse",
          "jeuxvideo_bank.verse — Quizz JEUX VIDEO (jaquettes/logos Wikipedia)",
          "JeuxVideoDiff", "JeuxVideo", ENONCE, items, shared=True, seed_prefix="jeuxvideo",
          img_ref_of=lambda i: "jeuxvideo.jv_%04d" % (i + 1))
t = [it["tier"] for it in items]
print("Paliers : %d/%d/%d" % (t.count(0), t.count(1), t.count(2)))
