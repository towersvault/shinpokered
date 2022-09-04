**New features exclusively for the master branch**
- Added nuzlocke mode

- The girl in Oak's lab toggles a built-in randomizer for wild pokemon and your starters
  - Shuffles all pokemon that can be gained through walking, surfing, fishing, or from the game corner
  - If activated early enough, your starter pokemon options are shuffled as well
  - Randomizes using a saved seed value, so the shuffled order is always preserved between play sessions
  - A new random seed is generated upon each new game
  - There are three pokemon lists based on base-stat-total; A, B, and C tiers
  - Pokemon are only shuffled within their own list in order to maintain some modicum of balance
  - Scripted events are unaffected (gifts, in-game trades, static encounters, etc)
  - The game's five legendary pokemon are excluded from randomization
  - The AREA feature of the pokedex automatically adjusts to show the new pokemon locations

- Paras is gifted in the Route 2 house in case the player has no pokemon that can learn Cut

- Added cloning and gene splicing

- Added shiny mercy
  - When a player encounters an AI trainer shiny pokemon, the next wild encounter will be shiny
  - Side effect: Because trainer 'mons can't be shiny in SHIFT mode, SET mode gives more chances to find wild shinies

- Added new superboss at the seafoam shore (activated the same as the existing missingno fight)

- Show Mewtwo to Mr. Fuji after beating the Elite 4 for a M.GENE

- Added Bill's secret garden behind his house
  - Put Mew in your top spot and show Bill to gain access
  - You will encounter the starter pokemon plus some other rarer pokemon
  - Shiny rates are 1-in-128 in this area

- Scaled back fishing, reduced its randomness, and made it more map-dependent

- Added spaceworld-style trainer back sprites for consistency with the spaceworld 'mon back sprites 

- Recalibrated the experience gain at the daycare
- the daycare lets you select moves to forget (if any) upon retreiving your pokemon
- Retrieving a daycare pokemon that could have evolved via level will trigger evolution and learn any missed-out moves
- Added a PC to the daycare
- The daycare can now support two evolutions back-to-back

- Teaching a TM as a field move (Dig/Teleport) no longer consumes the TM

- Added visual indicator when swapping bag space

- Tweaked a flag for shinies so it can be used as a debugging toggle

- Organized the female trainer code to be activated via assembler tags in the makefile (for easy reference)


---
**Hack-related fixes exclusively for the master branch**
- Fixed gift pokemon not having above-average DVs if sent to the box
- Adjusted Oak's pokemon moves
- Fixed text overlap for trainer Seiga
- The static wild encounters (voltorbs and legendaries) now respond to the Chansey cheat for shiny hunting
- Fixed an issue where the shiny animation has the wrong palette for the opponent on the GBC
- Fixed an oversight to make it so 648 stat exp / lvl function maxes out at lvl 100


---
**Hack-related fixes exclusively for the lite branch**
- Cleaned up compiler tags and made it easy to compile with spaceworld-style sprites
- Female trainer can be activated by compiling with the _FPLAYER tag
- TMs and HMs have their names determined by a list now


---
**New features and adjustments for both branches**
- Switched over to the xor-shift method of RNG

- Gamma shader is now 23% faster thanks to optimizations by easyaspi314

- The 60fps mode has better performance when playing in GBC-mode
  - Does this by using the double-speed feature of the GBC's processor 
  - Uses more battery as a trade-off

- Added rom hack version tracking for save files
  - It's a single byte in the save file that gets incremented each version
  - If the save byte does not match, the player is automatically warped back to Pallet Town
  - Helps prevent crashes and glitches when updating an older save file
- You will now be given the choice to warp if the rom hack version does not match

- If on GBC, intitializing options in a New Game turns 60 fps ON

- In GBC-mode, when a pokemon is caught, the resting ball now has a defined color
- Tossing pokeballs have color in GBC mode

- Increased the maximum game clock to 32767 hours

- Using X-Accuracy with a OHKO move now allows it to hit faster opponents

- The position of both switches in Vermilion Gym are now determined at the same time
- The switches in Vermilion Gym can now be discovered independently from one another
- Switches in Vermilion Gym will now properly take into acount vertical adjacents
- Restored unused text in the vermilion gym puzzle for finding the 2nd switch

- Daycare allows HM moves on entered pokemon

- Green and Red-JP have the original front sprites for fossil kabutops and fossil aerodactyl
- Green and Red-JP have the original text box corners 
- Restored intro "Presents" for all builds
- Adapted the japanese title screen logo, sfx, and motion for the jp builds
- Re-added the reference to the Kanto region in the JP translation
- Restored SHOP and POKE building tiles in Blue-JP
- SGB borders for JP versions are restored (with fixed centering for text)
- Added more text corrections for JP versions
- Added sfx variations unique to JP versions
- Swapped a trade NPC to a gentleman in Green and RedJP

- Fixed pokemon category translation: "Rat" to "Mouse"
- Fixed pokemon category translation: "Shellfish" to "Shell"
- Fixed translation: Route 14 trainer's comment about the legendary birds

- The function that shows the dex entry for starter pokemon is now more robust
  - It now works for any pokemon (like if the starters are changed or randomized)
  - It keeps a backup of the pokedex-owned flags instead of erasing them
  - Removed the unused Ivysaur flag

- AI can now handle fly/dig loops between the two pokemon
- Adjusted some AI anti-spam for status moves
- AI switch scoring applies an extra penalty for possibly switching a pokemon into a super-effective move

- Tweaked the fly menu to be more responsive and snappy
- Battle sprite organization updates and extra backs
- Organized front and back battle sprites to be controlled via assembler tags in the makefile
- The move relearner and move deleter code is now tethered to the _MOVENPCS makefile tag
- The running shoes code is now tethered to the _RUNSHOES makefile tag


---
**New fixes for original game bugs for both branches**
- Fixed a grass tile in the Forest tileset not counting for encounter generation
- Changed border block on route 16 to water to make it consistent with route 17
- Fixed a graphical error when Bide unleashes energy against a 'mon that is not being displayed
- Fixed screen tearing in battle when player or 'mon slides off the screen
- Fixed a bug from the vanilla game where boulder dust clouds do not show up well when pushing downwards
- Changed border block in cerulean city to field to make it consistent with route 5
- Fixed reading the route 16 sign from the other side on route 17 
- Added missing dungeon maps to battle transition functions
- Fixed using a ledge to land on a NPC
- Exit won't block you when warped to Fuji's house from Pokemon Tower
- Can no longer get blocked at the cinnabar gym door
- Player now faces up instead of left when stopped in the route 8 guard house
- Wavy line animation (psychic/psywave/night shade) now scrolls the top three screen lines (by easyaspi314)
- Fixed glitchy trainer card transition screens on GB-DMG
- Can no longer change facing while pushing a boulder
- Downward-moving sprites now get hidden behind text boxes
- NPC walking animation now updates during player movement

- Assigned a proper forget-move sfx during battle
- Fixed a bug having to do with rare instances of bending the audio pitch
- Victory music won't play if a wild 'mon faints but the player has no 'mons remaining; it's a blackout
- The jingle for finding a hidden item will no longer be skipped during an audio fadeout
- Fixed ball toss sfx not resetting the pitch envelope settings

- Fixed input priority on menus
- Cannot surf from the party menu if a NPC is in front of the player (entering or exiting surf)
- The player can now select a move even if frozen, and this fixes a PP underflow and link desync glitch
- Made many TextIDs close when pressing A instead of releasing A
- Binoculars can no longer pause the overworld by holding A from the wrong side

- Cannot use poison to black yourself out of the cable club because entering the club now heals your party
- Cannot use poison to black yourself out of the safari zone because the safari minigame now stops poison damage
- Cannot perform the 99-stack glitch anymore
- RAM adress D732 now gets cleared upon a new game
- The party heal function now detects glitch moves and loads 0 PP for them
- Closed 255 clone pokemon glitch and reduced saving delay to 15 frames

- Fixed a bug from the vanilla game where random NPC walk delay can underflow to 255 ticks
- Fixed an offset bug with the lucky game corner machine
- Minor code correction to Twineedle to prevent future errors 
- Applied the pokeyellow fix for in-game trade evolutions
- Accounted for underflow with switch-out messages
- Added an error trap to _Divide function for divide-by-zero calls


---
**Hack-related fixes for both branches**
- Minor timing fix to title object palette loading
- Fixed Raticate not appearing in Unknown Dungeon 2F in Blue-Jp
- Fixed incorrect encounters on route 13 in Blue-Jp
- Fixed an invalid apostrophe
- Fixed pewter npc following distance in 60 fps mode
- Fixed rom hack byte not getting set on new game
- Fixed an issue with trapping moves being allowed on switch-in
- Fixed typo causing incorrect game corner prizes
- Minor adjustments to title screen and intro
- Leech seed health drain animation now has correct coloring on GBC
- Fixed screen whiteouts not looking very smooth in GBC mode (like when entering the 'mon status screen)
- Re-fixed the celadon vending machine code
- More fixes for AI switching
- Made adjustment to EXP All message
