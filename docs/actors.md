# Actors
This file documents what is known about actors in the game.
- [Actor IDs](#actor-ids)

## Actor IDs
Many actors have a 4-character ID associated with it. This table shows all known IDs and their respective meanings or
translations. Feel free to contribute to this list!

> [!NOTE]
> These IDs will appear in memory in reverse order. This is because allocation IDs are often interpreted as 32-bit integers,
> and integers are stored in little-endian which effectively "reverses" the character order.

### Fairies

 ID    | Translation  | Meaning
-------|--------------|---------
`NAVI` | Navi         | Spirit of Courage (Ciela)
`FCNV` | Force Navi   | Spirit of Power (Leaf)
`WSNV` | Wisdom Navi  | Spirit of Wisdom (Neri)

### Shop items

 ID    | Translation  | Meaning
-------|--------------|---------
`ITAP` | Item Arrow Pod | Quiver
`ITAR` | Item Arrows | 10 Arrows
`ITB2` |
`ITBB` | Item Bomb Bag
`ITBK` |
`ITBM` | Item Bombs | 10 Bombs
`ITBT` | Item Bombchus | 10 Bombchus
`ITBY` |
`ITCC` |
`ITDM` |
`ITHU` | | Heart container
`ITPB` | Item Potion Bottle
`ITSL` | Item Shield
`ITSO` | | Sold out sign in shop
`ITSP` | Item Ship Part
`ITSR` | Item Source | Power/Wisdom/Courage gem shop item (みなもと or "source" in Japanese)
`ITTR` | Item Treasure

### Pickups

 ID    | Translation  | Meaning
-------|--------------|---------
`FLAL` | Fill Arrows | 5 arrows
`FLBM` | Fill Bombs | 3 bombs
`FLBT` | Fill Bombchus | 3 bombchus
`FLTM` | Fill Time | Temporarily adds sand to the hourglass, spawns from yellow pots
`HART` | Heart
`RUPY` | Rupee

### Player

 ID    | Translation  | Meaning
-------|--------------|---------
`ARRW` | Arrow
`BLST` | Bomb blast
`BMRN` | Boomerang
`BMTY` | Bombchu
`BOMB` | Bomb
`DRUM` | Drum | Storage drum on the Ghost Ship, held by Link
`FGGN` | Fog
`ROPE` | Rope | Grappling hook
`PLDM` | Player Dummy | Placeholder for switching between Gongoron/Link
`SBEM` | Sword Beam
`STNE` | Stone | Stone held by Link
`TARU` | Taru (たる) | Barrel held by Link
`TSUB` | Tsubo (つぼ) | Pot held by link

### Dungeon

 ID    | Translation  | Meaning
-------|--------------|---------
`BIGR` | Big Rock
`BKEY` | Boss Key
`CRYS` | Crystal | Shape crystal
`FIRB` | Fire Bar
`FIRS` | Fire Sphere | Winder (electric balls following each other, used to be fire balls in older games)
`FORC` | Force Gem
`NKEY` | ??? Key | Small key or ghost key
`NTRP` | Needle Trap | Blade Trap
`PFLR` | Pen Floor | Moves along a drawn path
`PSBA` | Pushable Armos | Armos statue
`PSBL` | Push Block
`RFLR` | Repeating? Floor | Moves repetetively along a set path
`RLST` | Rolling Stone
`RLSG` | Rolling Stone Generator
`SPRL` | Spike Roller
`WBLK` | Wind Block | The blocks in the Wind Temple that blow air
`WPHL` | Warp Hole | Blue warp

### Enemies

 ID    | Translation  | Meaning
-------|--------------|---------
`AMOS` | Armos
`BBLE` | Bubble
`BEE0` | Bee
`BEEH` | Bee Hive
`BMOS` | Beamos beam
`BMSE` | Beamos enemy
`CHS2` | Chaser 2 | Swift Phantom
`CHS4` | Chaser 4 | Reapling
`CHS6` | Chaser 6 | Gold Phantom
`CHSR` | Chaser | Phantom
`CHUC` | ChuChu
`CROW` | Crow | Bird that steals rupees
`EGST` | Escape Ghost | Poe
`FLTB` | Flying Tsubo (つぼ) | Flying pot
`FSHB` | Fish Bullet | Geozard bullet
`FSHM` | Fishman | Geozard
`GELL` | Gel
`HNKS` | Hinocks | Hinox
`ICHC` | Iwa (いわ) ChuChu | Rock ChuChu
`ICHH` | Iwa (いわ) ChuChu Helmet | The rock on a ChuChu's head
`KETH` | Keese
`KMBD` | | Wizzrobe
`KOKO` | Cucco
`LKLK` | Like Like
`MLDW` | Moldworm | Sandworm
`OCSH` | Octa Shell | Octorok bullet
`OCTA` | Octarock | Octorok
`PBLN` | Petit Blin | Miniblin
`PBZK` | | Eye Slug
`PLSV` | Pols Voice
`POON` | Pōn (ポーン) | Hardhat beetle
`RAT0` | Rat
`RATH` | Rat Hole
`RAT1`
`SNAK` | Snake | Rope, the purple snake enemy
`SPDR` | Spider | Skulltula
`STLB` | Stalfos bone | Projectile thrown by Stalfos
`STLF` | Stalfos
`STLH` | Stalfos head
`STLP` | Stalfos | Stationary, throws bones constantly
`STLW` | Stalfos Warrior
`TAIL` | Tail | Moldorm head
`TALB` | Tail Body | One of Moldorm's 3 body parts
`TEKT` | Tektite
`UBLN` | Umi (うみ) Blin | Pirate miniblin
`WTCR` | Watcher | Phantom eye
`YETI` | Yook

### Bosses

 ID    | Translation  | Meaning
-------|--------------|---------
`CBS0` | Cubus Girl Boss
`CBS2` | Cubus Girl Bullet
`CBS3` | Cubus Girls Controller | Only exists while there are multiple Cubus sisters
`CBS4` | Cubus Girl Split Bullet
`PWBS` | Power Boss | Dongorongo
`PBFR` | Power Boss Fire | Dongorongo fire ball
`RYRD` | Reyard | Crayk
`RYDH` | Reyard Hamp | Weak spots on Crayk's shell
`RYDM` | Reyard Mini | Craykling
`RYDS` | Reyard Shell
`SBOS` | Sea Boss | Massive Eye
`SBEY` | Sea Boss Eye
`WBSA` | Wind boss attack | Tornados that Cyclok spits at Link
`WBSS` | Wind boss | Cyclok
`WBST` | Wind boss tornado | Tornados that fling bombs up

### NPCs

 ID    | Translation  | Meaning
-------|--------------|---------
`ANCS` | Anchored ship | SS Linebeck on land
`BMST` | Bar Master | Midori, bartender of Mercay Island
`CBS1` | Cubus Girl 1 | Cubus sister (inside Ghost Ship)
`CCLD` | Character Child | Chaco, child of Molida Island
`CHSB` | Character Husband | Old wayfarer
`CMML` | Character Mom Large | Potato, woman in yellow of Molida Island
`CMMS` | Character Mom Small | Ocara, woman in green of Molida Island
`CMNB` | Character Man B | Ojibe, man in green of Mercay Island
`CMNC` | Character Man C | Doudo, man in blue of Mercay Island
`COMA` | Character Old A | Tuzi, woman in brown of Mercay Island
`COBS` | Character Old B/Shared | Maltza, man at the bar of Mercay Island
`CPSK` | Carpenter Spirit Knight? | Cobble spirit (Brant, Bremeur, Doylan, Max)
`CRPS` | Corpse | Non-moving skeleton with a blue spirit
`CSTM` | Character Standard Man | Adult Male NPC
`CWIF` | Character Wife | Maronie, woman in purple of Molida Island
`CWMB` | Character Woman B | Saya, woman in blue of Mercay Island
`CWMC` | Character Woman C | Fuchiko, woman in purple of Mercay Island
`CWMN` | Character Woman | Adult Female NPC
`FLNK` | Fake Link | Nyeve
`FRBS` | Frog Boss | Cylos, chief of the golden frogs
`FRCH` | Frog Character | Golden frogs swimming in the uncharted island cave
`FUJI` | Fuji | Fuzo, the Cannon Island apprentice
`GDMN` | | Nyave, sails in the southwestern sea
`GRCB` | Goron Child B
`GRMG` | Goron ??? | Gongoron
`GRNC` | Goron Child
`GRNE` | Goron Elder | Biggoron
`GRNM` | Goron Man
`ITS3` | Item Seller NPC 3 | Mi, item seller of Goron Island
`ITS2` | Item Seller NPC 2
`ITSN` | Item Seller NPC | Ai, item seller of Mercay Island
`JUDG` | Judge | The treasure teller
`LNBK` | Linebeck
`LNB2` | Linebeck 2
`MMID` | Mermaid | Joanne
`MNRT` | | Eddo, the Cannon Island inventor
`MREG` | | Gazpacho, the shipyard worker
`MTNP` | Mato (まと) NPC | Romanos
`PLLB` | Pirate Lady Linebeck | Linebeck during fights with Jolene
`PLSD` | Pirate Lady Sword | Jolene's sword
`POST` | Mailbox
`PRLD` | Pirate Lady | Jolene
`PSTM` | Postman
`SAUZ` | Zauz
`SITS` | Sea Item Shopkeeper | Beedle
`SMTN` | Salvatore Mato (まと) NPC | Salvatore
`SWON` | Shīwan (シーワン) | Oshus
`TETR` | Tetra
`TRAD` | Trader | Freedle
`TRAB` | Trade Box/Bucket

### Sea

 ID    | Translation  | Meaning
-------|--------------|---------
`BJFS` | ??? Jellyfish | Infinite rupee jellyfish
`BUII` | Buoy | Sea Trap, shoot both to lower the rope
`CBLS` | Cannon Ball Blast
`CNBL` | Cannon Ball
`DNPC` | ??? NPC | NPC Ship
`EFWV` | Effect Wave
`EFRP` | Effect Ripple
`FLPR` | Flapper | Eyeball monster
`FSRL` | Fish Reel | Roaming fish
`GFIS` | Golden Frog ???
`GSIP` | Ghost Ship
`GYRG` | Gyorg
`GYMG` | Gyorg monster generator
`HRCN` | Hurricane | Stops you from going to other seas
`KMGA` | Kamome (カモメ) Generator | Seagull generator
`KMME` | Kamome (カモメ) | Seagull
`LOND` | | Explosive barrel
`PLSP` | Pirate Lady Ship | Jolene's ship
`PSIP` | Pirate Ship
`SEKE` | Seeker? | Flying fish, red/orange flying enemy
`SEOC` | Sea Octorok
`SHRT` | Sea Heart | Drops from enemies
`SLTR` | Salvage ??? | Salvage arm
`SLOC` | Salvage Octorok
`SLRC` | Salvage Rupee ???
`SNGA` | Sea NPC Generator | Spawns sea monsters
`SNAV` | Sea Navi | Shows proximity to the Ghost Ship
`SPKN` | Sea Plant ??? | Eye Plant
`SROP` | Sea Rope | Sea Trap rope, jump over to avoid damage
`SRPY` | Sea Rupee | Drops from enemies
`STND` | Sea Tornado
`TOPD` | Torpedo
`TSIP` | Trade Ship | Beedle's Shop Ship

### Map/Events

 ID    | Translation  | Meaning
-------|--------------|---------
`ACOB` | Action Object | Performs actions when Link gets close to it
`ATAR` | Attention Area | Moves the camera to something important
`BRMP` | Boss Room Power Tag | Dongorongo boss room
`BRMT` | Boss Room Tag
`CHOB` | Chaser Object? | Spawns a Phantom
`DGTG` | Dig Tag | Diggable spot
`ENGE` | Enemy Generator | Spawns an enemy when Link is locked inside a small room
`EVIC` | Event Icon | Exclamation point icon on the map screen
`EQAR` | Earthquake Area
`FMSG` | Freestanding? Message | Freestanding textbox
`ITGE` | Item Generator | Spawns an item, such as a small key
`NCMA` | NPC Conversation Message?
`NCM2` | NPC Conversation Message 2?
`NMSG` | Navi Message | Starts dialogue with the fairy
`RMTG` | Room Tag | Midpoint of small rooms, such as houses
`SWDS` |
`SWOB` | Switch Object | Causes an event when one or more switches are active
`VOCA` | Voice Area | Listens for microphone volume while Link is in the area
`WNAR` | Wind Area | Creates gusts of wind that push Link

### Cutscenes

 ID    | Translation  | Meaning
-------|--------------|---------
`BEAC` | Bellum Actor? | Appears on save file load when Tetra pleas for help
`DMCH` | Demo Character
`DMHG` | Demo Hourglass
`DMKS` | Demo Kamishibai (かみしばい) | Storytelling with pictures
`DMTR` | Demo Tetra

### Minigames

 ID    | Translation  | Meaning
-------|--------------|---------
`MTGH` | Mato (まと) Ghost | Ghost target
`MTGR` | Mato (まと) Girl | Girl target

### Unknown

 ID    | Translation  | Meaning
-------|--------------|---------
`EFRL`
`CMSG` | C Message?
`TMAP` | Treasure Map
`BTCH`
`BTRF`
`BTDC`
`FBSS`
`FBS1`
`VLRG`
`HPLP`
`HLMK`
`GO1M`
`GROK`
`KMDB`
`PMET`
`PBZK`
`STLP`
`STLH`
`WSBS`
`WSBH`
