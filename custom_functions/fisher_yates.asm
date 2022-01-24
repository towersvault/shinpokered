;randomizes an encountered wild pokemon
ReplaceWildMon:
	call _ReplaceMon
	call GetPredefRegisters
	ret

;randomizes the game corner pokemon prizes
randomMonPrizes:
	ld a, [wPrize1]
	ld [wcf91], a
	call _ReplaceMon
	ld a, [wcf91]
	ld [wPrize1], a
	
	ld a, [wPrize2]
	ld [wcf91], a
	call _ReplaceMon
	ld a, [wcf91]
	ld [wPrize2], a
	
	ld a, [wPrize3]
	ld [wcf91], a
	call _ReplaceMon
	ld a, [wcf91]
	ld [wPrize3], a
	
	call GetPredefRegisters
	ret

;takes a mon value in wd11e
;finds the vanilla mon value that would randomize to it
;saves it back into wd11e
LookupWildRandomMon:
	CheckEvent EVENT_8DE
	jr z, .return
	
	ld hl, ListRealPkmn
.loop	
	ld a, [hl]
	and a
	jr z, .return
	ld [wcf91], a
	push hl
	call _ReplaceMon
	pop hl
	ld a, [wcf91]
	ld b, a
	ld a, [wd11e]
	cp b
	jr z, .match
	inc hl
	jr .loop
.match
	ld a, [hl]
	ld [wd11e], a
.return
	call GetPredefRegisters
	ret

;takes a pokemon value in wcf91
;converts the value to its randomized list value
;stores that value back into wcf91 and wEnemyMonSpecies2
_ReplaceMon:
	CheckEvent EVENT_8DE
	ret z
	
	CheckEvent EVENT_10E   ;active ghost marowak?
	ret nz
	
	ld a, [wRandomizerSeed]
	and a 
	jr nz, .no_update
	ld a, [wPlayerID]
	ld [wRandomizerSeed], a
	and a 
	jr nz, .no_update 
	call Random	
	ld [wRandomizerSeed], a
.no_update
	ld [wUnusedD722], a
	
	;stack pointer needs to be greater than or equal to $DF40
	ld hl, $0000
	add hl, sp
	ld a, l
	cp $40
	ret c
	
	ld hl, MonListC
	CheckEvent EVENT_GOT_STARTER
	jr nz, .notstarter
	ld hl, MonListStarter
.notstarter
	ld a, [wcf91]
	ld de, $0001
	push hl
	call IsInArray
	pop hl
	jr c, .listfound
	
	ld a, [wcf91]
	ld hl, MonListB
	ld de, $0001
	push hl
	call IsInArray
	pop hl
	jr c, .listfound
	
	ld a, [wcf91]
	ld hl, MonListA
	ld de, $0001
	push hl
	call IsInArray
	pop hl
	ret nc	;return if not in list

.listfound
	;B now holds the offset of the selected mon
	ld a, b
	ld [wUnusedD722 + 1], a
	
	ld d, h
	ld e, l
	
	;DE now points to the mon list
	
	ld c, $00
.loop
	ld a, [hli]
	cp $FF
	jr z, .next
	inc c
	jr .loop
.next

	;C now holds the number of mons in the list
	
	ld hl, $DF00
.loop2
	ld a, [de]
	cp $FF
	jr z, .next2
	ld [hli], a
	inc de
	jr .loop2 
.next2
	
	;the mon list is now loaded into $DF00 of the stack and upward
	
	ld hl, $DF00
.loop3
	ld a, [wUnusedD722]
.loop_remainder
	sub c
	jr nc, .loop_remainder
	add c
	
	ld d, h
	ld e, l
	
	add l
	ld l, a
	
	ld a, [hl]
	ld b, a
	ld a, [de]
	ld [hl], a
	ld a, b
	ld [de], a
	
	ld a, [wUnusedD722 + 1]
	cp e
	jr z, .next3
	
	
	ld h, d
	ld l, e
	
	ld a, [wUnusedD722]
	add b
	ld [wUnusedD722], a
	inc hl
	dec c
	jr .loop3
.next3
	ld a, [de]
	ld [wcf91], a
	ld [wEnemyMonSpecies2], a
	ret


MonListC:
	db	MAGIKARP	 ;85
	db	METAPOD	 ;7C
	db	KAKUNA	 ;71
	db	ABRA	 ;94
	db	JIGGLYPUFF	 ;64
	;fall through
MonListStarter:	;because not all mons in c-tier are viable as a starter pokemon
	db	KOFFING	 ;37
	db	FARFETCHD	 ;40
	db	TENTACOOL	 ;18
	db	DROWZEE	 ;30
	db	STARYU	 ;1B
	db	SANDSHREW	 ;60
	db	GROWLITHE	 ;21
	db	SEEL	 ;3A
	db	SHELLDER	 ;17
	db	EXEGGCUTE	 ;0C
	db	EEVEE	 ;66
	db	SLOWPOKE	 ;25
	db	DODUO	 ;46
	db	GRIMER	 ;0D
	db	GASTLY	 ;19
	db	VOLTORB	 ;06
	db	MACHOP	 ;6A
	db	BELLSPROUT	 ;BC
	db	GEODUDE	 ;A9
	db	MAGNEMITE	 ;AD
	db	CUBONE	 ;11
	db	HORSEA	 ;5C
	db	PIKACHU	 ;54
	db	MANKEY	 ;39
	db	CLEFAIRY	 ;04
	db	ODDISH	 ;B9
	db	PSYDUCK	 ;2F
	db	BULBASAUR	 ;99
	db	SQUIRTLE	 ;B1
	db	VENONAT	 ;41
	db	MEOWTH	 ;4D
	db	CHARMANDER	 ;B0
	db	VULPIX	 ;52
	db	PARAS	 ;6D
	db	DITTO	 ;4C
	db	NIDORAN_F	 ;0F
	db	EKANS	 ;6C
	db	NIDORAN_M	 ;03
	db	SPEAROW	 ;05
	db	DIGLETT	 ;3B
	db	RATTATA	 ;A5
	db	PIDGEY	 ;24
	db	ZUBAT	 ;6B
	db	CATERPIE	 ;7B
	db	WEEDLE	 ;70
	db	GOLDEEN	 ;9D
	db	POLIWAG	 ;47
	db	DRATINI	 ;58
	db $FF
MonListB:
	db	RAICHU	 ;55
	db	MAGNETON	 ;36
	db	TANGELA	 ;1E
	db	SEADRA	 ;5D
	db	ELECTABUZZ	 ;35
	db	MAGMAR	 ;33
	db	GOLBAT	 ;82
	db	SLOWBRO	 ;08
	db	SEAKING	 ;9E
	db	FEAROW	 ;23
	db	VENOMOTH	 ;77
	db	ARBOK	 ;2D
	db	DUGTRIO	 ;76
	db	HAUNTER	 ;93
	db	PARASECT	 ;2E
	db	MACHOKE	 ;29
	db	WEEPINBELL	 ;BD
	db	GRAVELER	 ;27
	db	PONYTA	 ;A3
	db	MAROWAK	 ;91
	db	HITMONLEE	 ;2B
	db	HITMONCHAN	 ;2C
	db	RATICATE	 ;A6
	db	ONIX	 ;22
	db	MR_MIME	 ;2A
	db	JYNX	 ;48
	db	KADABRA	 ;26
	db	GLOOM	 ;BA
	db	RHYHORN	 ;12
	db	NIDORINA	 ;A8
	db	NIDORINO	 ;A7
	db	LICKITUNG	 ;0B
	db	KRABBY	 ;4E
	db	PIDGEOTTO	 ;96
	db	POLIWHIRL	 ;6E
	db	PORYGON	 ;AA
	db $FF
MonListA:
	db	TAUROS	 ;3C
	db	TENTACRUEL	 ;9B
	db	PINSIR	 ;1D
	db	SNORLAX	 ;84
	db	KINGLER	 ;8A
	db	WEEZING	 ;8F
	db	SCYTHER	 ;1A
	db	CHANSEY	 ;28
	db	HYPNO	 ;81
	db	KANGASKHAN	 ;02
	db	SANDSLASH	 ;61
	db	GOLDUCK	 ;80
	db	DEWGONG	 ;78
	db	DODRIO	 ;74
	db	MUK	 ;88
	db	ELECTRODE	 ;8D
	db	LAPRAS	 ;13
	db $FF
	
