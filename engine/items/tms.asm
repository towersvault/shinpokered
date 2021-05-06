; tests if mon [wcf91] can learn move [wMoveNum]
CanLearnTM:
	ld a, [wcf91]
	ld [wd0b5], a
	call GetMonHeader
	ld hl, wMonHLearnset

	call SurfingPikachu ;joenote - handle a pikachu that can learn surf
	
	push hl
	ld a, [wMoveNum]
	ld b, a
	ld c, $0
	ld hl, TechnicalMachines
.findTMloop
	ld a, [hli]
	cp b
	jr z, .TMfoundLoop
	inc c
	jr .findTMloop
.TMfoundLoop
	pop hl
	ld b, FLAG_TEST
	predef_jump FlagActionPredef

; converts TM/HM number in wd11e into move number
; HMs start at 51
TMToMove:
	ld a, [wd11e]
	dec a
	ld hl, TechnicalMachines
	ld b, $0
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wd11e], a
	ret

SurfingPikachu:
	ld a, [wcf91]
	cp PIKACHU
	ret nz

	push bc
	push hl
	ld a, [wWhichPokemon]
	ld hl, wPartyMon1CatchRate
	ld bc, wPartyMon2 - wPartyMon1
	call AddNTimes
	ld a, [hl]
	cp 168
	pop hl
	pop bc
	ret nz

	ld a, [wMonHLearnset + 6]
	or $10
	ld [wMonHLearnset + 6], a
	ret
	
INCLUDE "data/tms.asm"
