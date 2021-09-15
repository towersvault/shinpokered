ViridianHouseScript:
	jp EnableAutoTextBoxDrawing

ViridianHouseTextPointers:
	dw ViridianHouseText1
	dw ViridianHouseText2
	dw ViridianHouseText3
	dw ViridianHouseText4
	dw ClauseBrother_Item
	dw ClauseBrother_Sleep
	dw ClauseBrother_Freeze

ViridianHouseText1:
	TX_FAR _ViridianHouseText1
	db "@"

ViridianHouseText2:
	TX_FAR _ViridianHouseText2
	db "@"

ViridianHouseText3:
	TX_ASM
	ld hl, ViridianHouseText_1d5b1
	call PrintText
	ld a, SPEAROW
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

ViridianHouseText_1d5b1:
	TX_FAR _ViridianHouseText_1d5b1
	db "@"

ViridianHouseText4:
	TX_FAR _ViridianHouseText4
	db "@"

;joenote - adding Clause Brothers
ClauseBrother_Item:
	TX_ASM
	ld hl, ClauseBrother_ItemIntro
	call PrintText

	ld a, [wUnusedD721]
	bit 5, a
	jr z, .ask_turn_on
	
	ld hl, ClauseBrother_OFF
	call PrintText
	call .choose
	ld hl, ClauseBrother_REJECT
	jr z, .end
	ld a, [wUnusedD721]
	res 5, a
	ld [wUnusedD721], a
	jr .print_done

.ask_turn_on
	ld hl, ClauseBrother_ItemDesc
	call PrintText
	call .choose
	ld hl, ClauseBrother_REJECT
	jr z, .end
	ld a, [wUnusedD721]
	set 5, a
	ld [wUnusedD721], a
	
.print_done
	ld hl, ClauseBrother_DONE
.end
	call PrintText
	jp TextScriptEnd
.choose
	call NoYesChoice
	ld a, [wCurrentMenuItem]
	and a
	ret

ClauseBrother_Sleep:
	TX_ASM
	ld hl, ClauseBrother_SleepIntro
	call PrintText

	ld a, [wUnusedD721]
	bit 6, a
	jr z, .ask_turn_on
	
	ld hl, ClauseBrother_OFF
	call PrintText
	call .choose
	ld hl, ClauseBrother_REJECT
	jr z, .end
	ld a, [wUnusedD721]
	res 6, a
	ld [wUnusedD721], a
	jr .print_done

.ask_turn_on
	ld hl, ClauseBrother_SleepDesc
	call PrintText
	call .choose
	ld hl, ClauseBrother_REJECT
	jr z, .end
	ld a, [wUnusedD721]
	set 6, a
	ld [wUnusedD721], a
	
.print_done
	ld hl, ClauseBrother_DONE
.end
	call PrintText
	jp TextScriptEnd
.choose
	call NoYesChoice
	ld a, [wCurrentMenuItem]
	and a
	ret
	
ClauseBrother_Freeze:
	TX_ASM
	ld hl, ClauseBrother_FreezeIntro
	call PrintText

	ld a, [wUnusedD721]
	bit 7, a
	jr z, .ask_turn_on
	
	ld hl, ClauseBrother_OFF
	call PrintText
	call .choose
	ld hl, ClauseBrother_REJECT
	jr z, .end
	ld a, [wUnusedD721]
	res 7, a
	ld [wUnusedD721], a
	jr .print_done

.ask_turn_on
	ld hl, ClauseBrother_FreezeDesc
	call PrintText
	call .choose
	ld hl, ClauseBrother_REJECT
	jr z, .end
	ld a, [wUnusedD721]
	set 7, a
	ld [wUnusedD721], a
	
.print_done
	ld hl, ClauseBrother_DONE
.end
	call PrintText
	jp TextScriptEnd
.choose
	call NoYesChoice
	ld a, [wCurrentMenuItem]
	and a
	ret
	
ClauseBrother_OFF:
	TX_FAR _ClauseBrother_OFF
	db "@"
ClauseBrother_DONE:
	TX_FAR _ClauseBrother_DONE
	db "@"	
ClauseBrother_REJECT:
	TX_FAR _ClauseBrother_REJECT
	db "@"
ClauseBrother_ItemIntro:
	TX_FAR _ClauseBrother_ItemIntro
	db "@"
ClauseBrother_ItemDesc:
	TX_FAR _ClauseBrother_ItemDesc
	db "@"
ClauseBrother_SleepIntro:
	TX_FAR _ClauseBrother_SleepIntro
	db "@"
ClauseBrother_SleepDesc:
	TX_FAR _ClauseBrother_SleepDesc
	db "@"
ClauseBrother_FreezeIntro:
	TX_FAR _ClauseBrother_FreezeIntro
	db "@"
ClauseBrother_FreezeDesc:
	TX_FAR _ClauseBrother_FreezeDesc
	db "@"
