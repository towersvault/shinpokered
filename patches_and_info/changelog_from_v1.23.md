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

- Relocated one of the rocket grunts in celadon city, and he now sells bulk coins in the post-game
  
- Trade evolutions no longer evolve at level 45
- Trade evolutions now alternately evolve with a stone at a certain level with some new hinting NPC text
  - Kadabra
    - Use a moon stone at level 35
	- Hinted at by a NPC in the Pewter Museum that comments on the moon stone
  - Haunter
    - Use a thunder stone at level 35
	- Hinted at by the Lavender Town NPC that asks if you believe in ghosts
  - Graveler
    - Use a fire stone at level 35
	- Hinted at by a NPC on Cinnabar Island that talks about the mansion
  - Machoke
    - Use a leaf stone at level 35
	- Hinted at by a house NPC in Pewter City that talks about trainers teaching pokemon

- A new NPC is in the north-south underground path for post-game mirror matches

- A new drink stand on the route 19 beach sells vending machine drinks

- Paras is gifted in the Route 2 house in case the player has no pokemon that can learn Cut

- Unused beedrill trade has been restored and placed on Route 22

- Added cloning and gene splicing

- Added shiny mercy
  - When a player encounters an AI trainer shiny pokemon, the next wild encounter will be shiny
  - Side effect: Because trainer 'mons can't be shiny in regular difficulty, hard mode gives more chances to find wild shinies

- Added new superboss at the seafoam shore (activated the same as the existing missingno fight)

- Show Mewtwo to Mr. Fuji after beating the Elite 4 for a M.GENE

- Added Bill's secret garden behind his house
  - Put Mew in your top spot and show Bill to gain access
  - You will encounter the starter pokemon plus some other rarer pokemon
  - Shiny rates are 1-in-128 in this area

- Added the MIST STONE: it will max-out all the stat exp of the pokemon on which it is used

- Scaled back fishing, reduced its randomness, and made it more map-dependent

- Added spaceworld-style trainer back sprites for consistency with the spaceworld 'mon back sprites 
- Blue-JP has spaceworld-style back sprites, and a corresponding _origback patch has been added

- Recalibrated the experience gain at the daycare
- the daycare lets you select moves to forget (if any) upon retreiving your pokemon
- Retrieving a daycare pokemon that could have evolved via level will trigger evolution and learn any missed-out moves
- Added a PC to the daycare
- The daycare can now support two evolutions back-to-back

- Teaching a TM as a field move (Dig/Teleport) no longer consumes the TM

- Added visual indicator when swapping bag space

- Tweaked a flag for shinies so it can be used as a debugging toggle

- Organized the female trainer code to be activated via assembler tags in the makefile (for easy reference)

- Added max revives to post-game shop on celadon mart 3f
- Cerulean mart sells escape rope per Yellow version
- Fuschia mart sells hyper potions per Yellow version
- Added a hidden max revive in celadon city
- Added a hidden super potion in celadon city
- Added a hidden moon stone in diglett's cave
- Added a hidden nugget in diglett's cave
- Added hidden potion on route 22
- Additional hidden potion in viridian city
- Added two hidden repels to pewter city
- Added a hidden great ball and pokedoll on route 6
- Added hidden max revive on route 11
- Added hidden ultra ball on route 8


---
**Hack-related fixes exclusively for the master branch**
- Fixed gift pokemon not having above-average DVs if sent to the box
- Adjusted Oak's pokemon moves
- Fixed text overlap for trainer Seiga
- The static wild encounters (voltorbs and legendaries) now respond to the Chansey cheat for shiny hunting
- Fixed an issue where the shiny animation has the wrong palette for the opponent on the GBC
- Fixed an oversight to make it so 648 stat exp / lvl function maxes out at lvl 100
- RemoveItemByID is now able to remove items from the backup bag space
- Repels can no longer waste the mew encounter
- Fixed bug in low HP alarm: Some sfx no longer get cut off when the player is at low HP
- Holding start or select will no longer print strange HP numbers when not on the status screen


---
**Hack-related fixes exclusively for the lite branch**
- Cleaned up compiler tags and made it easy to compile with spaceworld-style sprites
- Female trainer can be activated by compiling with the _FPLAYER tag
- TMs and HMs have their names determined by a list now


---
**New features and adjustments for both branches**
- Decoupled the harder difficulty to its own option bit and added the hard mode to the Lite branch
  - Pressing RIGHT while the cursor is in the BATTLE STYLE box will toggle the feature on/off
  - Contrasting this, pressing LEFT will let you select a battle style without toggling difficulty
  
- Hard mode adjustments
  - Trainer stat exp has been re-scaled to be more realistic to attainable amounts per level
  - No longer gives an exp bonus

- Debug Damage Display: Damage values will be displayed in battle as the UI updates as a debug cheat
  - Toggled on/off the same way as the softlock warp, but by using 'A' instead of 'B'.
  - Zero damage is not displayed
  - Damage is not displayed if either pokemon has zero HP remaining

- Switched over to the xor-shift method of RNG

- Gamma shader is now 23% faster thanks to optimizations by easyaspi314

- The 60fps mode has better performance when playing in GBC-mode
  - Does this by using the double-speed feature of the GBC's processor 
  - Uses more battery as a trade-off
  
- Added optimizations to how OAM data is prepared so that overworld sprites wobble less

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
- Restored the saucy innuendo for the Nugget bridge dialogue in the jp builds
- Restored the religious text in the Pewter museum in the jp builds

- Fixed pokemon category translation: "Rat" to "Mouse"
- Fixed pokemon category translation: "Shellfish" to "Shell"
- Fixed translation: Route 14 trainer's comment about the legendary birds
- Fixed text giving the wrong description of guard spec.
- Fixed woman on silph co 10F having a blank line in her text 

- The function that shows the dex entry for starter pokemon is now more robust
  - It now works for any pokemon (like if the starters are changed or randomized)
  - It keeps a backup of the pokedex-owned flags instead of erasing them
  - Removed the unused Ivysaur flag

- AI can now handle fly/dig loops between the two pokemon
- Adjusted some AI anti-spam for status moves
- AI switch scoring applies an extra penalty for possibly switching a pokemon into a super-effective move
- AI layer 3 will slightly discourage a move 25% of the time if it hits neutral with no STAB
  - Wherein a special move is being used on a 'mon with greater attack than special stat
  - Wherein a physical move is being used on a 'mon with greater special than attack stat
- AI layer 3: There is a 79.68% chance per damaging move that the AI is blind to a player switching
  - Prevents situations where AI will always pick the ideal move against a switch-in
  - 'Blind' in this case means the AI will act as if the move being considered has neutral effectiveness
  - The AI might still favor a STAB move or a move that works better with its own stats

- Withdrawing or depositing a key item from/to the player's PC will default its quantity to 1
- Item evolutions having a level requirement is now supported
- Tweaked the fly menu to be more responsive and snappy
- Battle sprite organization updates and extra backs
- Organized front and back battle sprites to be controlled via assembler tags in the makefile
- The move relearner and move deleter code is now tethered to the _MOVENPCS makefile tag
- The running shoes code is now tethered to the _RUNSHOES makefile tag
- Original flashing move animations from Red-JP and Green are tethered to the (unused) _JPFLASHING makefile tag
- The enemy trainer's HUD is now updated after it uses a healing item

- Removed restore sfx from the AI x-accuracy item
- Added the restore sfx to all AI hp-recovery items


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
- Fixed NPCs treating the last visible screen column/row as off-screen
- Fixed a graphical bug on the naming screen that apears on cheapo flash carts
- Fixed double-edge animation being off-center for the enemy pokemon

- The proper forget-move poof sfx plays during battle
- Fixed a bug having to do with rare instances of bending the audio pitch
- Victory music won't play if a wild 'mon faints but the player has no 'mons remaining; it's a blackout
- The jingle for finding a hidden item will no longer be skipped during an audio fadeout
- Fixed ball toss sfx not resetting the pitch envelope settings
- Added protection against oak's lab music cutting a channel off
- Fixed *thud* sfx playing when exiting via a warp tile

- Fixed input priority on menus
- Fixed A-button input priority on the left side of the scrolling pokedex list
- Cannot surf from the party menu if a NPC is in front of the player (entering or exiting surf)
- The player can now select a move even if frozen, and this fixes a PP underflow and link desync glitch
- Made many TextIDs close when pressing A instead of releasing A
- Binoculars can no longer pause the overworld by holding A from the wrong side
- Fixed an issue where pressing a button on a menu while holding A is treated as an A-press

- Cannot use poison to black yourself out of the cable club because entering the club now heals your party
- Cannot use poison to black yourself out of the safari zone because the safari minigame now stops poison damage
- Cannot perform the 99-stack glitch anymore
- RAM adress D732 now gets cleared upon a new game
- The party heal function now detects glitch moves and loads 0 PP for them
- Closed 255 clone pokemon glitch and reduced saving delay to 15 frames
- Fixed trainer escape glitch via blacking out from a wild battle

- Minor code correction to Twineedle to prevent future errors 
- Fixed an issue where the counter for the Disable effect had the wrong distribution if the target was slower

- Fixed a bug from the vanilla game where random NPC walk delay can underflow to 255 ticks
- Fixed an offset bug with the lucky game corner machine
- Applied the pokeyellow fix for in-game trade evolutions
- Accounted for underflow with switch-out messages
- Added an error trap to _Divide function for divide-by-zero calls
- Fixed hidden coins not giving the correct amount
- Slot machine no longer copies too much tile data
- Corrected and clarified the quiz text in the cinnabar gym
- Clarified the text for the super repel on 2F of the celadon dept store
- Viridian gym statue will not spoil the gym leader's name reveal
- Fixed increment bug in CheckForTilePairCollisions
- Fixed inaccurate text when getting the rock slide TM


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
- Holding B in zero delay text mode will not revert the text to FAST speed
- Major cleanup of options constants
- Fixed a minor issue where the first pokemon an opponent sends out can't be switched
- TM/HM name list fixed so it can be in any bank
- Fixed extra options not getting initialized correctly
- Updated Makefile organization
- Added script that verifies the RGBDS version when compiling
- Updated the project to build with RGBDS 0.6.0
- Readjusted enemy stat exp accumulation and removed reduntant lines in CriticalHitTest
- Updating a save to a new hack version now checks to see if the elite-4 were already defeated
- Fixed problem with the menu selection byte changing if opponent switches first (affects mimic and others)
- If Transform copies an opponent's Transform move, and the the PP of that move is < 6, it will copy that move's instantaneous PP less 1.
- Fixed a problem where multi-hit moves could overflow the damage effectiveness multiplier
