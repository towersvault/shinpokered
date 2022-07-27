# Shin Pokémon Red and Blue

Version 1.23.XX

This is a rom hack of pokemon red & blue based on the Pret team's disassembly.  
It's a mostly-vanilla hack that focuses on fixing game engine bugs and oversights from the original game.  
Additionally, trainer AI routines are improved and multiple quality-of-life improvements have been added.  
Think of it as what the Nintendo Virtual Console re-release of red & blue might have been (plus a few extra goodies). 

Read the "Guide to New Player Functions" for instructions on all the new stuff the player can do.

Don't like the non-vanilla changes? Prefer only the bugfixes and AI improvements? Want a codebase from which to launch your own rom hack?
Then the [Lite branch](https://github.com/jojobear13/shinpokered/tree/lite) is what you want. Head on over and start compiling.

A bash script randomizer, "randoshinred", is now in beta test.

**IMPORTANT**: Download the BPS patch file of the version you want and apply it to the correct USA rom. 
- The "_origback" BPS patches are alternatives for red & blue that keep the original back sprites. 
- Use the tool [FLIPS](https://www.romhacking.net/utilities/1040/) to apply the BPS patches.   
- **Red patches (shin pokemon red, red_origback, and red-jp) are applied to a USA Red ROM.**
- **All other patches (Blues and Greens) are applied to a USA Blue ROM.**


***Includes Pokemon Green and Japanese Red!***
- The compiler primarily builds the graphics and cerulean cave layout back to the original japanese release.
- Pokedex entries adapt the original Green version text that was translated in Fire Red.
- Pokedex uses metric units.

***Now Includes Japanese Blue!***
- Primarily builds the lists for encounters, trades, and prizes that were in the never-localized japanese release.
- Pokedex uses metric units.

***Updating Your Save File***
Deactivate all special options and NPC toggles in the old save if it's from an earlier patch.  
When loading an old save file with the latest patch, the player is automatically warped to Pallet Town.  
Normally this will be enough to update the save file without doing anything else.  
It's possible you may still have issues upon loading a save from a previous patch or an unpatched game.  
To prevent this from happening, save in the outdoor Pallet Town map on the old save.  
You might be blocked by invisible walls upon loading the game.  
To fix this, you must use the Softlock Warp detailed below to teleport back to Pallet Town.  

		
#Screenshots
-----------

Title Screens  (GBC Palettes)  
![Title Screen 1](/screenshots/bgb00028.bmp?raw=true)
![Title Screen 2](/screenshots/bgb00029.bmp?raw=true)
![Title Screen 3](/screenshots/bgb00030.bmp?raw=true)  
![Title Screen 4](/screenshots/bgb00031.bmp?raw=true)
![Title Screen 5](/screenshots/bgb00032.bmp?raw=true)

Pokemon Yellow Backported Palettes and Gym Leader Names Restored  
![Backported Palettes](/screenshots/bgb00022.bmp?raw=true)
![Gym Leader Names](/screenshots/bgb00037.bmp?raw=true)

Rematches  
![Rematches](/screenshots/bgb00003.bmp?raw=true)

Trainer AI, Shiny Palette & Symbol, Exp Bar, Spaceworld Back Sprites  
Gender & Caught symbols in Wild Battles, Colored Attacks in GBC-mode  
Colored tossing animations in GBC-mode  
![Battle Screen Upgrades 1](/screenshots/bgb00020.bmp?raw=true)
![Battle Screen Upgrades 2](/screenshots/bgb00021.bmp?raw=true)
![Battle Screen Upgrades 3](/screenshots/shinpokered_colored_tossing.gif?raw=true)

TMs in Marts with Abbreviated Names  
![Marts](/screenshots/bgb00016.bmp?raw=true)

Shiny Animation  
![Shiny Animation](/screenshots/bgb00019.gif?raw=true)

Girl Trainer  
![Girl Trainer 1](/screenshots/bgb00026.bmp?raw=true)
![Girl Trainer 2](/screenshots/bgb00025.bmp?raw=true)

Temporary Field Move Slot  
![Field SLot 1](/screenshots/bgb00004.bmp?raw=true)
![Field SLot 2](/screenshots/bgb00005.bmp?raw=true)

Many new NPCs to toggle features  
![NPC 1](/screenshots/bgb00007.bmp?raw=true)
![NPC 2](/screenshots/bgb00008.bmp?raw=true)
![NPC 3](/screenshots/bgb00009.bmp?raw=true)  
![NPC 4](/screenshots/bgb00010.bmp?raw=true)
![NPC 5](/screenshots/bgb00011.bmp?raw=true)
![NPC 6](/screenshots/bgb00012.bmp?raw=true)

Gamma Shader for LCD Screens (Off & On Comparison)  
![Shader Off](/screenshots/bgb00035.bmp?raw=true)
![Shader On](/screenshots/bgb00036.bmp?raw=true)

Improved FPS Options  
![HardwareFPS](/screenshots/shinpokeredFPScompare.gif?raw=true)


#Summary
-----------

***Lite features for a cleaned-up purist experience***

A huge number of bugs, glitches, oversights, and text errors of all sorts have been fixed. 
There are too many to enumerate in a simple summary, and some of them are very obscure or previously undiscovered.

Includes english builds of Green and Red-JP versions. 
It swaps the graphics, Cerulean Cave layout, and a few lines of text to replicate the original japanese releases.
The original release pokedex entries have been adapted from the Fire Red translations.
It also has all the pokedex data in metric.

Includes an english build of Blue-JP version.
It swaps prizes, trades, wild encounter data, and some text to replicate the original japanese release.
It also has all the pokedex data in metric.

Engine features from USA Yellow version have been backported.
Super Gameboy palettes get converted to display on the Gameboy Color. No more monochrome!
Attack animations are colored according to type during Gameboy Color play.
The audio engine is backported for stereo sound support. 

New options that can be toggled!
- Hit SELECT on the options screen to cycle through the audio output types.
- Playing in GBC mode on a backlit LCD screen? Press SELECT at the copyright screen to activate color correction.
- Experimental 60FPS Mode: Place the cursor over CANCEL in the options screen and toggle by pressing left or right.
- Zero-Delay Text: Text with zero frame delay can be toggled in the options menu; press LEFT with the cursor on FAST.

Trainer AI has been improved and greatly expanded. 
Some trainers will even try to switch pokemon intelligently.

You get notified when a box is filled (either via catching or depositing a pokemon).

Switching out of a trapping move wastes the trapper's turn. 
This prevents unbeatable AI scenarios as well as a PP underflow glitch.

Rage is limited to 2-3 turns but attack boosts are kept.
This is primarily to prevent infinite battle loops.

Sleep does not prevent choosing a move, and the move is used upon waking up.
To maintain sleep move accuracy, sleep starts with a counter of at least 2.
And Rest now sets the sleep counter to 3.   
   
   
***Additional Master features that go beyond engine modifications and fixes***

All 151 pkmn are available in one version (rarities may vary per version).

You can play as a boy or a girl.

There's an EXP bar in battle.

You can hunt for shiny pokemon, and they are valid with Gen 2 games.

No more grinding wild pokemon. Nearly all trainers can be rematched just by talking to them once or twice.

The "SET" battle style gives increased difficulty by making the stats of trainer pokemon more on your level.
It also doubles the effect of the X-stat items that AI trainers are fond of.
And it disallows the use of Revive items in battle.
Finally, it makes catching a wild Mewtwo more challenging.
As compensation, SET mode gives an additional 1.5x EXP boost in trainer battles.

You can choose RUN while holding SELECT in trainer battles to forfeit the match and black yourself out.

There is a built-in nuzlocke mode that can be toggled from the options menu.

The girl in Oak's lab toggles wild pokemon randomization.
If activated early enough in the game, your starter pokemon choices are randomized as well.

One of the aides in Oak's lab toggles scaling of trainer rosters to your level (evolving them if applicable).

As an alternative to trainer scaling, there is now an obedience level-cap that can be toggled in the options menu.
With the cursor in the BATTLE STYLE section, press A to toggle it on and off.
While active, the current maximum obedience level will display in the options menu.
All pokemon, not just trades, will start to disobey if over the displayed level cap.

The other aide in Oak's lab toggles a pokeball-caught symbol in battle after obtaining the pokedex.
To help with Gen 2 interaction, this also applies a gender symbol to species that can be male or female.

Another aide npc is in the Viridian pokemon center. He will toggle on/off randomization of non-special trainers.

An aide is in the Celadon Diner. He will toggle on/off a catch-up EXP boost function for under-leveled pokemon.

Item, Sleep, and Freeze clauses can each be toggled by the Clause Brothers in Viridian City.
 
The bag now supports an additional item list for an extra 20 slots of space!
Press START on the bag menu to hot-swap the item list that populates the active bag.
The game's systems will generally detect items in the non-active bag space.
Unique systems, such as Pokemon Stadium, will only recognize the active bag's item list.

Each pokemon on your team has a field move slot. 
These slots can temporarily hold a HM move for overworld-use only.
No longer do you have to sacrifice one of your four moves for a HM move.

An experimental New Game+ has been added.
It can be enabled if you have an uncorrupt save file wherein the Elite 4 have been beaten.
Press and hold SELECT while choosing New Game; a jingle confirms activation.

The Cinnabar Lab allows for cloning and genetic modification of pokemon.
It does this by mixing their DVs as of they were akin to genes and alleles.
This replicates the ability to do selective breeding for DVs in a way that's more realistic.

Lots of quick-key features.
- Quick 'Owned' Check - Place the cursor over FIGHT and press Select to play the enemy 'mon cry if it's already owned.
- Softlock Warp - Instantly teleport back to your mom's house if you get stuck.
- Running Shoes - Hold B to double your speed when walking, surfing, and biking. Includes proper animation speed-up!
- Quick HM Use - Press SELECT to use HMs based on proper context.
- Quick Bike/Rod - Press SELECT while holding A to automatically get on/off your bike or use the best rod in your inventory.
- View Stat EXP - Hold SELECT and enter the status screen to print a 'mons stat exp.
- View DVs - Hold START and enter the status screen to print a 'mons DVs.
- View Shiny Palette - When playing in color, hold SELECT when choosing a 'dex entry to load the shiny palette.
  
New NPCs!
- The move relearner and deleter is in Saffron City.
- An NPC in the Celadon Hotel will pay COINS for showing him pokemon as an alternative to slots.
- After the Elite-4, a new vendor opens up in Celadon allowing the purchase of normally unique items.
- After the Elite-4, there is an NPC in the east-west underground path that generates random trainer battles.
- After the Elite-4, the game corner chief will buy pokemon from the player.
- There's a tournament being held in the SS Anne's kitchen after the Elite-4 are beaten. Yes, the ship returns!
- Added some special post-game trainer battles as fun little easter eggs. Can you find and defeat all five?

Changes to fishing!
- All rods have an expanded level range.
- The Old Rod has an expanded 'mon list.
- The Good Rod has an expanded 'mon list.
- The Route 12 Fishing Guru can be visited upon first reaching Lavender Town.
- The locations of the Good and Super Rod have been swapped.

Other minor changes to lessen annoyance.
- Low HP alarm only plays three times then turns itself off.
- TMs and HMs now have their attacks (albeit abbreviated) appended to the item names.
- All TMs can be repurchased as they are strategically scattered across all the Kanto pokemarts.
- The safari zone mechanics run off level instead of speed and safari balls have a boosted catch rate.
- Slot machines are a little more lucky, so now you can actually win big.
- CUT is not needed to get to Lt. Surge and Erika (a blocking event replaces the Vermilion shrub).
- Yellow version learnsets have been integrated and stone evolutions gain back some level-up moves.
- Hitting with a trapping move reduces its user's speed by 25% until recalculated via some other effect.
- Trapping moves play a 'poof' animation on the move's final turn in order to inform the player.
- A recalibrated daycare gives experience points scaled to your gym progress.
- The daycare lets you select moves to forget (if any) upon retreiving your pokemon.
- Retrieving a daycare pokemon that could have evolved via level will trigger evolution and learn any missed-out moves.

Cheats and Secrets!
- A pokemon with Pay Day in your top slot will tip you off to a lucky slot machine and when it's in a special payout mode.
- New item, M.GENE, re-randomizes a pkmn's DVs to values of 9,8,8,8 or more.
- Defeat all five post-game special trainers to reactivate the legendary pokemon.
- To more easily find shiny pokemon, put a level-100 Chansey at the top of your roster. Use a repel if you wish!
- New Super Boss: Do you dare to activate Missingno at the Cinnabar shore? Only if you got your 'dex diploma.
- New Super Boss: Missingno not hard enough for you? Try activating it again at the infamous Seafoam shore!
- Winning the SS Anne's tournament with a pikachu in your party makes that pikachu eligible for the SURF HM.


#Compatibility Notes
-----------

- Compatible with original Gameboy hardware (DMG, Super, Pocket, Color, Advance, SP)
- Potentially compatible with Pokemon Stadium 1 & 2 (using original Nintendo hardware)
- Might be possible to use a save from vanilla USA red/blue with this rom hack 
  - Save outside in Pallet Town before transferring over
  - Use the Softlock Warp to clear any invisible walls
- New builds are tested and debugged with the BGB 1.5.8 emulator and verified using original hardware
- Certain emulators are known to cause bugs due to inaccuracies in replicating the original hardware
  - Goomba in particular is known to be problematic
  - Due to the number of emulators in existence, BGB will be used as the supported standard
- Link trading with an original retail cartridge appears to work properly on real hardware
- Link trading between the lite and master branches appears to work properly on real hardware
- Link battles are still largely untested, and they are unsupported in the following ways:
  - Link battling between a master branch build and any other non-master branch build
  - Link battling between a lite branch build and any other non-lite branch build
  - Link battling between builds of dissimilar revisions
- A revision control function has been added that will cancel unsupported cable links


#Hack-Induced Bugfixes & Adjustments since last version:
-----------
- 


#New features & adjustments since last version:
-----------
-


#Changes not yet in the release branch:
-----------
v1.23.01  
- Green and Red-JP have the original front sprites for fossil kabutops and fossil aerodactyl
- Green and Red-JP have the original text box corners 

v1.23.02  
- Added nuzlocke mode

v1.23.03  
- Restored intro "Presents" for all builds
- Added rom hack version tracking for save files
  - It's a single byte in the save file that gets incremented each version
  - If the save byte does not match, the player is automatically warped back to Pallet Town
  - Helps prevent crashes and glitches when updating an older save file
- Adapted the japanese title screen logo, sfx, and motion for the jp builds
- Minor timing fix to title object palette loading
- Fixed Raticate not appearing in Unknown Dungeon 2F in Blue-Jp
- Fixed incorrect encounters on route 13 for some versions

v1.23.04  
- Tweaked a flag for shinies so it can be used as a debugging toggle
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

v1.23.05  
- The function that shows the dex entry for starter pokemon is now more robust
  - It now works for any pokemon (like if the starters are changed or randomized)
  - It keeps a backup of the pokedex-owned flags instead of erasing them
  - Removed the unused Ivysaur flag
- The 60fps mode has better performance when playing in GBC-mode
  - Does this by using the double-speed feature of the GBC's processor 
  - Uses more battery as a trade-off
- Fixed an invalid apostrophe
- Fixed gift pokemon not having above-average DVs if sent to the box
- Added spaceworld-style trainer back sprites for consistency with the spaceworld 'mon back sprites 
- Fixed a grass tile in the Forest tileset not counting for encouner generation
- Recalibrated the experience gain at the daycare
- The daycare lets you select moves to forget (if any) upon retreiving your pokemon
- Retrieving a daycare pokemon that could have evolved via level will trigger evolution and learn any missed-out moves
- Adjusted Oak's pokemon moves
- Fixed text overlap for trainer Seiga

v1.23.06  
- The static wild encounters (voltorbs and legendaries) now respond to the Chansey cheat for shiny hunting
- Organized front ant back battle sprites to be controlled via assembler tags in the makefile
- Organized the female trainer code to be activated via assembler tags in the makefile (for easy reference)
- Added shiny mercy 
  - When a player encounters an AI trainer shiny pokemon, the next wild encounter will be shiny
  - Side effect: Because trainer 'mons can't be shiny in SHIFT mode, SET mode gives more chances to find wild shinies
- AI can now handle fly/dig loops between the two pokemon

v1.23.07  
- Fixed pewter npc following distance in 60 fps mode
- Fixed rom hack byte not getting set on new game
- Battle sprite organization updates and extra backs
- You will now be given the choice to warp if the rom hack version does not match
- The position of both switches in Vermilion Gym are now determined at the same time
- The switches in Vermilion Gym can now be discovered independently from one another
- Switches in Vermilion Gym will now properly take into acount vertical adjacents
- Fixed an issue with trapping moves being allowed on switch-in
- Adjusted some AI anti-spam for status moves
- Changed border block on route 16 to water to make it consistent with route 17
- Increased the maximum game clock to 32767 hours
- Fixed typo causing incorrect game corner prizes
- Added new superboss at the seafoam shore (activated the same as the existing missingno fight)
- Assigned a proper forget-move sfx during battle
- Added a PC to the daycare
- Teaching a TM as a field move (Dig/Teleport) no longer consumes the TM
- Added visual indicator when swapping bag space
- The daycare can now support two evolutions back-to-back
- Fixed input priority on menus
- Minor adjustments to title screen and intro
- Re-added the reference to the Kanto region in the JP translation
- Restored SHOP and POKE building tiles in Blue-JP
- SGB borders for JP versions are restored (with fixed centering for text)

v1.23.08  
- Daycare allows HM moves on entered pokemon
- Added cloning and gene splicing
- ***Not added to beta patch yet***
- Scaled back fishing, reduced its randomness, and made it more map-dependent
- If on GBC, intitializing options turns 60 fps ON
- Minor code correction to Twineedle to prevent future errors 
- Show Mewtwo to Mr. Fuji after beating the Elite 4 for a M.GENE
- Added Bill's secret garden behind his house
  - Put Mew in your top spot and show Bill to gain access
  - You will encounter the starter pokemon plus some other rarer pokemon
  - Shiny rates are 1-in-128 in this area
- Added more text corrections for JP versions
- Added sfx variations unique to JP versions
- Leech seed health drain animation now has correct coloring on GBC
- In GBC-mode, when a pokemon is caught, the resting ball now has a defined color
- Tossing pokeballs have color in GBC mode
- Fixed an issue where the shiny animation has the wrong palette for the opponent on the GBC
- The move relearner and move deleter code is now tethered to the _MOVENPCS makefile tag
- Swapped a trade NPC to a gentleman in Green and RedJP
- Fixed pokemon category translation: "Rat" to "Mouse"
- Fixed pokemon category translation: "Shellfish" to "Shell"
- Fixed translation: Route 14 trainer's comment about the legendary birds
- Using X-Accuracy with a OHKO move now allows it to hit faster opponents
- Switched over to the xor-shift method of RNG
- RAM adress D732 now gets cleared upon a new game
- Fixed a bug having to do with rare instances of bending the audio pitch
- Cannot use poison to black yourself out of the cable club
- Cannot use poison to black yourself out of the safari zone
- Cannot perform the 99-stack glitch anymore
- Fixed an offset bug with the lucky game corner machine
- Victory music won't play if a wild 'mon faints but the player has no 'mons remaining; it's a blackout
- Fixed screen tearing in battle when player or 'mon slides off the screen
- The running shoes code is now tethered to the _RUNSHOES makefile tag
- Fixed screen whiteouts not looking very smooth in GBC mode (like when entering the 'mon status screen)
- Fixed a bug from the vanilla game where boulder dust clouds do not show up well when pushing downwards
- Fixed a bug from the vanilla game where random NPC walk delay can underflow to 255 ticks


#Bugfixes:
-----------

- Battle engine fixes
  - PP usage is now tracked for both wild and AI trainer pokemon
  - Moves no longer have a default 1/256 chance to miss
  - Fixed freeze that occurs in defense stat scaling (def < 4 glitch)
  - Enemy ai ignores type effectiveness for moves that have zero power
     - prevents things like spamming agility against poison pkmn
  - Enemy ai ignores super-effectiveness for moves that do static amounts of damage
  - Fixed skipping move-learn on level-up glitch. 
     - when gaining multiple levels at a time, each in-between level is incrementally checked for moves learned
     - this prevents a pkmn from skipping learnable moves if gaining multiple levels in battle
	 - also does this when evolving via level-up for the new evolution's movelist
  - Burn & Paralyze stat penalties are now properly applied after Speed & Attack stats get updated/recalculated
  - Badge stat-ups don't get stacked anymore
  - The function that applies badge stat-ups now selectively boosts the correct stat when called during a stat-up/down effect
  - If player is frozen, the hyperbeam recharge bit is now cleared
     - now matches how enemy mon's recharge bit is cleared upon being frozen
     - this prevents getting stuck in a loop unable to do anything on your turn
  - Blaine will not use a healing item at full HP
  - The BIRD type has been reinstated and renamed to TYPELESS. It acts as a universally neutral type (particularly for Struggle)
  - AI trainers have priority on switching or using an item
  - AI type effectiveness function now takes type 1 and 2 into account together 
	 - Before AI would only look at the type it encountered first in a list search
     - AI will now treat a move as neutral if type 1 makes it supereffective but type 2 makes it not effective
  - Stat changes from burn and paralyze are applied when the ai sends out a pkmn with those conditions
  - AI routine #2 (prioritize buffing or use a status move) now activates on the 1st turn after sendout instead of the 2nd
  - New custom function for undoing the stat changes of burn and paralysis
    - undoing paralysis is accurate to within 0 to -3 points
    - undoing burn is accurate to within 0 to -1 point
  - PP-up uses are disregarded when determining to use STRUGGLE if one or more moves are disabled
  - AI will not do actions during Rage or when recharging
  - Fixed wrong crit damage for lvl > 127
  - Made adjustments to critical hit damage
    - Damage factor is now 2*(2*level)/5 + 4 instead of 2*(2*level)/5 + 2 to simplify some algebra
    - If non-crit damage would be >= crit damage, the regular modified stat values are applied instead

	
- Move fixes
  - Transform-related fixes:
      - Move slots cannot be rearranged when transformed (prevents acquiring glitch moves)
      - Transform will no longer copy the opponent's Transform move. It's swapped-out for Struggle.
      - Enemy DVs can no longer be manipulated by having it use transform multiple times
	  - Fixed a conflict where transforming while disabled can leave the new moves disabled
	  - Fixed transformed 'mons reseting their moves when learning a level-up move
	  - Fixed a typo so now transformed 'mons retain their original palette
  - dire hit/focus energy now quadruples crit rate instead of quarters
  - sleep now normal-chance hits a pkmn recharging from hyperbeam, but has no effect if it's already status-effected
  - the fly/dig invulnerability bit is cleared when a pkmn hurts itself from confusion or is fully paralyzed
  - psywave damage is always min 1 be it an opponent or yourself (prevents desync)
  - Fixed Psywave underflow/overflow with levels of 0, 1, and above 170
  - Substitute-related fixes:
    - all hp drain moves (including dream eater and leech seed) miss against substitute
    - substitute will not work if it would bring you to exactly 0 hp
    - zero power moves that inflict stat-downs, sleep, or paralyze will not affect a substitute
    - the confusion side-effect of damaging moves is blocked by a substitute
	- recoil damage from jump kicks or hurting oneself in confusion is now applied to user's substitute
  - healing moves work with restoring exactly 255 or 511 hp 
  - light screen and reflect now have a cap of 999
  - Haze removing sleep/freeze will not prevent a multi-turn move from getting stuck (also fixes the sleep-trap glitch)
     - Fixed by allowing sleeping/frozen pkmn to use a move after haze restores them
     - on the plus size, haze now restores both opponent and user's status conditions as was intended in gen 1
  - Haze resets the enemy and player toxic counter
  - Rest now does the following:
     - clears the toxic bit and toxic counter
     - undoes the stat changes of burn and paralysis
  - fixed-damage move fixes (seismic toss, dragon rage, etc):
    - can no longer critically hit
    - obey type immunities
	- ignore effectiveness text & sfx
	- use 2 bytes for damage instead of 1
  - Struggle is now TYPELESS so that it can always neutrally damage something
  - Metronome & mirror move will not increment PP if the user is transformed
     - This prevents adding PP to hidden dummy moves that prevent a pkmn from going into Struggle
     - This also prevents Disable from freezing the game by targeting a dummy move
  - Mirror Move is checked against partial trapping moves in a link battle to prevent desync
  - Bide's accumulated damage bytes are now both set to zero on an enemy faint in order to prevent desync
  - Jump Kick moves now do the correct recoil damage on a miss
  - The effects of Leech Seed and Toxic no longer stack
  - Trapping effects only clear the hyperbeam recharge bit on a hit, preventing its automatic use on a miss
  - Trapping move PP can no longer underflow due to an opponent switching pkmn
  - Raging and Thrashing no longer suffers from accuracy degradation
  - Breaking a substitute does not nullify explosion/self-destruct, hyper beam recharge, or recoil damage
  - Hyper beam must recharge if it knocks out the opposing pkmn
  - Bugfixes involving Counter:
    - works against BIRD type, which is now typeless and assigned only to STRUGGLE
    - To prevent desync, pressing B to get out of the move selection menu zeros-out the ram location for selected move & move power
    - last damage dealt is zeroed in these cases (also fixes some issues with Bide):
	  - it's the start of the round without a trapping move active (fixes most issues since Counter always goes second)
	  - player/enemy pkmn is fully paralyzed or after hurting itself in confusion
    - Crash damage from jump kicks and pkmn hurting itself cannot be Countered
  - To prevent infinite loops, Rage ends after 2 to 3 turns (attack boosts are kept)
  - Non-link enemy mons now have PP, so always run checks for 0 PP during the disable effect
  - Fixed an issue with Disable's counter on slower 'mons

  
- Graphical Fixes
  - Gym leader names have been restored on the trainer card
    - These were removed during localization as a simple and expedient solution
    - So this is more of a correction to the localization than a strict graphical error
  - Restored intro "Presents" for all builds as localizers did not need to do this for Nintendo of America
  - Glitched sprites can no longer cause a buffer overflow that corrupts the hall of fame
  - Returning from the status screen when an opponent is in substitute/minimize no longer glitches the graphics
  - PC graphic restored to celadon hotel
  - A tile in cinnabar mansion 3f is slightly modified to prevent getting permanently stuck
  - A tile in cerulean cave 1f adjusted so there isn't a walkable cliff tile
  - Added ledge to route 25 to prevent softlock
  - After defeating the cerulean burglar rocket, the guard itself always moves to prevent getting stuck in the front door
  - No more ABCD glitched sprites when using teleport without a super gameboy
  - The transitional frame when turning 180 degrees now shows correctly
  - The lower right corner tile of the mon back pic is no longer blanked
  - Amazing man can no longer be triggered by text boxes or the start menu (via a code tweak from Yellow-version)
  - The rival encounters on route 22 now show an exclamation bubble that never showed up originally
  - Erika uses her pic from yellow version which alters her funerary clothes to a proper kimono
  - Fixed a scrolling text artifact in the credits when running in GBC-mode
  - Fixed amazing man glitch when triggered by a hidden object
  - Fixed amazing man glitch in the route 16 gate
  - Fixed tower ghost pic not loading after exiting status screen
  - Fixed bumping into invisible shrub
  - Fixed holding left to force past the cycling road guards
  - Fixed being able to leave the safari zone without clearing the event
  - Minor tweak to Pallet Town object data for Prof Oak
  - Minor tweaks to the Rival's object data in various maps
  - Fixed menu not clearing if A is held after saving
  - Fixed a missed increment that makes a map's 15th object not update its facing properly
  - Adjusted two spin-stop tiles in Viridian Gym
  - Made Agility's animation more apparent
  - Changed border block on route 16 to water to make it consistent with route 17
  - Fixed screen tearing in battle when player or 'mon slides off the screen
  - Fixed a bug from the vanilla game where boulder dust clouds do not show up well when pushing downwards
  - Fixed a bug from the vanilla game where random NPC walk delay can underflow to 255 ticks


- Item Fixes  
  - Great ball has a ball factor of 12 now
  - Stone evolutions cannot be triggered via level-up anymore
  - Ether and elixer now account for PP-ups used when determining if move is at full PP
  - PP-restoring items no longer affect transformed moves and only restore the original moves
  - EXP ALL fixes
    - should now dispense the correct exp if multiple pokemon take place in a battle
	- no longer counts fainted pokemon when dividing exp
	- handles exp correctly when all your battle participants are knocked out
  - Fixed a bug where itemfinder can't locate objects with a zero x or y coord
  - Surfboard bugfixes:
	  - cannot use the surfboard if being forced to ride the bicycle
	  - no longer freezes the game when using it from the item menu to get back on land
	  - the menu text will glitch a little, but only for a split-second and does not impact gameplay
  - The Full Heal used by the AI now undoes brn/par stat changes
  - Condition healing items (including using Full Restore at max hp) no longer reset all stats
    - Burn heal undoes the attack stat changes
    - Paralyze heal undoes the speed stat changes
    - Full restore at max hp undoes the stat changes of brn/par
  - Full Restore when used in battle to heal HP now undoes the stat changes of brn/par
  - Pokedoll is disallowed during ghost marowak battle
  - Encountering Missingno will not give 128 of the item in the sixth bag slot
  

- Audio fixes
  - Audio engine has been back-ported from Yellow version
    - Fixes some channel conflicts between cries and the low-health alarm
    - Fixes some audio hiccups with Yellow's color palettes on the GBC
    - Press SELECT on the option menu to change the audio mixing option
  - Fuschia gym plays the correct sfx when getting the TM from Koga
  - Vermilion gym plays the correct sfx when getting the TM from Surge
  - Restored sfx for getting a badge
    - A sfx is supposed to play when getting a badge, but not for all gym leaders and the sfx used is inconsistent
	- Looks like the idea was dropped in development due to issues with having separate audio banks
	- However, there is a unique unused sfx in the battle audio bank that signifies getting some kind of important item
	- This is likely what was going to be used for getting a badge at some point, and it has been restored
  - Bike music stops playing now when going down a hole
  - Assigned a proper forget-move sfx during battle
  - Fixed a bug having to do with rare instances of bending the audio pitch
  - Victory music won't play if a wild 'mon faints but the player has no 'mons remaining; it's a blackout


- Misc. fixes
  - Cinnabar/seafoam islands coast glitch fixed (no more missingo or artificially loading pokemon data)
  - Catching a transformed pokemon no longer defaults to catching a ditto
  - Vending machine now checks for the correct amount of money
  - Vermilion Gym switch puzzle fixes
    - Prevented byte overflow when determining the trash can with 2nd switch in vermilion gym
	- The position of both switches in Vermilion Gym are now determined at the same time
    - The switches in Vermilion Gym can now be discovered independently from one another
  - Hidden nugget in safari entrance now obtainable
  - Slot machine reel bug fixed
  - Fixed oversights in reel functionality to better match Gamfreak's intent
  - The lift key in the rocket hideout drops during the end of battle text like in Yellow-version
  - An unused bit is now used to determine the ghost marowak battle
  - Can't use surf/teleport/escape rope to escape from trainer encounters
  - Can't fish or surf in the bases of statues
  - Seafoam islands fast current applied to the right steps on floor B3
  - Each of the two boulder puzzles in seafoam islands will fully reset until completed
  - The boulder switches never reset while inside victory road and they will always reset upon leaving
  - While inside victory road, boulders placed on switches will stay there between floor transitions
  - The formula functions for exp now have underflow protection.
  - General RNG improved to use the xor-shift method (fast and allows for all possible DVs naturally)
  - Cannot bypass Brock's gym via the start menu
  - Fixed bugged npc movement constraints
  - Fixed the instant-text glitch that can happen in the bike shop
  - Fixed using escape rope in bill's house and the fan club
  - Added nop after halt commands (safety prevention for a rare processor bug)
  - Streamlined how the ghost marowak battle is triggered (now allows for non-ghost marowaks in pokemon tower)
  - Fixed a coordinate typo in pokemon tower left by gamefreak
  - Fixed an issue with the silph co 11f elevator doors
  - Can no longer walk up to 4 steps with a fainted team
  - Water warps in seafoam island 4 & 5 are now scripted movement
  - Fixed a bug in the GetName: function that treated lists over 195 entries as item lists
  - You can Fly and Teleport out of maps with the forest tileset
  - Fixed a grass tile in the Forest tileset not counting for encouner generation
  - Fixed input priority on menus
  - RAM adress D732 now gets cleared upon starting a new game
  - Cannot use poison to black yourself out of the cable club
  - Cannot use poison to black yourself out of the safari zone
  - Cannot perform the 99-stack glitch anymore
  - Fixed an offset bug with the lucky game corner machine
  
  
#TWEAKS:
-----------

- Fixed mistakes in the game text
  - Attacks reduced to zero damage now say the target is unaffected instead of missing
  - Man in cinnabar won't mention raichu evolving (also applies to the jynx trade in cerulean)
  - Koga correctly says soul badge increases speed
  - Lt. Surge correctly says thunder badge increases defense
  - Correct type effectiveness information & sfx should now be displayed when attacking dual-type pkmn
  - Viridian girl's notebook 2nd page revised for pkmn-catching effectiveness
  - Viridian blackboard BRN info corrected (BRN does not reduce speed)
  - Viridian Blackboard PAR info updated
  - Cerulean badge-house guy has updated text
  - Prof. oak's speech plays the correct Nidorino cry
  - Text for using a TM/HM now refers to the "machine" rather than just "TM"
  - Fixed daycare man capitalization
  - Fixed capitalization in safari zone entrance
  - Fixed the flipped text for a girl in Saffron and the letter she is writing
  - Fixed text overlap with Oak giving you pokeballs
  - Reactivated lost text that was meant to play when you lose to your rival
- Made adjustments to the game text
  - When a pkmn is caught and fills the box, a reminder is printed that the box is full
  - PC has a text prompt to tell you if its full after depositing
  - Made cinnabar mansion notes more true to the original japanese text
  - TM 18 given an actual explanation 
  - New student in viridian school explains ohko moves
  - Exp.all now prints one message when splitting exp instead of for each party member
  - TMs and HMs now have their attacks (albeit abbreviated) appended to the item names
  - Removed the word "only" from NPC on Silph Co 5f who talks about trade evos
  - Text tweak to route 14 trainer with regards to forgetting HMs
  - Adjusted some of Giovanni's final lines for clarity
  - Clarified "chem" to mean grade in chemistry
  - Fixed pokemon category translation: "Rat" to "Mouse"
  - Fixed pokemon category translation: "Shellfish" to "Shell"
  - Fixed translation: Route 14 trainer's comment about the legendary birds

- Adjustments to moves  
  - Stat-down moves no longer have a 25% miss chance in AI matches
  - Moves that hit multiple times in a turn now calculate damage and critical hits for each individual attack
  - Trapping moves nerfed big time to prevent the new AI from cheesing them:
    - Switching out of a trapping move ends it immediately and wastes its user's turn (prevents PP underflow glitch too)
	- Each time a trapping move is used and hits, user's speed reduced 25% until recalculated through other mechanics
    - A 'poof' animation plays to signal the last turn of the trapping move
  - Ghost moves (i.e. just Lick) do 2x against psychic as was always intended
  - Pay Day upped to 5x multiplier of later generations
  - Changes to Bide
    - damage accumulation is done after taking a damaging hit instead of during turn execution (less room for glitches)
	- side effect: bide is buffed because multi-hit moves now add damage to bide for each of the 2 to 5 hits
	- changed to Typeless to play nicer with AI routine 3 (it ignores the type chart regardless)
  - Rest's sleep condition increased to 3 turns since attacking on wakeup is now allowed.
  - Acid armor's animation changed so that does not make its user disappear
  - Metronome now classified as a Typeless special damage move to play better with the AI
  - Type immunity prevents trapping moves from taking hold at all
  - Changes to Rage
	- Now only lasts 2 to 3 moves like Bide in order to prevent an infinite loop
	- As a tradeoff, attack boosts from rage are kept when it ends
  - Minor code correction to Twineedle to prevent future errors, but this has no effect on gameplay

- Adjustment to stat mods, conditions, and items
  - Sleep does not prevent choosing a move
  - Waking up from sleep does not waste the turn and the chosen move is used
    - The sleep counter's minimum value is increased by +1 to maintain accuracy of sleep moves
  - Badge stat-ups are now only applied in wild pokemon battles to give parity to enemy trainers (only in "SET" style)
  - The effect of X-Accuracy is no longer applied to one-hit K.O. moves (it originally made them auto-hit)
  - Using X-Accuracy with a OHKO move now allows it to hit faster opponents
  - The limiter on vitamins is raised to a max of 62720 stat exp after the elite 4 have been beaten
  - Pkmn added to the player's party (either as a gift or in-game trade) have at the least DVs of 9,8,8,8
  - Upped the power of safari balls
  - Escaping in the safari zone is now based on level instead of speed
  - In "SET" style, X-stat items have double the effect
  
- Trainer ai routine #1 (recognition of stats, hp, and conditions) has been modified
  - using a move with a dream eater effect is heavily discouraged against non-sleeping opponents
  - using a move with a dream eater effect is slightly encouraged against a sleeping opponent
  - using a zero-power confusion effect move is heavily discouraged against confused opponents
  - moves that would miss against an active substitute are heavily discouraged
  - stat buff/debuffs are heavily discouraged if it would have no effect due to hitting the buff/debuff stage limit
  - heavily discourage double-using lightscreen, reflect, mist, substitute, focus energy, and leech seed
  - leech seed won't be used against grass pkmn
  - do not use moves that would be blocked by an active mist effect
  - rules for using healing moves:
    - heavily discourage healing if at max hp
	- slightly encourage healing if below 1/3 hp
	- slightly discourage healing if above 1/2 hp
  - heavily discourage using Counter against a non-applicable move
  - heavily discourage roar, teleport, & whirlwind
  - heavily discourage disable against a pkmn already disabled
  - Substitute discouraged if less that 1/4 hp remains
  - Will discourage using Haze if unstatus'd or has net-neutral or better stat mods
  - Discourages explosion moves in proportion to HP remaining
  - Will heavily discourage boosting defense against special, OHKO, or static-damaging attacks
  - AI layer changes that affect most 0-power moves (with only a few exceptions like heal effects)
    - now has a hard stop on using 0-power moves on consecutive turns with a few effect exceptions
	- heavily discourages 0-power moves if below 1/3 hp
  - Discourage exploding effects if faster than a player in fly/dig state
  - Randomly discourage usage of 2-turn moves when confused/paralyzed
  - 50% chance that the AI is blind to a player switching or using an item
  - Discourage using fly/dig if faster than the player who is also picking fly/dig

- Trainer ai routine #3 (choosing effective moves) has been modified
  - It now heavily discourages moves that would have no effect due to type immunity
  - OHKO moves are heavily discouraged if the ai pkmn is slower than the player pkmn (they would never hit)
  - Static damage moves are randomly preferenced 25% of the time to spice things up
  - Thunder Wave is not used against immune types
  - Poisoning moves discouraged against poison types
  - Added some strategy to handle when the player uses fly/dig
  - Slightly preference regular effectiveness moves if STAB exists (25% chance per move)

- Trainer ai routine #4 is no longer unused. It now does rudimentary trainer switching.
  - 25% chance to switch if active pkmn is below 1/3 HP and player also outspeeds AI
  - chance to switch based on power of incoming supereffective move
  - 12.5% chance to switch if a move is disabled
  - 12.5% chance to switch if afflicted with leech seed
  - 34% chance to switch if afflicted with toxic poison
  - 25% chance to switch if opponent is using a trapping move
  - 25% chance to switch if active pkmn is confused
  - on the lowest stat mod, 12.5% chance to switch per lowered stage
  - There is a chance for the AI to switch a sleeping pokemon based on the sleep counter
    -chance is 0% if counter <= 3
	-chance is 12.5% if counter > 3
  - Additionally, every pokemon in the enemy roster is scored 
    - based on various criteria to determine which mon gets sent out
	- score might dictate that the current mon is the best choice and abort switching
	- an enemy mon is flagged when sent out; non-volatile (except sleeping) status or low hp cannot initiate switching
	- enemy mon that is recalled back due to a super effective move is flagged; it is demerited from being switched-in
	- switch flags are all cleared when player sends out a new mon since the situation is now different
  - AI scoring for switching puts a heavier penalty on potentially switching in a bad type matchup
  - AI scoring imposes a very heavy penalty for potentially switching in pokemon with less than 1/4 HP
  - AI switch scoring now penalizes bad match-ups between player and enemy 'mon types
  
- Trainer ai routine #3 added to the following trainer classes
  - jr trainer M/F, engineer, rocker, juggler, tamer, birdkeeper, black belt, scientist, gentleman
  - bruno, brock, surge, blaine, sabrina, agatha, rival phase 1, chief
- Trainer ai routine #4 added to the following trainer classes
  -jr trainer M/F, pokemaniac, hiker, cueball, psychic, tamer, black belt, rocket, cooltrainer M/F, gentleman, channeler
  -all rival phases, all gym leaders, elite-4, prof.oak, chief
  
- Trainer stat DVs are now randomly generated to a degree (only in "SET" style)
  - Attack DV is between 9 and 15 and always odd-numbered
  - Defense, special, and speed DVs are between 8 and 15
  - HP DV is a minimum of 8 since attack DV is always odd-numbered
- Trainer AI battles now track which enemy pkmn have already been sent out, so allows for new functionality:
  - Trainer pkmn DVs are remembered between switching, and new ones won't be generated on every send-out
  - Trainer pkmn now have stat experience assigned to them that is scaled to their level (only in "SET" style)
  - These are real DVs and statEXP values that utilize the existing enemy party_struct which is normally unused by trainer AI
- Special trainers, e4, and gym leaders are slightly adjusted in their item use
- Agatha & cooltrainers will not randomly switch since they now have ai routine 4
- Flags for dividing exp among active pokemon are now only reset after fainting an enemy pkmn
  - Originally these get reset every time the opponent send out a pkmn (even swithing)
  - Was never really noticed since most trainers never switch nor would have the opportunity
  - Changed based on user feedback since many trainers now try to switch
  
- Adjustments to learnsets and base stats
  - Slight additions to explodo-mon movesets to play nicer with AI at higer levels
  - Pokemon have gained their TMs and Moves from yellow
  - Kadabra & Alakazam can access Kinesis via the move relearner
  - Raichu gains some attacks back via level
  - Arcanine gains some attacks back via level
  - Ninetails gains some attacks back via level
  - Poliwrath gains some attacks back via level
  - Cloyster gains some attacks back via level
  - Starmie gains some attacks back via level
  - Exeggcutor gains some attacks back via level
  - Vileplume gains some attacks back via level
  - Victreebel gains some attacks back via level
  - Clefable gains some attacks back via level
  - Wigglytuff gains some attacks back via level
  - Mewtwo can learn Swift by TM 
  - Kakuna and Metapod learn harden by level-up
  - pikachu and kadabra have their catch rates adjusted to yellow version
  - Give haunter/machoke/kadabra/graveler an evo by level option (level 45)
  - Butterfree and Beedrill have their prior evolutions' moves added to their level-0 move list
  - Clefable and Wigglytuff get some moves back via level-up
  - Diglett & Dugtrio can learn cut like in yellow version
  
- Engine changes just for developers
  - The trainer move engine has been backported from Yellow version; trainer movesets can now be fully customized
  - Improved exp calculation for developers who want a level cap between 101 and 255
    - EXP calculation routine now does math in 4 bytes instead of 3 bytes
	- Exp calculation result is still capped to 3 bytes regardless of level cap to prevent overflow
	- The byte cap on the exp result means that certain growth rates may have a level cap
	- For example, the "slow" growth rate is theorized to cap at level 237
  - Trainer battle prize money uses 3 bytes instead of 2, lifting the 9999 cap on winnings
  - Adjusted daycare to allow exp values over $500000
  - Allow up to 8 digits when displaying experience on the status screen
  - Pokemon can now learn more than 1 more per level
  - The 1.5x EXP boost function now has overflow protection
  - EXP Gained can now print up to five digits instead of four
  - The "<LF>" character mapping can be used as a line-feed
  - Added rom hack version tracking for save files
    - It's a single byte in the save file that gets incremented each version
    - If the save byte does not match, the player is automatically warped back to Pallet Town
    - Helps prevent crashes and glitches when updating an older save file
    - You will be given the choice to warp to Pallet Town if the rom hack version does not match
  - The function that shows the dex entry for starter pokemon is now more robust
    - It now works for any pokemon (like if the starters are changed or randomized)
	- It keeps a backup of the pokedex-owned flags instead of erasing them
	- Removed the unused Ivysaur flag
  - Increased the maximum game clock to 32767 hours

- Changes to fishing
  - All rods have an expanded level range
  - Old rod can fish up two kinds of pokemon (depending on the current map constant value)
    - Magikarp or Goldeen
	- Magikarp or Poliwag 
  - Good rod can fish up three or four kinds of pokemon (depending on the current map constant value)
    - Poliwag, Horsea, Krabby
	- Poliwag, Krabby, Goldeen, Psyduck
	- Goldeen, Psyduck, Shellder
	- Goldeen, Shellder, Horsea, Tentacool
  - The Route 12 Fishing Guru is now visitable upon first reaching Lavender Town
  - Swapped location of Good and Super Rod

- Changes to the daycare
  - The daycare lets you select moves to forget (if any) upon retreiving your pokemon
  - Retrieving a daycare pokemon that could have evolved via level will trigger evolution and learn any missed-out moves
  - The daycare will support two evolutions back-to-back
  - The daycare experience gain has been recalibrated
    - It no longer gives 1 exp per step
    - Instead, it falsifies the act of farming wild encounters against a pokemon with a base exp value of 56
    - The falsified encounter starts at level 5, and it increases 5 more levels per badge obtained
    - With 8 badges, using the daycare is essentially a faster way of farming level 45 basic pokemon
    - The downside of not gaining statEXP in the daycare still remains as a tradeoff
  - Added a PC to the daycare
  - Daycare allows HM moves on entered pokemon

- A regular New Game will default the battle style to SET
- Starting a New Game while in GBC-mode will default 60FPS mode to ON
- Yes/No prompt for flute use has been added to blocking snorlax
- Game corner prize costs re-balanced
- Slightly increased slot odds
- Slot machine coin counter runs twice as fast
- There are four lucky slot machines instead of one
- Interaction of slot reel modes tweaked for better gameplay
- Bushes moved around so Erika can be battled without CUT
- The bush blocking the Vermilion gym has been replaced with a blocking pkmn that goes away after the ss anne leaves
- Gym leaders and elite 4 have their rosters, levels, & movesets slightly tweaked for gradual difficulty
- Blaine has a touched-up battle sprite so he doesn't look like an alien
  - Snagged this off reddit, but original artist unknown (let me know if this is yours)
- The elite 4 now use the gym battle music rather than the standard trainer music
- The juggler rosters, especially in fuchsia gym, have been slightly altered for flavor
- Just for fun, the last juggler in the fuchsia gym is replaced with a cameo of Janine
  - Though at this point she's still just a cooltrainer and doesn't have a unique battle sprite
- The L: block doesn't disappear when level hits three digits
- Greatly increased the speed and performance of spin tiles  
- Amber and fossils are now non-key items
- Low HP alarm only plays three times then turns itself off
- You can now cut the grass in the plateau tileset
- Gave a couple TM moves to the cerulean rival's abra
- Initiating the Pokemon Tower rival battle will deactivate the following skippable rival battles
  - The Cerulean encounter
  - The SS Anne encounter

  
#Additions:
-----------

#Difficulty and scalable trainers
- There is an option to scale trainer rosters to the level of your strongest roster pkmn
  - Talk to the right-side aide in Oak's lab to toggle on/off
  - Enemy pkmn will evolve by level if applicable
  - Gym leaders and the E4 scale slightly higher than normal trainers
- Playing on "SET" style provides increased difficulty
  - Enemy trainer pokemon are assigned level-appropriate stat exp
  - Enemy trainer pokemon have randomized DVs that are all 8 or better (on a scale of 0 to 15)
  - Badge-granted stat boosts are disabled in trainer battles
  - X-stat items have double the effect like in more recent generations
  - Revive items cannot be used in battles
  - Mewtwo will prevent you from using a master ball on it and use AI to choose moves
  - SET mode gives an additional 1.5x EXP boost in trainer battles
- Added the Clause Brothers to Viridian City
  - They toggle enforcement of the item, sleep, and/or freeze clauses
  - The clauses apply to the player and AI equally, and only apply during non-link trainer battles
  - Sleep and freeze clauses work like they do in Pokemon Stadium
- There is now an obedience level-cap that can be toggled in the options menu
  - With the cursor in the BATTLE STYLE section, press A to toggle it on and off
  - While active, the current maximum obedience level will display in the options menu
  - All pokemon, not just trades, will start to disobey if over the displayed level cap
  - The cap will change based on which badge you have
  - Not recommended for use with trainer scaling since you might gain too many levels too quickly
  - Best to turn this off in the post-game as it's really for the gym challenge and elite-4


#Quick Keys / Options / Menu-Related
- Press SELECT on the option screen to change the audio type
- Added built-in gamma shader for backlit LCD screens (press SELECT at the copyright screen)
	- Gamma shader defaults ON if the destination code in the rom header is set to 00 (JP)
	- Pressing SELECT at the copyright info now switches the shader from its default state
	- The default state of the gamma shader can be changed with any gameboy rom header editor
	- Alternately, remove the 'j' in 'cjsv' in the Makefile to compile with a JP destination code
- Added an option to make the overworld run in 60fps
  - Place the cursor over CANCEL in the options screen and toggle by pressing left or right
  - This feature is more of a proof-of-concept and is still kinda rusty
  - Takes advantage of double-speed CPU mode when played as a GBC game
- Text with zero frame delay can be toggled in the options menu; press LEFT with the cursor on FAST
- Softlock Warp 
  - Instantly teleport back to your mom's house if you get stuck or are unable to move after updating to a new patch
  - Sets money to at least 1000 if you have less than that
  - Instructions to perform:
    - go to the start menu and put the cursor on OPTION
	- press and hold DOWN on the d-pad (the cursor will now be on EXIT)
	- while continuing to hold DOWN, press and hold SELECT
	- while continuing to hold those two buttons, press B
	- the start menu should close and you will warp back to your mom's house
- Context-sensitive SELECT button for using HMs (must have the correct badge and the move on one of your pkmn)
  - press SELECT against a shore to surf
  - press SELECT when facing a shrub or grass tile to use cut
  - press SELECT in a dark area to light it with flash
  - in all other instances, pressing select activates strength
- Press and hold A then press SELECT to automatically get on/off your bike or use the best rod in your inventory
- You can now check DVs or stat exp by holding down a button and entering the status screen
  - hold SELECT for stat exp
  - hold START for DVs
- In-battle way to check if enemy pokemon is owned in the pokedex
  - On the main battle menu, place the cursor over an option in the left column
  - Press the SELECT button
  - The enemy pokemon will play its cry if registered as owned
- Added ability to forfeit trainer battles by choosing RUN in battle while holding SELECT
- The bag now supports an additional item list for an extra 20 slots of space
  - Press START on the bag menu to hot-swap the item list that populates the active bag
    - Also works in battle
	- Also works when depositing items in the PC
  - The game's systems will generally detect items in the non-active bag space
    - For example, you can enter the Cinnabar Gym even if the Secret Key is in the non-active bag space
  - Certain unique systems may only recognize the active bag's item list
	- For example, the Pokemon Stadium games detect only the bag list that was active when last saved
- The player's party 'mons now have temporary field move slots for HM moves
  - Each party 'mon has 1 slot separate from its regular move list
  - A field move in this slot can be used in the overworld as normal
  - You will be asked about filling the slot when teaching a field move out of battle
  - You cannot overwrite a slot with a field move already in it
  - A slot is cleared when its 'mon leaves the party (such as being put in the PC)
  - In the case of a 'mon with 4 regular field moves:
    - The slotted temporary move cannot be menu-selected
	- The slotted temporary move, if it's a HM move, can be used via quick-key
  - Teaching a TM as a field move will not consume the TM

 
#Graphics
- GBC color palettes have been back-ported from Yellow-version.
- Additional GBC color additions
  - Scrolling mons on the title screen have their own palettes loaded on the GBC.
  - In the blue version intro, jigglypuff has it's own palette loaded on the GBC.
  - Oak-speech nidorino has its color palette on the GBC.
  - When playing in GBC-mode, move animations are colored based on their type
  - In GBC-mode, when a pokemon is caught, the resting ball now has a defined color
  - Tossing pokeballs have color in GBC mode
- You can now play as a girl when starting a new game
  - Has front, back, walking, fishing, and cycling sprites
  - Has unique default names when starting a new game
- If a pkmn has DVs that would make it shiny in Gen 2
  - An unused "power up" style of animation plays when it enters battle
  - It also has a shiny symbol by its name
- If playing on a super gameboy, shiny pkmn will have a palette swap on the status screen and also change color in battle
- If playing on super gameboy, hold select when loading a pokedex entry to see that pokemon's shiny palette
- Added an exp bar using code by Danny-E 33 
- Pokeball caught indicator for wild battles
- A gender symbol is displayed for pkmn species that are sexed
  - non-sexed species have no symbol
  - The symbol is displayed for a party mon in its status screen
  - The symbol is displayed in the battle hud only for wild enemy mon (the only time it matters)
- Oak's aid at the bottom-left of the lab toggles the caught & gender symbols after obtaining the pokedex
- Red & Blue versions use the back sprites from spaceworld 97 so as to be cohesive with the front sprites
- Added spaceworld-style trainer back sprites for consistency with the spaceworld 'mon back sprites 


#Pre-E4 NPCs
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
- There is an Aide NPC in the viridian pokemon center that can toggle regular trainer randomization
  - Only affects regular trainers that use one level for all 'mons and have no custom movesets
  - Will replace their roster 'mons with random non-evolved 'mons (legendaries are excluded)
  - The new mons will be swapped with their evolved forms if at a high enough level
  - This feature was added with the intent of spicing-up subsequent Gen-1 playthroughs
- New NPC in celadon hotel will reward coins for showing him requested pkmn
- Move deleter/relearner added to the saffron house below COPYCAT's house
  - Code comes from Mateo's Red++ hack. It's simply the best gen-1 implementation and I cannot come up with something better.
  - Talk to the little girl to delete moves.
  - Talk to her tutor to relearn moves.
  - I have expanded Mateo's code so that it also detects default level-0 moves from the baseStats header files.
- Catch-Up EXP Booster
  - Talk to the aide in the Celadon Diner to toggle this feature.  
  - While active, EXP gained is boosted if the active pokemon's level is lower than that of the fainted enemy.  
  - The boost is 1.5x multiplied by an additional 1.5x for every 3 levels of difference.  
  - For example, a level gap of 12 results in an EXP multiplier of (1.5)^4 = 5.0625.  
  - Use this feature to help you train-up new team members in the mid-to-late game.  
- Can rematch gym leaders and most non gym-leader trainers just by talking to them one or two times
  - Giovanni respawns after leaving the gym so you can rematch him
- Paras is gifted in the Route 2 house in case the player has no pokemon that can learn Cut
- Added a scientist and books to the Cinnabar Lab fossil room for cloning and gene splicing
  - This process clones your 1st spot pokemon and modifies it with DNA from your 2nd spot pokemon.  
  - It does this by treating a pokemon's two bytes of DV values as if they were two genes with two alleles each.  
    - Gene-A has the Attack DV as its hi-side allele and the Defense DV as its lo-side allele.  
	- Gene-B has the Speed DV as its hi-side allele and the Special DV as its lo-side allele.  
	- The A-genes from the two donor pokemon will be mixed to make the clone's A-gene.  
	- The B-genes from the two donor pokemon will be mixed to make the clone's B-gene.  
  - Mixing two genes is done via Punnett Squares, and a random result is chosen based on its ratios.  
  - Within a Punnett quadrant, a hi allele makes the upper digits and a lo allele makes the lower digits.  
  - If two hi allels or two lo alleles fall within a Punnet quadrant, their order is randomly selected.  


#Post-Game Content  
- S.S. Anne can be re-entered after defeating the elite 4.
  - minor text change indicating its return
  - the captain's text has been slightly altered for a more generic context
- There's a tournament being held in the SS Anne's kitchen after the elite 4 are beaten
  - Talk to the Gym Guy you find there
  - win 7 matches in a row for a master ball
  - Battles use teams of 3 pokemon
  - Your team is healed before battles
  - Enemy pokemon levels are based on the level of your strongest party pokemon
  - You must have an open item slot to claim your prize
  - Any trainer can appear with any three pokemon (excluding mew and mewtwo)
  - No breaks allowed in-between battles
- Vendor added to Celadon Dept. Store 3F
  - Sells moon stones, amber, fossils, exp all, master balls, and rare candy
  - Only opens up after beating elite 4
- In the safari zone gate, a new NPC can toggle on and off a special safari event after the elite 4
  - All pokemon in the safari zone will have above-average DVs
  - Also makes it so there is a rare chance for any pokemon to be encountered in the safari zone (depends on location)
- The game corner chief will buy pokemon from the player post-e4
- There is a new NPC in the west-east underground path that generates random battles after beating the elite 4
- New item M.GENE: re-randomizes a pkmn's DVs to values of 9,8,8,8 or more.
  - Win 5 matches in a row against the random team NPC to get M.GENE items (leaving the area resets the win streak)
- Talking to prof oak after beating the elite 4 let's you challenge him to a battle
- Can battle Mr. Fuji after beating the elite 4
- Can battle the Silph Chief after beating the elite 4
- Trainer Green (named Seiga) can be battled next to the ss anne dock truck after beating the elite 4
- Mind battle with future Trainer RED after beating the elite 4 via the new girl outside Bill's villa
  - Must have beaten Oak, Fuji, Silph Chief, and Green (the order doesn't matter)
  - After winning, must re-defeat the four extra trainers before you can challenge again
  - A win will respawn Mewtwo, the legendary birds, and allow Mew to be found again


#Tricks and Secrets
- The surfboard, a nugget, and TM 15 are hidden items added to the vermilion dock
- A pkmn with Pay Day in the 1st party slot will play its cry when interacting with a lucky slot machine
- A pkmn with Pay Day in the 1st party slot will play its cry when a slot machine enters payout modes
  - 1 cry for a normal payout on the next pull
  - 2 cries to signal the possibility of all 7s/bars on the next pull
  - 3 cries to signal that super payout mode had been entered
- Pkmn with levels > level cap give 255 stat exp for each stat
- Pkmn with levels > level cap have 255 base exp yield
- If a chansey >= level 100 is first in your roster:
  - Shiny wild random encounters and fishing rod encounters are much more common (1 in 256)
  - Repel effects will not block shiny encounters
- Shiny Mercy 
  - When a player encounters an AI trainer shiny pokemon, the next wild encounter will be shiny
  - AI trainers can't have shinies in SHIFT mode, so SET mode affords more chances to find wild shinies
- You can now battle missingno on the infamous cinnabar shoreline
  - You must have gotten the pokedex diploma first
  - Activated the traditional way via the "old man in viridian" method
  - The battle will trigger randomly while surfing on the shore even if you are not moving
  - Uses trainer battle routines (different music, uses AI, and uncatchable)
  - Uses its L-block appearance remade as a proper image and has its own defined base stats data
  - If defeated, it will set a non-key item in the sixth bag slot to a quantity of 99
  - Win or lose, you must do the "Old Man" process again to reactivate the encounter
  - For an even harder battle, try using the eastern shore of the seafoam islands
- New Game Plus has been added (still experimental)
  - Activated under these conditions:
    - Must have an existing non-corrupt game save on-file
	- Must have beaten the elite 4 in the on-file save
	- Press and hold SELECT while choosing the New Game option
	- A jingle will play to indicate NG+ has activated and the SELECT button can now be released
  - Preserves ONLY the following information (your current party will be lost):
    - Boxed pokemon
	- Play clock
	- Pokedex seen/owned registry
	- Hall of Fame (experimental)
	- Option screen selections
  - A new trainer ID and hash is generated, so boxed pokemon are permanently treated as traded pokemon
- Winning the SS Anne tournament with a pikachu in the party will set its catch rate to 168
  - In this rom hack, a pikachu with this catch rate can be taught Surf via HM
  - This catch rate makes it hold a gorgeous box if transferred to Gen 2
  - In case of multiple pikachus, only the first in the roster will be affected
  - Likewise, a pikachu holding a gorgeous box can learn surf if transferred into this rom hack
- Show Mewtwo to Mr. Fuji after beating the Elite 4 for a M.GENE
- Added Bill's secret garden behind his house
  - Put Mew in your top spot and show Bill to gain access
  - You will encounter the starter pokemon plus some other rarer pokemon
  - Shiny rates are 1-in-128 in this area


#Added Encounter Locations for the following pokemon (rare if not normally in the chosen version):
- charmander on route 25
- squirtle on route 6
- bulbasaur on route 4 
- sandshrew/ekans on route 3
- version-swapped sandslash/arbok in unknown dungeon 1f
- vulpix/growlithe on route 8
- oddish/bellsprout on route 24
- meowth/mankey on route 5
- farfetchd on route 12 & 13
- cubone added as rare encounter in rock tunnel
- dodrio is rare on route 17
- version-swapped pinser/scyther in safari zone main
- electabuzz in power plant in both versions (slightly more encountered in red version)
- magmar in pkmn mansion basement in both versions
- snorlax is a rare find in digletts cave
- eevee is a rare find in the route 21 grass
- unknown dungeon changes
  - encounter rates between pokemon slightly re-balanced
  - chansey is rarer
  - mew is on b1
    - it is the rarest encounter in the game
	- only shows up after getting the pokedex diploma
	- can only be encountered once like static legendaries
  - dittos are rare 
  - super rod in the unknown dungeon basement will yield glitch-level experiment dittos (a trap encounter)
- route 22 super rod data has changed to give psyduck & polywag
- hitmonchan & hitmonlee in victory road 3f
- lickitung in safari zone 1
- jynx in safari zone 2
- mr mime in safari zone 3
- lapras replaces krabby when using super rod in safari zone
- porygon is in the power plant in red version while blue has increased rate of raichu
- magnemite on route 10
- ponyta on route 7
- tentacruel to routes 19, 20, and 21
- seaking to routes 19, 20, and 21


#Changes to pokemart inventories:
- TMs of all kinds at all stores. All TMs are now re-purchaseable at various stages of the game.
- pewter city has ethers
- lavender town has max ethers
- saffron city has elixers
- cinnabar island has max elixers


#Built-In Nuzlocke Mode
------------------------
- Activation/Deactivation
  - Go to the OPTIONS screen.
  - Place the cursor in the BATTLE ANIMATION section.
  - Press A to toggle nuzlocke mode on or off.
  - The "NUZ!" symbol will appear if nuzlocke mode is on.
  
- Default Options
  - Some options are automatically changed when nuzlocke mode is turned on.
  - The Obedience Level Cap will be activated if the Scale Enemy Trainer Levels feature is inactive.
  - Also, the battle style will change to SET.
  - These are not mandatory changes, and you may reconfigure your options as you wish.
  
- Rule 1: A pokemon that faints is considered dead and can no longer be used.
  - Revival items cannot be used in battle.
  - If a battle ends with no forfeiture, all pokemon with 0 HP are marked dead.
  - If a battle ends in a forfeit, all pokemon with 0 HP before the forfeit are marked dead.
  - Pokemon marked as dead have $05 written to their catch rate to permanently mark them.
  - Even if they are traded back and forth, dead pokemon remain marked as dead while in nuzlocke mode.
  - Medicinal items will not work on pokemon marked as dead, nor will Soft-boiled.
  - Party healing (Mom, Pokemon Center, blacking out, etc) makes a dead pokemon effectively useless.
  - To clarify, it gives a dead pokemon 1 HP, the FRZ status, and 0 PP for all moves.
  - This allows a player to continue the game with boxed pokemon in case of a total party loss.
  - Dead pokemon transferred to Gen-2 games will be holding a pokeball.

- Rule 2: You can only catch the 1st wild pokemon that you encounter in an area.
  - An "area" is defined by the name displayed on the town map.
  - You will be unable to throw balls in subsequent wild battles in that area.
  - Static wild battles count for this as well.
  - Wild battles before you can get pokeballs also count.
  - In light of this, you may want to delay activating nuzlocke mode until pokeballs are available.
  - Story wild battles (Old Man tutorial, Ghost Marowak, and Tower Ghosts) do not apply.
  
- Rule 3 (Optional): Nickname every pokemon you obtain.
  - You will always go straight to the nickname screen without a Yes/No prompt.
  - You can still opt out of a nickname by leaving the entry field blank.
  
- Built-in exceptions:
  - Shiny Clause: Nothing prevents you from throwing balls to catch a wild shiny pokemon.
  - Duplication Clause: Encountering a wild "owned" pokemon will not activate Rule 2.
  - Rule 2 resets for the Safari Zone area upon paying the entrance fee.
  - Catching a pokemon, even if owned, always activates Rule 2. Important for the Safari Zone and New Game+.
  - Dead pokemon can still use overworld moves (HM moves, Teleport, etc).

- Visuale Aides:
  - An Up-Down-Arrow symbol will display on the HUD of a wild pokemon if a ball is allowed to be tossed.
  - This symbol follows Rule 2 and any built-in exceptions previously destribed.

- Nuzlocke and the Safari Zone:
  - The Safari Zone is not inherently limited to a single entry in nuzlocke mode.
  - Entering the Safari Zone gives the player an opportunity to catch 1 pokemon.
  - And this opportunity presents itself each time the player pays the entry fee.

- Nuzlocke and New Game+:
  - New Game+ preserves the pokedex.
  - This means the Duplication Clause will prevent Rule 2 from activating.
  - In light of this, Rule 2 will always activate on an area upon the first catch made there.
  
- Dead pokemon and toggling Nuzlocke mode:
  - It is possible to cheat by turning off nuzlocke mode, healing a dead pokemon, then turning it back on.
  - If this is done, the healed pokemon is still considered dead.
  - This means that party-wide healing will make it useless and medicine still has no effect.
  - This has the potential for a kind of "undead run" rule variant.
 
- Removing the death marker:
  - The only way to undo this is by modifying the dead pokemon's catch rate.
  - This is usually done via the Gen-2 time capsule and trading it back without a hold item or a different hold item.


#CREDITS / SPECIAL THANKS:
--------------------------
- The Pret team for the pokered and pokeyellow disassemblies and all the code comments that came with them
- MoriyaFaith's pokejp project for green version assets and code referencing
- Rangi for the tool Polished Map and the jp-style town map from Red/Blue Star
- Exp bar coded by Danny-E 33
- The Pokemon Prism team for the improved RNG on previous versions
- Patrik Rak for the new xor-shift RNG code
- Move deleter/relearner coded by TheFakeMateo for Pokemon Red++
- Code contributions and bugfixing by wisp92
- GLSWV for correcting the metric conversions of height and weight data 
- SteppoBlazer for the spaceworld-style old man back sprite
- Poketto for the spaceworld-style Trainer Red back sprite
- SPazzzi95 for documenting localization changes

The following folks for their great tutorials, glitch videos, and explanations across the internet
- TheFakeMateo 
- Crystal_
- ChickasaurusGL
- v0id19

The following folks for their help in pointing out and diagnosing bugs 
- kadetPirx
- JOBOalthor1992
- krazsen
- kmalove
- zycain
- jastolze007 
- MStern
- TSinnohTrainer 
- Chirutalis 

  
The shinpokered repository was branched from pret/pokered at merge pull request #185 committed on Jul 2, 2018
