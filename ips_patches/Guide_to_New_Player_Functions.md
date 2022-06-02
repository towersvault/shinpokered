#Which ROM base to use?
-----------------------------------------------
Shin Red patches should be applied to a USA Pokemon Red rom.  
Shin Blue and Shin Green patches should be applied to a USA Pokemon Blue rom.  


#Updating an Old Save File
-----------------------------------------------
If the old save was from an earlier Shin Pokemon version, deactivate all special options and NPC toggles.  
Make a copy of the old save file. This will be your new save file.  
Load the new save with the latest version of Shin Pokemon.  
You will be automatically warped to Pallet Town.  
Save the game. Your save file is now updated.  

**Troubleshooting**  
If you are blocked by invisible walls, use the Softlock Warp (detailed below).  
On the old save, before transferring it over, saving outside in Pallet town can solve certain issues.  


#Some Particular Battle Mechanic Changes
-----------------------------------------------
**Rage**  
This move now lasts 2 to 3 turns to prevent getting stuck in an infinite loop.  
Any attack boosts gained during Rage are retained when it ends.  
In this way, Rage is almost like an alternate take on Bide.  
Having your Raging pokemon tank a multi-hit move is a great way to setup for a physical sweep.  

**Bide**  
Each hit of a multi-hit move now adds to Bide's damage instead of just the first.  
Needless to say, using Double Kick on a Bide-user has the potential to backfire horribly.  

**Sleep Status**  
You can choose a move while asleep, and the move is used upon waking up.  
Sleep starts with a counter of at least 2 in order to maintain the accuracy of sleep effect moves.  
Rest now sets the sleep counter to 3 in order to preserve its lose-2-turns penalty.  
These changes help to remove the "infinite combo" that could be done by high-speed users of sleep moves.  
Overall, the only loss is that sleep has a maximum possible lost-turn number of 6 instead of 7.  

**Trapping Moves**  
Switching out of trapping moves (Wrap, Clamp, Fire Spin, etc) ends the move and wastes the trapper's turn.  
Additional changes exist that are not found in the Lite patches:  
- Landing a trapping move gives the user a compounding -25% speed until recalculated via other mechanics.  
- A 'poof' animation plays to signal the last turn of a trapping move.  
- These changes help to remove the "infinite combo" that could be done by high-speed users of trapping moves.  

**Critical Hits**  
Critical hit damage can no longer be less than the non-critical amount, so critical hits can never be a detriment.  
Furthermore, the effect for Dire Hit and Focus Energy now work correctly and quadruple the critical hit rate.  


#New Engine Functions
-----------------------------------------------
**Activate Color Correction**  
This applies when playing or emulating as a Gameboy Color game.  
It's assumed you are using a modern backlit screen with no other color correction.  
Under these stated conditions, the colors will be highly saturated.  
Press SELECT at the copyright screen when the game first boots. This will fix the saturated colors.  
Changing the destination code of the rom header to 00 (JP) defaults this to ON and pressing SELECT turns it OFF.  
Use the Gameboy Rom Analyzer to change the destination code (https://www.romhacking.net/utilities/1343/).  
Or use the BGB emulator to easily change the destination code and fix the header checksum (https://youtu.be/2AaCkM597iU?t=70).  

**Change the Audio Type**  
Updated Audio mixing has been ported over from Pokemon Yellow.  
Press SELECT on the option screen to change the audio type.  
You can cycle through mono sound and three types of stereo mixing.  

**60 FPS Mode**  
This feature is more of a proof-of-concept and is still kinda rusty.  
Place the cursor over CANCEL in the options screen, and toggle the mode by pressing LEFT or RIGHT.  
Playing as a GBC game will take advantage of the GBC's double-speed processor mode.  

**Zero-Delay Text**  
This feature reinstitutes a speed-running trick that makes text print with zero frame delay.  
Go to the options menu.  
With the cursor over FAST text speed, press LEFT to toggle this feature on and off.  
A "!" symbol appears next to FAST while this feature is active.  
Please note that other text speed selections do nothing while this feature is active.  

**Softlock Warp**  
This will instantly teleport you back to your mom's house in Pallet Town if you get stuck.  
It also sets your money to at least 1000 if you have less than that.  
Use this warp if you find yourself unable to move after updating to a new patch.  
Instructions to perform:  
1 - Go to the start menu and put the cursor on OPTION.  
2 - Press and hold DOWN on the d-pad. The cursor will now be on EXIT.  
3 - While continuing to hold DOWN, press and hold SELECT.  
4 - While still continuing to hold the two aforementioned buttons, press B.  
5 - The start menu should close and you will warp back to your mom's house.  

**Regular Trainer Randomization**  
One of Oak's Aides has been added to the Viridian Pokemon Center. Talk to him to toggle this feature.  
This randomizes the teams of regular no-name trainers that do not have roster customization.  

**Wild & Starter Pokemon Randomization**  
The girl in Oak's lab toggles on/off a built-in randomizer for wild pokemon.  
It shuffles all pokemon that can be gained through walking, surfing, fishing, or from the game corner.  
If activated early enough in the game, your starter pokemon choices are randomized as well.  
Scripted events are unaffected (gifts, in-game trades, static encounters, etc).  
The game's five legendary pokemon are also excluded from randomization.  
A saved seed value is used, so the shuffled order is always preserved between play sessions.  
This lets the AREA feature of the pokedex automatically adjust for the new pokemon locations.  
And a new random seed is generated upon each new game.  
Shuffling is done using three internal pokemon lists defined by base-stat-total: A, B, and C tiers.  
Pokemon are only shuffled within their own tier list in order to maintain some modicum of balance.  

**New Game Plus**  
Still somewhat experimental.  
Activated under these conditions:  
1 - Must have an existing non-corrupt game save on-file.  
2 - Must have beaten the Elite-4 in the on-file save.  
3 - Press and hold SELECT while choosing the NEW GAME option.  
4 - A jingle will play to indicate NG+ has activated and the SELECT button can now be released.  
Preserves ONLY the following information (your current party will be lost):  
- Boxed pokemon  
- Play clock  
- Pokedex seen/owned registry  
- Hall of Fame (experimental)  
- Option screen selections  
- Trainer ID (boxed pokemon won't count as traded)  


#Functions for Adjusting Difficulty
-----------------------------------------------
**Increase Difficulty**  
A NEW GAME now defaults to the SET battle style in the options menu.  
Playing on the SET battle style now imposes several changes to the game's systems that increase difficulty:  
1 - Enemy trainer pokemon are assigned level-appropriate StatEXP whereas they previously had none.  
2 - Enemy trainer pokemon have randomized DVs of 8 or better whereas they previously all had values of 8 or 9.  
3 - Stat boosts granted by badges are disabled during trainer battles.  
4 - X-stat items increase by two stages instead of one like in more recent generations.  
5 - Revive items can only be used outside of battle.  
6 - Wild Mewtwo uses trainer AI to choose its moves, and it also blocks you from using a Master Ball.  
7 - EXP is boosted by an additional 50% in trainer battles as compensation to the player.  

**Scale Enemy Trainer Levels**  
Talk to the aide in the lower-right section of Oak's lab to toggle this feature.  
While active, enemy trainer roster levels will scale upwards relative to the highest-level pokemon in your party.  
Enemy pokemon will evolve by level if applicable.  
Gym leaders and the Elite-4 scale slightly higher than normal trainers.  

**Obedience Level Cap**  
There is now an obedience level cap that can be toggled in the options menu.  
With the cursor in the BATTLE STYLE section, press A to toggle it on and off.  
While active, the current maximum obedience level will display in the options menu.  
All pokemon, not just trades, will start to disobey if over the displayed level cap.  
The cap will change based on which badge you have.  
This is intended as an alternative to, and not to be used with, the Scale Enemy Trainer Levels feature.  
It provides a different challenge where one is forced to keep a team within the game's level curve.  
Players should deactivate this feature for post-game adventuring past the level-cap.  

**Sleep, Freeze, and Item Clauses**  
The house to the lower-left of Viridian Gym is home to three new NPCs named the Clause Brothers.  
Each one toggles enforcement of either the item, sleep, or freeze clause from Pokemon Stadium.  
The sleep clause in particular works like it does in Stadium with respect to using the Rest move.  
The clauses apply to the player and AI equally, and they only apply during non-link trainer battles.  


#New Gameplay Features
-----------------------------------------------
**Play as a Female Trainer**  
When choosing NEW GAME, you will be asked if you are a girl.  
Choose YES to play the game as a girl character, or choose NO to play as a boy character.  

**Running Shoes**  
Hold the B button to move at double your normal speed.  
This also works when surfing or using your bike.  

**Extra Bag Space**  
The bag now supports an additional item list for an extra 20 slots of space.  
Press START while in the bag menu to hot-swap the item list that populates the active bag.  
This also works in battle or when depositing items into the PC.  
In general, the non-active item list gets recognized by the game's systems.  
For example, you can enter the Cinnabar Gym even if the Secret Key is in the non-active bag space.  
For certain unique systems, like Pokemon Stadium compatibility, only the active bag list is detected.  

**Temporary Field Move Slots**  
When teaching a pokemon a field move outside of battle, such as with a HM, this feature becomes apparent.  
You will be asked if you would like to teach it as a temporary field move.  
If so, it will be learned into a special field move slot that is separate from the normal list of four moves.  
Such a temporary move cannot be used in battle, but it can be used in the overworld as normal.  
Each pokemon on your team can have one temporary field move at a time.  
Having one will display it on the status screen above the pokemon's other moves.  
A temporary field move cannot be overwritten with another field move.  
But it will be erased if its owning pokemon leaves the party (such as by being deposited in the PC).  
If all four of a pokemon's regular moves are field moves, its temporary field move cannot be menu-selected.  
But if a fifth field move in the temporary slot is a HM, it can still be activated via One-Button HM Usage.  
Teaching a TM as a field move will not consume the TM.  

**One-Button HM Usage**  
You must still have the correct badge and move on one of your pokemon to use a HM in this way.  
HM01 - Press SELECT when facing a shrub or grass tile to use CUT.  
HM03 - Press SELECT when facing a shore to use SURF.  
HM05 - Press SELECT in a dark area to light it with FLASH.  
HM04 - In all other instances, pressing SELECT activates STRENGTH. Your pokemon's cry plays and the screen will flash.  

**Quick Fishing Button Combo**  
You must have a fishing rod in your bag.  
Face against a shore. You may have to bump against it a single time.  
Press and hold A. While doing that, press SELECT. You can now release the two buttons.  
This will prompt the game to choose the best rod in your bag and use it.  

**Quick Bike Button Combo**  
You must have the bicycle in your bag.  
You must not be facing a shore.  
Text for NPCs, signs, objects, etc, have priority, so do not face toward these things.  
Press and hold A. While doing that, press SELECT. You can now release the two buttons.  
This will tell the game to get on your bike. You can also get off your bike the same way.  

**Rematch Enemy Trainers**  
The gym leaders and most trainers can be rematched.  
Simply talk to them once or twice. Select YES when prompted.  
If Giovanni has disappeared from his gym, exit and re-enter the gym to bring him back.  

**Forfeit Trainer Battles**  
You can now forfeit a trainer battle to force yourself to black out.  
This can be useful for escaping in-battle softlock scenarios or creating variants of Nuzlocke rules.  
On the main battle menu, place the cursor over RUN.  
While holding the SELECT button, press the A button.  
You will be asked to confirm your decision. Choose YES to forfeit or NO to cancel.  

**Reworked Fishing**  
- The locations of the Good Rod and the Super Rod have been swapped.  
- Route 12 has been altered to give access to its Fishing Guru without needing the Pokeflute.  
- The Super Rod now randomly adds 0 to 7 levels to anything it hooks.  
- The Good Rod has been altered:  
  - Its hardcoded list of 2 pokemon has been increased to 8.  
  - Levels of pokemon that can be hooked have mostly been increased.  
  - A level modifier of +0 to +7 is randomly added to hooked pokemon for more variety.  
- The Old Rod has been altered:  
  - 50% of the time it will act as a Good Rod. The implication is that it was "Good" long ago.  
  - No longer a key item.  
  - Eventually supplanted by the Good Rod. Might want to sell it for a good price.  
- The Good Rod maintains some niche utility over the Super Rod. Comparing the two:  
  - Super Rod  
    - Has route-based encounter tables.  
    - Access to rarer or evolved pokemon.   
    - Each encounter table only has up to four pokemon.   
  - Good Rod  
    - Limited to a single hardcoded encounter table.  
    - Pokemon encountered are unevolved and entry-level.  
    - Up to eight different pokemon can be hooked.  
	
**Reworked Daycare**  
The daycare lets you select moves to forget (if any) upon retreiving your pokemon.  
Retrieving a daycare pokemon that could have evolved via level will trigger evolution and learn any missed-out moves.  
The daycare experience gain has been recalibrated.  
It no longer gives 1 exp per step.  
Instead, it falsifies the act of farming wild encounters against a pokemon with a base exp value of 56.  
The falsified encounter starts at level 5, and it increases 5 more levels per badge obtained.  
With 8 badges, using the daycare is essentially a faster way of farming level 45 basic pokemon.  
The downside of not gaining statexp in the daycare still remains as a tradeoff.  
Consider using the daycare as a way to outsource some grinding while you go focus on other things.  


#Trainer-Aiding Features
-----------------------------------------------
**Display Pokemon DVs**  
Determinant Values (DVs) are the predecessors to the Individual Values (IVs) used in Gen 3 and onwards.  
Unlike IVs, DV are on a scale from 0 to 15.  
On the pokemon menu, select a pokemon and place the cursor over STATS.  
While holding the START button, press the A button to enter the pokemon's status screen.  
In place of the pokemon's HP and stat values, it's corresponding DVs will be displayed instead.  

**Display Pokemon StatEXP**  
Stat Experience (StatEXP) is the predecessor to the Effort Values (EVs) used in Gen 3 and onwards.  
Unlike EVs, StatEXP values are on a scale from 0 to 65535 and there is no sum total limit between stats.  
At level 100, a pokemon gains extra points in a stat equal to 0.25 x SQRT(StatEXP) rounded down.  
On the pokemon menu, select a pokemon and place the cursor over STATS.  
While holding the SELECT button, press the A button to enter the pokemon's status screen.  
In place of the pokemon's HP and stat values, it's corresponding StatEXP values will be displayed instead.  

**View a Shiny Palette**  
This applies when playing or emulating as a Gameboy Color or Super Gameboy game.  
Choose a pokemon in the pokedex and place the cursor over DATA.  
While holding the SELECT button, press the A button to view it's pokedex entry.  
The pokedex entry will display the pokemon with its shiny palette swap.  

**Audio Cue for Owned Pokemon**  
On the main battle menu, place the cursor over an option in the left column (FIGHT or ITEM).  
Press the SELECT button.  
The active enemy pokemon will play its cry if that species is registered as Owned in your pokedex.  

**Caught Symbol and Gender Symbol**  
Talk to the aide in the lower-left section of Oak's lab to toggle this feature after obtaining the pokedex.  
While active, it has the following effects:  
1 - Wild pokemon have a gender symbol by their names if applicable.  
2 - If applicable, a gender symbol is added to a pokemon's status screen.  
3 - Enemy wild pokemon that have already been registered as Owned will display a pokeball symbol in battle.  
Gender is determined the same way as Gen 2 for the purposes of cross-generation transfers.  

**Move Deleter and Relearner**  
Two new NPCs are added to the Saffron City house below COPYCAT's house.  
Talk to the little girl to delete moves.  
Talk to her tutor to relearn moves for a small fee.  

**Coin Gentleman**  
There is a gentleman added to the Celadon Hotel as an alternative to playing the slots.  
He will give you free game corner coins if you show him the pokemon he requests.  
His request changes every time you enter the hotel, so make use of the hotel's PC to the right.  
Place his requested pokemon at the top of your team and speak to him to get your reward.  

**Catch-Up EXP Booster**  
Talk to the aide in the Celadon Diner to toggle this feature.  
While active, EXP gained is boosted if the active pokemon's level is lower than that of the fainted enemy.  
The boost is 1.5x multiplied by an additional 1.5x for every 3 levels of difference.  
For example, a level gap of 10 results in an EXP multiplier of (1.5)^4 = 5.0625.  
Use this feature to help you train-up new team members in the mid-to-late game.  

**Get a Free Paras**  
Go to the small house on Route 2 just below the exit of Diglett's Cave.  
The Aide NPC inside the house will now gift you a Paras.  
You can use this Paras if you ever find yourself without a pokemon that can learn Cut.  


#Additions to the Post-Game
-----------------------------------------------
**SS Anne Tournament**  
You can return to the SS Anne after beating the Elite-4. Find the Gym Guy hanging out in the kitchen.  
He is organizing a little tournament with the follwoing rules:  
1 - Seven matches to win.  
2 - Must use a team of exactly three pokemon.  
3 - Your pokemon are healed after every match.  
4 - Enemy pokemon levels are based on the level of your strongest party pokemon.  
5 - You must have an open item slot to claim your prize.  
6 - Any trainer can appear with any three pokemon (excluding mew and mewtwo).  
7 - No breaks allowed in-between battles.  
Winning the tournament rewards you with a Master Ball.  

**Rare Item Shop**  
The 3rd floor of the Celadon Dept. Store has a shop open up after beating the Elite-4.  
It sells things like Fossils, Rare Candy, and Moon Stones.  

**Selling Pokemon**  
Find the house with the game corner CHIEF in Celadon City.  
Talk to him after beating the Elite-4 to find he's in some dire straights.  
He will offer to buy the pokemon in your team's first slot from you.  

**Special Safari Event**  
A new NPC can be utilized in the Safari Zone Gate after beating the Elite-4.  
Talk to him to toggle special parameters that have the following effects on the Safari Zone:  
1 - All pokemon encountered will have DVs of 8 or more.  
2 - There is a rare chance for any non-legendary pokemon to appear.  

**Random Battle Generator and the M.GENE**  
There is a sketchy guy added to the west-east underground path.  
After the Elite-4 are beaten, he will offer to engage you in randomized battles.  
Win 5 matches in a row against him without leaving the area to get the new M.GENE item.  
The M.Gene can be used on a pokemon out of battle in order to re-randomize its DVs with values of at least 8.  

**Special Trainer Battles**  
There are four special trainers to find and defeat after beating the Elite-4.  
Talk to Oak at his lab. When he asks to rate your pokedex, choose NO.  
This will start a chain of hints for finding the four trainers.  


#Pro-Tips
-----------------------------------------------
**Gift, Prize, and Trade Pokemon**  
Pokemon that are given to you by NPCs always have at least 8 for every DV.  
This applies whether it is a gift, in-game trade, or a purchase.  
This means that prize pokemon from the game corner will always have good stats.  
And buying a magikarp from a shady figure might not be such a bad investment.  

**Use Those TMs**  
Though still single-use, all TMs can be repurchased from pokemarts around the region.  
So don't be shy about using TMs acquired from NPCs and exploration.  

**Stock-Up on Items**  
Enemy trainers are more agressive about attacking, so your team incurs more damage over time.  
Be sure to purchase a reasonable stock of healing items to counter the increased attrition.  

**Big EXP Gains**  
The Catch-Up Booster bonus compounds with other 1.5x EXP bonuses in the game.  
With this is in mind, activate level-scaling and do trainer rematches in SET mode to gain loads of EXP.  

**Training in Post-Game Without Battling**  
Here is an alternative to grinding out battles in the post-game.  
1 - Catch some pokemon.  
2 - Sell them to the game corner chief.  
3 - Buy rare candies and vitamins with the proceeds.  
4 - Take note that vitamins are uncapped in the post-game.  
5 - Use your purchases to train your roster pokemon without battling.  

**Secret Hints**  
1 - Try winning the SS Anne tournament with a Pikachu in your party.  
2 - After beating the Elite-4, vitamins are no longer limited on your pokemon.  
3 - The fourth special trainer hints at the method to find Mew. But Mew only appears once.  
4 - There is a fifth special trainer outside Bill's house. Victory respawns the legendaries including Mew.  
5 - The Vermilion Dock has three hidden items.  
6 - Fish in the lowest level of Cerulean Cave for something strange.  
7 - Place a level 100 Chansey at the top of your party and use a repel. You're bound to find something shiny.  
8 - When going to the game corner, try having your 1st-slot pokemon know Pay Day. It may tip you off.  
9 - Missingno can be activated in either Seafoam or Cinnabar with your pokedex diploma. Prepare your sixth item slot for victory.  
10 - Mercy is granted if you encounter an enemy trainer with a shiny pokemon.  


#Built-In Nuzlocke Mode
-----------------------------------------------
- Activation/Deactivation
  - Go to the OPTIONS screen.
  - Place the cursor in the BATTLE ANIMATION section.
  - Press A to toggle nuzlocke mode on or off.
  - The "NUZ!" symbol will appear if nuzlocke mode is on.
  
- Default Options
  - Some options are automatically changed when nuzlocke mode is turned on.
  - The battle style will change to SET.
  - Also, the Obedience Level Cap will be activated if the Scale Enemy Trainer Levels feature is inactive.
  - These are not mandatory changes, and you may reconfigure your options as you wish.
  
- Rule 1: A pokemon that faints is considered dead and can no longer be used.
  - Revival items cannot be used in battle.
  - If a battle ends with no forfeiture, all pokemon with 0 HP are marked dead.
  - If a battle ends in a forfeit (via the Forfeit Trainer Battles feature), all pokemon with 0 HP before the forfeit are marked dead.
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
  - Pokemon gained outside of battle (gifts, prizes, in-game trades, etc) do not apply.
  
- Rule 3 (Optional): Nickname every pokemon you obtain.
  - You will always go straight to the nickname screen without a Yes/No prompt.
  - You can still opt out of a nickname by leaving the entry field blank.
  
- Built-in exceptions:
  - Shiny Clause: Nothing prevents you from throwing balls to catch a wild shiny pokemon.
  - Duplication Clause: Encountering a wild "owned" pokemon will not activate Rule 2.
  - Rule 2 resets for the Safari Zone area upon paying the entrance fee.
  - Catching a pokemon, even if owned, always activates Rule 2. Important for the Safari Zone and New Game+.
  - Dead pokemon can still use overworld moves (HM moves, Teleport, etc).

- Visual Aides:
  - An Up-Down-Arrow symbol will display on the HUD of a wild pokemon if a ball is allowed to be tossed.
  - This symbol follows Rule 2 and any built-in exceptions previously described.

- Nuzlocke and the Safari Zone:
  - The Safari Zone is not inherently limited to a single catch opportunity in nuzlocke mode.
  - Entering the Safari Zone gives the player an opportunity to catch 1 pokemon per visit.
  - This opportunity presents itself again each time the player pays the entry fee.

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
