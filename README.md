# Shin Pokémon Red and Blue

Version 1.23

This is a rom hack of pokemon red & blue based on the Pret team's disassembly.  
It's a mostly-vanilla hack that focuses on fixing game engine bugs and oversights from the original game.  
Additionally, trainer AI routines are improved and multiple quality-of-life improvements have been added.  
Think of it as what the Nintendo Virtual Console re-release of red & blue might have been (plus a few extra goodies). 

Read the "Guide to New Player Functions" for instructions on all the new stuff the player can do.

Don't like the non-vanilla changes? Prefer only the bugfixes and AI improvements? Want a codebase from which to launch your own rom hack?
Then the [Lite branch](https://github.com/jojobear13/shinpokered/tree/lite) is what you want. Head on over and start compiling.


Download the IPS patch file of the version you want and apply it to its respective USA rom. 
The "_origback" ips patches are alternatives for red & blue that keep the original back sprites. 
Always apply patches to a fresh USA ROM or else strange glitches will occur.  

***Includes Pokemon Green and Japanese Red!***
- The compiler primarily builds the graphics and cerulean cave layout back to the original japanese release.
- Pokedex entries adapt the original Green version text that was translated in Fire Red.
- Pokedex uses metric units.
- Apply the Green ips patch to a USA Blue rom. Apply the Red-JP ips patch to a USA Red rom.

***Now Includes Japanese Blue!***
- Primarily builds the lists for encounters, trades, and prizes that were in the never-localized japanese release.
- Pokedex uses metric units.
- Apply the ips patch to a USA Blue rom.

***Updating Your Save File***  
New patches might crash or have issues upon loading a save from a previous patch or an unpatched game.  
To prevent this from happening, prepare your save file in the following way:  
--> Deactivate all special options (such as 60fps mode and NPC toggles).  
--> Save in the outdoor Pallet Town map.  
You might be blocked by invisible walls upon loading the game.  
To fix this, you must use the Softlock Warp detailed below to teleport back to Pallet Town.  

		
Title Screen  (GBC Palettes)  
![Title Screen 2](/screenshots/bgb00028.bmp?raw=true)

Pokemon Yellow Backported Palettes  
![Backported Palettes](/screenshots/bgb00022.bmp?raw=true)

Rematches  
![Rematches](/screenshots/bgb00003.bmp?raw=true)

Trainer AI, Shiny SGB palette, & Exp Bar  
![TrainerAI, Shiny SGB palette, & Exp Bar](/screenshots/bgb00020.bmp?raw=true)

TMs in Marts  
![Marts](/screenshots/bgb00016.bmp?raw=true)

Shiny Animation  
![Shiny Animation](/screenshots/bgb00019.bmp?raw=true)

Girl Trainer  
![Girl Trainer 1](/screenshots/bgb00026.bmp?raw=true) ![Girl Trainer 2](/screenshots/bgb00025.bmp?raw=true)


#Summary
-----------

***Lite features for a cleaned-up purist experience***

A huge number of bugs, glitches, oversights, and text errors of all sorts have been fixed. 
There are too many to enumerate in a simple summary, and some of them are very obscure or previously undiscovered.

Includes an english Green version. 
It swaps the graphics, Cerulean Cave layout, and a few lines of text to replicate the original Green version.
Apply the patch to a USA Blue rom to use it.

Engine features from USA Yellow version have been backported.
Super Gameboy palettes get converted to display on the Gameboy Color. No more monochrome!
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
- The Good Rod has an expanded 'mon list and level range.
- Level range of the super rod has been increased.
- The Old Rod now randomly acts as a Good rod 50% of the time.
- The Old Rod is a sellable non-key item with the value of a nugget.
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

Cheats and Secrets!
- A pokemon with Pay Day in your top slot will tip you off to a lucky slot machine and when it's in a special payout mode.
- New item, M.GENE, re-randomizes a pkmn's DVs to values of 9,8,8,8 or more.
- Defeat all five post-game special trainers to reactivate the legendary pokemon.
- To more easily find shiny pokemon, put a level-100 Chansey at the top of your roster. Use a repel if you wish!
- Do you dare to activate Missingno at the Cinnabar shore? Only if you got your 'dex diploma.
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
- Fixed Flying and Teleporting out of maps with the forest tileset
- Fixed messed-up warps dealing with the forest tileset
- Fixed incorrect animation colors
- Fixed some minor color errors in non-move battle animations
- Changed color of normal-type attacks to yellow
- Adjusted the Saffron Guard text for accuracy
- Assigned a default palette to confusion & crashing self-damage
- Made it so choosing New Game doesn't clear certain other options
- Fixed bugged TH/HM names within text boxes
- Slightly adjusted some Cinnabar Mansion notes to match the Japanese text
- Reworked the level-up movelist for all four 'mons in the Eevee family
- Readjusted the vertical positioning of some spaceworld back sprites
- Fixed the item clause breaking the AI choosing moves
- Clarified text of the blocking 'mon in Vermilion city
- Fixed typos
- Adjusted alignment of printed statEXP
- EXP bar goes off of MAX_LEVEL instead of an assumed lvl 100
- Fixed Sleep/Freeze clause not working correctly
- Streamlined the Sleep/Freeze clause function and cleaned the spaghetti code
- Made it so choosing to play as a girl doesn't clear certain other options
- Updated the Elite 4 and Gym Leaders a bit (mostly Koga)


#New features & adjustments since last version:
-----------
- The player's party 'mons now have temporary field move slots for HM moves
  - Each party 'mon has 1 slot separate from its regular move list
  - A field move in this slot can be used in the overworld as normal
  - You will be asked about filling the slot when teaching a field move out of battle
  - You cannot overwrite a slot with a field move already in it
  - A slot is cleared when its 'mon leaves the party (such as being put in the PC)
  - In the case of a 'mon with 4 regular field moves:
    - The slotted temporary move cannot be menu-selected
	- The slotted temporary move, if it's a HM move, can be used via quick-key

- There is now an obedience level-cap that can be toggled in the options menu
  - With the cursor in the BATTLE STYLE section, press A to toggle it on and off
  - While active, the current maximum obedience level will display in the options menu
  - All pokemon, not just trades, will start to disobey if over the displayed level cap
  - The chance of disobedience ocurring has been adjusted about -16% to make it less aggravating
  - The cap will change based on which badge you have (max of 65 with earth badge)
  - Not recommended for use with trainer scaling since you might gain too many levels too quickly
  - Best to turn this off in the post-game as it's really for the gym challenge and elite-4
  
- Good rod has an expanded 'mon list and level range
- Increased the level range of the super rod
- Old rod now randomly acts as a Good rod 50% of the time 
- Old rod is a sellable non-key item with the value of a nugget
- The Route 12 Fishing Guru is now visitable upon first reaching Lavender Town
- Swapped location of Good and Super Rod

- SET mode gives an additional 1.5x EXP boost in trainer battles
- Added a NPC to the Celadon Diner to toggle a Catch-Up EXP Boost feature

- The project now compiles Japanese Blue
- The project now compiles Japanese Red
- Green and Red-JP have their original pokedex entries (adapted from Fire Red)
- Green, Red-JP, and Blue-JP now display metric units in the pokedex

- Gamma shader defaults ON if the destination code in the rom header is set to 00 (JP)
- Pressing SELECT at the copyright info now switches the shader from its default state
- The default state of the gamma shader can be changed with any gameboy rom header editor
- Alternately, remove the 'j' in 'cjsv' in the Makefile to compile with a JP destination code

- Engine improvement: the 1.5x EXP boost function now has overflow protection
- Engine improvement: EXP Gained can now print up to five digits instead of four
- Engine Improvement: Pokemon can now learn more than 1 move per level
- Text with zero frame delay can be toggled in the options menu; press LEFT with the cursor on FAST

- The extra bag space introduced previously is now detected by most of the game's systems
- Gave a couple tm moves to the cerulean rival's abra


#Changes not yet in the release branch:
-----------
- 


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


- Misc. fixes
  - Cinnabar/seafoam islands coast glitch fixed (no more missingo or artificially loading pokemon data)
  - Catching a transformed pokemon no longer defaults to catching a ditto
  - Vending machine now checks for the correct amount of money
  - Prevented byte overflow when determining the trash can with 2nd switch in vermilion gym
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
  - General RNG improved to the one used by Prism and Polished Crystal (allows for all possible DVs naturally)
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
  
  
#TWEAKS:
-----------

- Fixed mistakes and made adjustments to the game text
  - When a pkmn is caught and fills the box, a reminder is printed that the box is full
  - Man in cinnabar won't mention raichu evolving (also applies to the jynx trade in cerulean)
  - Koga correctly says soul badge increases speed
  - Lt. Surge correctly says thunder badge increases defense
  - Correct type effectiveness information & sfx should now be displayed when attacking dual-type pkmn
  - Viridian girl's notebook 2nd page revised for pkmn-catching effectiveness
  - Viridian blackboard BRN info corrected (BRN does not reduce speed)
  - Viridian Blackboard PAR info updated
  - Made cinnabar mansion notes more true to the original japanese text
  - TM 18 given an actual explanation 
  - New student in viridian school explains ohko moves
  - Cerulean badge-house guy has updated text
  - Prof. oak's speech plays the correct Nidorino cry
  - Text for using a TM/HM now refers to the "machine" rather than just "TM"
  - Fixed daycare man capitalization
  - Clarified "chem" to mean grade in chemistry
  - Fixed capitalization in safari zone entrance
  - PC has a text prompt to tell you if its full after depositing
  - Exp.all now prints one message when splitting exp instead of for each party member
  - TMs and HMs now have their attacks (albeit abbreviated) appended to the item names
  - Fixed the flipped text for a girl in Saffron and the letter she is writing
  - Fixed text overlap with Oak giving you pokeballs
  - Reactivated lost text that was meant to play when you lose to your rival
  - Removed the word "only" from NPC on Silph Co 5f who talks about trade evos
  - Text tweak to route 14 trainer with regards to forgetting HMs
  - Adjusted some of Giovanni's final lines for clarity

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

- Adjustment to stat mods, conditions, and items
  - Sleep does not prevent choosing a move
  - Waking up from sleep does not waste the turn and the chosen move is used
    - The sleep counter's minimum value is increased by +1 to maintain accuracy of sleep moves
  - Badge stat-ups are now only applied in wild pokemon battles to give parity to enemy trainers (only in "SET" style)
  - The effect of X Accuracy is no longer applied to one-hit K.O. moves (it originally made them auto-hit)
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
  - jr trainer M/F, tamer, scientist, lass, gentleman, black belt, bird keeper, engineer, 
  - chief, bruno, brock, agatha, juggler
- Trainer ai routine #4 added to the following trainer classes
  -cueball, psychic, hiker, rocket, black belt, tamer, lass, jr trainer M/F, cooltrainer M/F, gentleman, pokemaniac 
  -all rival phases, prof.oak, chief, gym leaders, elite-4
  
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

-Changes to fishing
  - Good rod has an expanded 'mon list and level range
  - Increased the level range of the super rod
  - Old rod now randomly acts as a Good rod 50% of the time 
  - Old rod is a sellable non-key item with the value of a nugget
  - The Route 12 Fishing Guru is now visitable upon first reaching Lavender Town
  - Swapped location of Good and Super Rod

- A regular New Game will default the battle style to SET
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
- If SS Anne is skipped and the pokemon tower rival battle is initiated, the SS Anne rival battle is deactivated
- Greatly increased the speed and performance of spin tiles  
- Amber and fossils are now non-key items
- Low HP alarm only plays three times then turns itself off
- You can now cut the grass in the plateau tileset
- Gave a couple TM moves to the cerulean rival's abra

  
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
  - The chance of disobedience ocurring has been adjusted about -16% to make it less aggravating
  - The cap will change based on which badge you have (max of 65 with earth badge)
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

 
#Graphics
- GBC color palettes have been back-ported from Yellow-version.
- Additional GBC color additions
  - Scrolling mons on the title screen have their own palettes loaded on the GBC.
  - In the blue version intro, jigglypuff has it's own palette loaded on the GBC.
  - Oak-speech nidorino has its color palette on the GBC.
- You can now play as a girl when starting a new game
  - Has front, back, walking, fishing, and cycling sprites
  - Has unique default names when starting a new game
- If a pkmn has DVs that would make it shiny in Gen 2, an unused "power up" style of animation plays when it enters battle
- If playing on a super gameboy, shiny pkmn will have a palette swap on the status screen and also change color in battle
- If playing on super gameboy, hold select when loading a pokedex entry to see that pokemon's shiny palette
- Added an exp bar using code by Danny-E 33 
- Pokeball caught indicator for wild battles
- A gender symbol is displayed for pkmn species that are sexed
  - non-sexed species have no symbol
  - The symbol is displayed for a party mon in its status screen
  - The symbol is displayed in the battle hud only for wild enemy mon (the only time it matters)
- Oak's aid at the bottom-left of the lab toggles the caught & gender symbols after obtaining the pokedex
- When playing in GBC-mode, move animations are colored based on their type
- Red & Blue versions use the back sprites from spaceworld 97 so as to be cohesive with the front sprites


#Pre-E4 NPCs
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
  - Shiny wild random encounters and super rod encounters are much more common (1 in 256)
  - Repel effects will not block shiny encounters
- You can now battle missingno on the infamous cinnabar shoreline
  - You must have gotten the pokedex diploma first
  - Activated the traditional way via the "old man in viridian" method
  - The battle will trigger randomly while surfing on the shore even if you are not moving
  - Uses trainer battle routines (different music, uses AI, and uncatchable)
  - Uses its L-block appearance remade as a proper image and has its own defined base stats data
  - If defeated, it will set a non-key item in the sixth bag slot to a quantity of 99
  - Win or lose, you must do the "Old Man" process again to reactivate the encounter
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


#CREDITS / SPECIAL THANKS:
--------------------------
- The Pret team for the pokered and pokeyellow disassemblies and all the code comments that came with them
- MoriyaFaith's pokejp project for green version assets and code referencing
- Rangi for the tool Polished Map
- Exp bar coded by Danny-E 33
- The Pokemon Prism team for the improved RNG
- Move deleter/relearner coded by TheFakeMateo for Pokemon Red++
- Code contributions and bugfixing by wisp92
- GLSWV for correcting the metric conversions of height and weight data 

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

  
The shinpokered repository was branched from pret/pokered at merge pull request #185 committed on Jul 2, 2018
