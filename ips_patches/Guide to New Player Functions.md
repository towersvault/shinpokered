#Updating an Old Save File
-----------------------------------------------
Make sure you are saved outside in Pallet Town on the old save file.  
Make a copy of the old save file. This will be your new save file.  
Load the new save with the latest version of Shin Pokemon.  
You may notice you are blocked by invisible walls.  
Regardless if you are or not, use the Softlock Warp (detailed below) at this time.  
Save the game. Your save file is now updated.  


#New Engine Functions
-----------------------------------------------
**Activate Color Correction**  
This applies when playing or emulating as a Gameboy Color game.  
It's assumed you are using a modern backlit screen with no other color correction.  
Under these stated conditions, the colors will be highly saturated.  
Press SELECT at the copyright screen when the game first boots. This will fix the saturated colors.  

**Change the Audio Type**  
Updated Audio mixing has been ported over from Pokemon Yellow.  
Press SELECT on the option screen to change the audio type.  
You can cycle through mono sound and three types of stereo mixing.  

**60 FPS Mode**  
This feature is more of a proof-of-concept and is still kinda rusty.  
Place the cursor over CANCEL in the options screen, and toggle the mode by pressing LEFT or RIGHT.  

**Softlock Warp**  
This will instantly teleport back to your mom's house if you get stuck.  
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

**New Game Plus**  
Still somewhat experimental.  
Activated under these conditions:  
1 - Must have an existing non-corrupt game save on-file.  
2 - Must have beaten the Elite-4 in the on-file save.  
3 - Press and hold SELECT while choosing the NEW GAME option.  
A jingle will play to indicate NG+ has activated and the SELECT button can now be released.  
Preserves ONLY the following information (your current party will be lost):  
- Boxed pokemon  
- Play clock  
- Pokedex seen/owned registry  
- Hall of Fame (experimental)  
- Option screen selections  
A new trainer ID and hash is generated, so boxed pokemon are permanently treated as traded pokemon  


#Functions for Adjusting Difficulty
-----------------------------------------------
**Increase Difficulty**  
Playing on the SET battle style now imposes several changes to the game's systems that increase difficulty:  
1 - Enemy trainer pokemon are assigned level-appropriate StatEXP whereas they previously had none.  
2 - Enemy trainer pokemon have randomized DVs of 8 or better whereas they previously all had values of 8 or 9.  
3 - Stat boosts granted by badges are disabled during trainer battles.  
4 - X-stat items increase by two stages instead of one like in more recent generations.  
5 - Revive items can only be used outside of battle.  
6 - Wild Mewtwo uses trainer AI to choose its moves, and it also blocks you from using a Master Ball.  

**Scale Enemy Trainer Levels**  
Talk to the aide in the lower-right section of Oak's lab to toggle this feature.  
While active, enemy trainer roster levels will scale upwards relative to the highest-level'd pokemon in your party.  
Enemy pokemon will evolve by level if applicable.  
Gym leaders and the Elite-4 scale slightly higher than normal trainers.  

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
But be mindful. Only the item list that is currently active is recognized by the game's systems.  
For example, you cannot enter the Cinnabar Gym if the Secret Key is not in the active bag.  
It's the same for Pokemon Stadium compatibility, only the bag list that was active when last saved is detected.  

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
Text for NPCs, signs, objects, etc, takes precedence, so do not face toward these things.  
Press and hold A. While doing that, press SELECT. You can now release the two buttons.  
This will tell the game to get on your bike. You can also get off your bike the same way.  

**Rematch Enemy Trainers**  
The gym leaders and most trainers can be rematched.  
Simply talk to them once or twice. Select YES when prompted.  
If Giovanni has disappeared from his gym, exit and re-enter the gym to bring him back.  

**Forfeit Trainer Battles**  
You can now forfeit a trainer battle to force yourself to black out.  
This can be useful for escaping in-battle softlock scenarios or creating variants of Nuzlock rules.  
On the main battle menu, place the cursor over RUN.  
While holding the SELECT button, press the A button.  
You will be asked to confirm your decision. Choose YES to forfeit or NO to cancel.  


#Trainer-Aiding Features
-----------------------------------------------
**Display Pokemon DVs**  
Determinant Values (DVs) are the predecessors to the Individual Values (IVs) used in Gen 3 and onwards.  
Unlike IVs, DV are on a scale from 0 to 15.  
On the pokemon menu, select a pokemon and place the cursor over STATS.  
While holding the START button, press the A button to enter the pokemon's status screen.  
In place of the pokemon's HP and stat values, it's corresponding DV will be displayed instead.  

**Display Pokemon StatEXP**  
Stat Experience (StatEXP) is the predecessor to the Effort Values (EVs) used in Gen 3 and onwards.  
Unlike EVs, StatEXP values are on a scale from 0 to 65535 and there is no sum total limit between stats.  
At level 100, a pokemon gains extra points in a stat equal to 0.25 x SQRT(StatEXP) rounded down.  
On the pokemon menu, select a pokemon and place the cursor over STATS.  
While holding the SELECT button, press the A button to enter the pokemon's status screen.  
In place of the pokemon's HP and stat values, it's corresponding StatEXP will be displayed instead.  

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

**Secret Hints**  
1 - Try winning the SS Anne tournament with a Pikachu in your party.  
2 - After beating the Elite-4, vitamins are no longer limited on your pokemon.  
3 - The fourth special trainer hints at the method to find Mew. But Mew only appears once.  
4 - There is a fifth special trainer outside Bill's house. Victory respawns the legendaries including Mew.  
5 - The Vermilion Dock has three hidden items.  
6 - Fish in the lowest level of Cerulean Cave for something strange.  
7 - Place a level 100 Chansey at the top of your party and use a repel. You're bound to find something shiny.  
8 - When going to the game corner, try having your 1st-slot pokemon know Pay Day. It may tip you off.  
9 - Missingno can be activated if you have your pokedex diploma. Prepare your sixth item slot in case you win.  
10 - An alternative to grinding out battles in the post-game:  
->Catch some pokemon.  
->Sell them to the game corner chief.  
->Buy rare candies and vitamins with the proceeds.  
->Use your purchases to train your roster pokemon without battling.  
