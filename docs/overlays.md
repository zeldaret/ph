# Overlays
Below is a list of all the overlays and what we call them. These can also be found in `OverlayManager.hpp`. Feel free to
contribute to this list!

 ID  | Name            | Slot | Description
-----|-----------------|------|-------------
`00` | Core            | 0    | Core game engine
`01` | ---             | 1    |
`02` | ---             | 1    |
`03` | ---             | 1    |
`04` | Load            | 2    | Scene loading
`05` | ---             | 2    |
`06` | ---             | 2    |
`07` | DownloadPlay    | 2    | Handles DS download play.
`08` | GameStart       | 3    | Handles starting the game.
`09` | Adventure       | 3    | Handles the adventure game mode.
`10` | FileSelect      | 3    | Handles the file selection screen.
`11` | DwcSetup        | 3    | Handles Wi-Fi connection setup.
`12` | Battle          | 3    | Handles the battle game mode.
`13` | Contact         | 3    | Handles contact mode.
`14` | Land            | 4    | Link and essential land-based actors.
`15` | Sea             | 4    | Handles the sea, Linebeck's ship, and sea-based actors.
`16` | Startup         | N/A  | Exists briefly on game startup. Initializes RNG, messages, and more.
`17` | Dungeon         | 5    | Handles courses for caves and dungeons.
`18` | Overworld       | 5    | Handles overworld courses on land.
`19` | ---             | 6    |
`20` | ---             | 6    |
`21` | ---             | 6    |
`22` | ---             | 6    |
`23` | ---             | 6    |
`24` | ---             | -    |
`25` | ---             | -    |
`26` | ---             | 6    |
`27` | ---             | 6    |
`28` | ---             | -    |
`29` | ---             | -    |
`30` | ---             | -    |
`31` | ---             | 7    |
`32` | ---             | 7    |
`33` | ---             | 7    |
`34` | ---             | -    |
`35` | ---             | -    |
`36` | ---             | -    |
`37` | ---             | -    |
`38` | ---             | -    |
`39` | ---             | -    |
`40` | ---             | 7    |
`41` | ---             | 8    |
`42` | ---             | -    |
`43` | ---             | 8    |
`44` | ---             | 8    |
`45` | ---             | 8    |
`46` | ---             | 9    |
`47` | ---             | 9    |
`48` | ---             | 9    |
`49` | ---             | 9    |
`50` | ---             | 10   |
`51` | ---             | 10   |
`52` | ---             | 10   |
`53` | Boomerang       | 11   | Handles the boomerang.
`54` | Scoop           | 11   | Handles the shovel.
`55` | Bomb            | 11   | Handles bombs and potions.
`56` | Bow             | 11   | Handles the bow.
`57` | Rope            | 11   | Handles the grappling hook.
`58` | Bombchu         | 11   | Handles bombchus.
`59` | Hammer          | 11   | Handles the hammer.
`60` | ---             | 12   |
`61` | ---             | 12   |

## Game modes
There is a list of game mode called `gGameModes` which contain overlay IDs to load into slot 1, 2, 3 and 12.

 Index | Slot 1 | Slot 2 | Slot 3 | Slot 12 | Usage
-------|--------|--------|--------|---------|-------
`0`    | None   | None   | None   | None    | Game load
`1`    | 1      | None   | 8      | None    | Startup screen (before title screen)
`2`    | 3      | 4      | 9      | None    | Adventure mode
`3`    | 1      | 6      | 10     | None    | File selection
`4`    | 1      | None   | 11     | 61      | Wi-Fi connection setup
`5`    | 1      | 7      | None   | None    | DS download play
`6`    | 1      | 4      | 12     | 60      | Battle mode
`7`    | 1      | None   | 13     | None    | Contact mode (trading items)
