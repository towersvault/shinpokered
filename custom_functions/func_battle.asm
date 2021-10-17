;joenote - custom functions to handle move priority. Sets zero flag if priority lowered/raised.
CheckLowerPlayerPriority:	
	ld a, [wPlayerSelectedMove]
	call LowPriorityMoves
	ret
CheckLowerEnemyPriority:
	ld a, [wEnemySelectedMove]
	call LowPriorityMoves
	ret
LowPriorityMoves:
	cp COUNTER
;	ret z
;	cp BIND
;	ret z
;	cp WRAP
;	ret z
;	cp FIRE_SPIN
;	ret z
;	cp CLAMP
	ret

CheckHigherPlayerPriority:	
	ld a, [wPlayerSelectedMove]
	call HighPriorityMoves
	ret
CheckHigherEnemyPriority:
	ld a, [wEnemySelectedMove]
	call HighPriorityMoves
	ret
HighPriorityMoves:
	cp QUICK_ATTACK
;	ret z
;	cp DUMMY_MOVE1
;	ret z
;	cp DUMMY_MOVE2
;	ret z
;	cp DUMMY_MOVE3
;	ret z
;	cp DUMMY_MOVE4
	ret
	
	
	

SwapTurn:	;a simple custom function for swapping whose turn it is in the battle engine
	ld a, [H_WHOSETURN]
	and a
	jr z, .make_one
	xor a
	jr .leave
.make_one
	inc a
.leave
	ld [H_WHOSETURN], a
	ret

	
;custom function to determin the DVs of wild pokemon with an option for forcing shiny DVs
DetermineWildMonDVs:
	ld a, [wFontLoaded]
	bit 7, a
	jr z, .do_random
	ld b, $AA
	call Random	;get random number into a
	or $20	;set only bit 5
	and $F0 ; clear the lower nybble
	or $0A	;set the lower nyble to $A
	jr .load
.do_random
	CheckEvent EVENT_90F	;special safari zone active?
	jr z, .notsafari	
	call IsInSafariZone
	jr nz, .do_random_safari
.notsafari
	call Random
	ld b, a
	call Random
	jr .load
.do_random_safari	;special safari zone pokemon have better DVs
	call Random
	or $88
	ld b, a
	call Random
	or $98
.load
	push hl
	ld hl, wEnemyMonDVs
	ld [hli], a
	ld [hl], b
	pop hl
	ld a, [wFontLoaded]
	res 7, a 
	ld [wFontLoaded], a
	ret


;joenote - This fixes an issue with exp all where exp gets divided twice	
UndoDivision4ExpAll:
	ld hl, wEnemyMonBaseStats	;get first stat
	ld b, $7
.exp_stat_loop

	ld a, [wUnusedD155]	
	ld c, a		;get number of participating pkmn into c
	xor a	;clear a to zero
	
.exp_adder_loop
	add [hl]	; add the value of the current exp stat to 'a'
	dec c		; decrement participating pkmn
	jr nz, .exp_adder_loop
	
	ld [hl], a	;stick the exp values, now multiplied by the number of participating pkmn, back into the stat address
	
	inc hl	;get next stat 
	dec b
	
	jr nz, .exp_stat_loop
	ret

;joenote - fixes issues where exp all counts fainted pkmn for dividing exp
SetExpAllFlags:
	ld a, $1
	ld [wBoostExpByExpAll], a
	ld a, [wPartyCount]
	ld c, a
	ld b, 0
	ld hl, wPartyMon1HP
.gainExpFlagsLoop	
;wisp92 found that bits need to be rotated in from the left and shifted to the right. 
;Bit 0 of the flags represents the first mon in the party
;Bit 5 of the flags represents the sixth mon in the party
	ld a, [hli]
	or [hl] ; is mon's HP 0?
	jp z, .setnextexpflag	;the carry bit is cleared from the last OR, so 0 will be rotated in next
	scf	;the carry bit is is set, so 1 will be rotated in next
.setnextexpflag 
	jp .do_rotations	
.nextmonforexpall
	dec c
	jr z, .return
	ld a, [wPartyCount]
	sub c
	push bc
	ld bc, wPartyMon2HP - wPartyMon1HP
	ld hl, wPartyMon1HP
	call AddNTimes
	pop bc
	jr .gainExpFlagsLoop
.return
	ld a, b
	ld [wPartyGainExpFlags], a
	ret
.do_rotations
;need to rotate the carry value into the proper flag bit position
;a and hl are free to use
;c is the counter that tells the party position
;b holds the current flag values
	push af	;save carry value
	;the number of rotations needed to move the carry value to the proper flag place is 8 - [wPartyCount] + c
	ld a, $08
	ld hl, wPartyCount 
	sub [hl] ;subtract 1 to 6
	add c	; add the current count
	ld h, a
	pop af	;get the carry value back
	ld a, h
	;a now has the rotation count (8 to 3)
	push bc
	ld c, a	;make c hold the rotation count
	ld a, $00
.loop
	rr a	;rotate the carry value 1 bit to the right per loop
	dec c
	jr nz, .loop
	pop bc
	or b	;append current flag values to a
	ld b, a	; and save them back to b
	jp .nextmonforexpall



EnemyBideAccum:
	ld hl, wEnemyBattleStatus1
	bit STORING_ENERGY, [hl] ; is mon using bide?
	ret z
	xor a
	ld [wEnemyMoveNum], a
	ld hl, wDamage
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wEnemyBideAccumulatedDamage + 1
	ld a, [hl]
	add c ; accumulate damage taken
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a
	ret

PlayerBideAccum:
	ld hl, wPlayerBattleStatus1
	bit STORING_ENERGY, [hl] ; is mon using bide?
	ret z
	xor a
	ld [wPlayerMoveNum], a
	ld hl, wDamage
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wPlayerBideAccumulatedDamage + 1
	ld a, [hl]
	add c ; accumulate damage taken
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a
	ret


ForfeitTrainerMatch:
	ld a, [wLinkState]
	cp LINK_STATE_BATTLING
	ret z	;return if in a link battle
	ld a, [wIsInBattle]
	cp 0	
	ret z	;return if not in battle
	cp 1	
	ret z	;return if in wild battle
	ld a, [hJoyHeld]
	and SELECT
	ret z	;return if select is not being held
	ld hl, ForfeitTrainerMatchText
	call PrintText 
	call NoYesChoice
	ld a, [wCurrentMenuItem]
	and a
	call nz, FaintAllMons
	ret
ForfeitTrainerMatchText:
	TX_FAR _ForfeitTrainerMatchText
	db "@"
_ForfeitTrainerMatchText::
	text "Forfeit?"
	done

FaintAllMons:	
	ld a, $00
	ld [wBattleMonHP], a
	ld [wBattleMonHP + 1], a
	ld [wPartyMon1HP], a
	ld [wPartyMon1HP + 1], a
	ld [wPartyMon2HP], a
	ld [wPartyMon2HP + 1], a
	ld [wPartyMon3HP], a
	ld [wPartyMon3HP + 1], a
	ld [wPartyMon4HP], a
	ld [wPartyMon4HP + 1], a
	ld [wPartyMon5HP], a
	ld [wPartyMon5HP + 1], a
	ld [wPartyMon6HP], a
	ld [wPartyMon6HP + 1], a
	ret


	
;These functions try to handle and correct situations where 
;the disable effect, with a counter of 1, applied to a slower 'mon
;will cause the effect to immediately wear off.
PlayerDisableHandler:
	call GetPredefRegisters
	;hl points to wPlayerDisabledMove at this line
	
	ld a, [hl]
	bit 3, a	;bit 3 is set if this is the first round of the effect
	ret z	;return if not first round
	;else reset the bit and increment the counter
	res 3, a
	inc a
	ld [hl], a
	;counter is now 1 to 8 for the rest of the duration
	
	;now see if the counter is > 1 and return if true
	and $0F
	cp $02
	ret nc
	
	;now test to see if going second in the round
	ld a, [H_WHOFIRST]
	and a
	ret z	;return if going first
	
	;now confirmed that: 
	;--> the counter is initialized to 1 this round. 
	;--> going second this round.
	;Therefore, increment the counter 
	ld a, [hl]
	inc a
	ld [hl], a
.return
	ret

EnemyDisableHandler:
	call GetPredefRegisters
	;hl points to wEnemyDisabledMove at this line
	
	ld a, [hl]
	bit 3, a	;bit 3 is set if this is the first round of the effect
	ret z	;return if not first round
	;else reset the bit and increment the counter
	res 3, a
	inc a
	ld [hl], a
	;counter is now 1 to 8 for the rest of the duration
	
	;now see if the counter is > 1 and return if true
	and $0F
	cp $02
	ret nc
	
	;now test to see if going second in the round
	ld a, [H_WHOFIRST]
	and a
	ret nz	;return if going first
	
	;now confirmed that: 
	;--> the counter is initialized to 1 this round. 
	;--> going second this round.
	;Therefore, increment the counter 
	ld a, [hl]
	inc a
	ld [hl], a
.return
	ret



;return z and nc if nothing detected
;return nz for sleep detected
;return c for  freeze detected
;link battles unsupported
_HandleSlpFrzClause:	
;	call GetPredefRegisters
	
	ld a, [wLinkState]
	cp LINK_STATE_BATTLING
	jp z, .returnshort ;do not enforce for link battles
	
	ld a, [wIsInBattle]
	cp 2
	jr z, .next0 ;continue for trainer battles only
	ld a, 0
	and a
	jp .returnshort
.next0	
	ld a, [wUnusedD721]
	and %11000000
	jp z, .returnshort	;return if neither sleep nor freeze clause bits are set
	
	push de
	
	ld hl, .return
	bit 7, a
	jr nz, .next1
	ld hl, .nofreeze
.next1
	push hl
	ld hl, .next3
	bit 6, a
	jr nz, .next2
	ld hl, .nosleep
.next2
	push hl
	
	ld a, [H_WHOSETURN]
	and a
	jr nz, .playerdata
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
.enemydata
	;copy hp, position, and status of the active pokemon to its roster position
	ld a, [wEnemyMonPartyPos]
	ld hl, wEnemyMon1HP
	ld bc, wEnemyMon2 - wEnemyMon1
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, wEnemyMonHP
	ld bc, 4
	call CopyData
	
	;now set up to start looping through the party
	ld a, [wEnemyPartyCount]	;1 to 6
	dec a	;0 to 5
	ld d, a
	ld bc, wEnemyMon2 - wEnemyMon1
	ld hl, wEnemyMon1Status
	jr .initialize
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
.playerdata
	;copy hp, position, and status of the active pokemon to its roster position
	ld a, [wBattleMonPartyPos]
	ld hl, wPartyMon1HP
	ld bc, wPartyMon2 - wPartyMon1
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, wBattleMonHP
	ld bc, 4
	call CopyData
	
	;now set up to start looping through the party
	ld a, [wPartyCount]	;1 to 6
	dec a	;0 to 5
	ld d, a
	ld bc, wPartyMon2 - wPartyMon1
	ld hl, wPartyMon1Status
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.initialize
	xor a
	push af
.loop	
	pop af
	or [hl]
	push af
	ld a, d
	and a
	jr z, .doneloop
	dec d
	add hl, bc
	jr .loop
.doneloop

	pop af	
	rlca
	rlca
	rlca	;frz bit is now the carry bit and z flag is cleared
	;A is now rotated to be bits 4,3,2,1,0,5,6,7
	;Sleep counter is in bits 2,1,0
	res 7, a
	res 6, a
	res 2, a
	res 1, a
	res 0, a
	inc a
	dec a	;set z flag based zero state of sleep counter
	
	pop hl
	jp hl
.next3
	pop hl 
	jp hl
.return
	pop de
.returnshort
	ret
.nofreeze
	and a
	jp .return
.nosleep
	ld a, 0
	inc a
	dec a
	jp .next3

	
	
SetAttackAnimPal:
	call GetPredefRegisters
	
	ld a, $f0
	ld [wAnimPalette], a
	
	ld a, [hGBC]
	and a
	ret z 
	
	ld a, [wIsInBattle]
	and a
	ret z

	;only continue for valid move animations
	ld a, [wAnimationID]
	and a
	ret z
	cp STRUGGLE
	ret nc	
	
	ld a, $e4
	ld [wAnimPalette], a
	
	push hl
	push bc
	push de
	ld a, [wcf91]
	push af
	
;doing a move animation, so find its type and apply color
	ld a, [H_WHOSETURN]
	and a
	ld hl, wPlayerMoveType
	jr z, .playermove
	ld hl, wEnemyMoveType
.playermove
	ld a, [hl]
	ld bc, $0000
	ld c, a
	ld hl, TypePalColorList
	add hl, bc
	ld a, [hl]
	ld b, a

	ld c, 4
.transfer
	ld d, CONVERT_OBP0
	ld e, c
	dec e
	ld a, b	
	add VICTREEBEL+1
	ld [wcf91], a
	push bc
	callba TransferMonPal
	pop bc
	dec c
	jr nz, .transfer
	
	pop af
	ld [wcf91], a
	pop de
	pop bc
	pop hl
	ret	
TypePalColorList:
	db PAL_BW;normal
	db PAL_GREYMON;fighting
	db PAL_MEWMON;flying
	db PAL_PURPLEMON;poison
	db PAL_BROWNMON;ground
	db PAL_GREYMON;rock
	db PAL_BW;untyped
	db PAL_GREENMON;bug
	db PAL_PURPLEMON;ghost
	db PAL_BW;unused
	db PAL_BW;unused
	db PAL_BW;unused
	db PAL_BW;unused
	db PAL_BW;unused
	db PAL_BW;unused
	db PAL_BW;unused
	db PAL_BW;unused
	db PAL_BW;unused
	db PAL_BW;unused
	db PAL_BW;unused
	db PAL_REDMON;fire
	db PAL_BLUEMON;water
	db PAL_GREENMON;grass
	db PAL_YELLOWMON;electric
	db PAL_PINKMON;psychic
	db PAL_CYANMON;ice
	db PAL_REDMON;dragon
