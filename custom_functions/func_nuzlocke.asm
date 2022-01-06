;joenote - Custom functions to handle built-in nuzlocke option

;checks to see if party mon at position wUsedItemOnWhichPokemon is dead or not
;if dead --> return with z
;if alive --> return with nz
IsPartyMonDead:
	ld hl, wPartyMon1CatchRate
	ld bc, wPartyMon2 - wPartyMon1
	ld a, [wUsedItemOnWhichPokemon]
	call AddNTimes
	ld a, [hl]
	cp DEAD
	ret


EndOfBattle_NuzlockeHandler:
OverwoldDamage_NuzlockeHandler:
	ld a, [wLinkState]
	cp LINK_STATE_BATTLING
	ret z	;return if this was a link battle

	call IsNuzlocke
	ret z	;return if not in nuzlocke mode
	
	ld a, [wUnusedD721]
	bit 1, a
	ret nz	;return if player forfeited, 
	
	call SetDeadPartyMons
	ret


ForfeitConfirmed_NuzlockeHandler:
	ld a, [wLinkState]
	cp LINK_STATE_BATTLING
	ret z	;return if this was a link battle

	call IsNuzlocke
	ret z	;return if not in nuzlocke mode
	
	ld a, [wUnusedD721]
	bit 1, a
	ret z	;return if player did not actually forfeit, 
	
	call SetDeadPartyMons
	ret


HealParty_NuzlockeHandler:
	call IsNuzlocke
	ret z	;return if not in nuzlocke mode

	call OneHPDeadMons
	call ZeroPPDeadMons	
	call FRZDeadMons
	ret

	
;is nuzlocke mode active
IsNuzlocke:
	ld a, [wUnusedD721]
	bit 6, a
	ret


;Set KO'ed pokemon as dead
SetDeadPartyMons:
	push de
	ld a, [wPartyCount]
	ld d, a
	
	ld hl, wPartyMon1HP
	ld bc, wPartyMon2 - wPartyMon1
	
.loop
	ld a, [hli]
	or [hl]
	dec hl
	jr nz, .next
	
	push hl
	push bc
	ld bc, (wPartyMon1CatchRate - wPartyMon1HP)
	add hl, bc
	pop bc
	ld a, DEAD
	ld [hl], a
	pop hl
	
.next
	add hl, bc
	dec d
	jr nz, .loop
	
	pop de
	ret


;give dead partymons 1 HP
OneHPDeadMons:
	push de
	
	ld a, [wPartyCount]
	ld d, a
	
	ld hl, wPartyMon1CatchRate
	ld bc, wPartyMon2 - wPartyMon1
	
.loop	
	;check the catch rate for the "dead" value
	ld a, [hl]
	cp DEAD
	jr nz, .next
	
	;if dead, give it 1 hp
	push hl
	push bc
	ld bc, $FFFA
	add hl, bc	;same as subtracting 6, and points hl to PartyMonXHP
	pop bc
	xor a
	ld [hli], a
	inc a
	ld [hli], a
	pop hl

.next
	add hl, bc
	dec d
	jr nz, .loop
	
	pop de
	ret


;give dead partymons 0 PP
ZeroPPDeadMons:
	push de
	
	ld a, [wPartyCount]
	ld d, a
	
	ld hl, wPartyMon1CatchRate
	ld bc, wPartyMon2 - wPartyMon1
	
	ld e, %11000000

.loop	
	;check the catch rate for the "dead" value
	ld a, [hl]
	cp DEAD
	jr nz, .next
	
	;if dead, zero the PP for all moves
	push hl
	push bc
	ld bc, (wPartyMon1PP - wPartyMon1CatchRate)	;point to PartyMonXPP
	add hl, bc
	pop bc
	;move 1
	ld a, [hl]
	and e
	ld [hli], a
	;move 2
	ld a, [hl]
	and e
	ld [hli], a
	;move 3
	ld a, [hl]
	and e
	ld [hli], a
	;move 4
	ld a, [hl]
	and e
	ld [hli], a
	pop hl

.next
	add hl, bc
	dec d
	jr nz, .loop
	
	pop de
	ret

	
;give dead partymons the FRZ status
FRZDeadMons:
	push de
	
	ld a, [wPartyCount]
	ld d, a
	
	ld hl, wPartyMon1CatchRate
	ld bc, wPartyMon2 - wPartyMon1
	
.loop	
	;check the catch rate for the "dead" value
	ld a, [hl]
	cp DEAD
	jr nz, .next
	
	;if dead, give it the FRZ status
	push hl
	dec hl
	dec hl
	dec hl
	;points hl to PartyMonXStatus
	xor a
	set FRZ, a
	ld [hl], a
	pop hl

.next
	add hl, bc
	dec d
	jr nz, .loop
	
	pop de
	ret


;set & reset the nuzlocke encounter event bit specified by register DE	
SetNuzlockeEncounterEvent:
	call NuzlockeEncounterEvent_common1
	set 0, a
	call NuzlockeEncounterEvent_common2
	ret
ResetNuzlockeEncounterEvent:
	call NuzlockeEncounterEvent_common1
	res 0, a
	call NuzlockeEncounterEvent_common2
	ret
NuzlockeEncounterEvent_common1:
	push de
	;divide by 8 to get the byte offset needed for wEventFlags
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	ld b, d
	ld c, e 	;BC = byte offset
	pop de
	
	;point hl to the correct event flag byte
	ld hl, wEventFlags
	add hl, bc

	;convert BC to the nearest event flag multiple of 8 (rounded down)
	sla c
	rl b
	sla c
	rl b
	sla c
	rl b
	
	;get the bit that needs to be set at the offset by doing DE = DE - BC
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc b
	ld d, a
	;D = 0 & E = bit offset at byte offset
	
	;rotate to the correct bit
	ld a, [hl]
	push de
	inc e
.loop1
	dec e
	jr z, .next1
	rrca
	jr .loop1
.next1
	pop de
	ret	
NuzlockeEncounterEvent_common2:
;rotate back and store value
	inc e
.loop2
	dec e
	jr z, .next2
	rlca
	jr .loop2
.next2
	ld [hl], a
	ret
