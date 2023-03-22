FarCopyData::
; Copy bc bytes from a:hl to de.
	ld [wBuffer], a
	ld a, [H_LOADEDROMBANK]
	push af
	ld a, [wBuffer]
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	call CopyData
	pop af
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	ret

CopyData::
;joenote - Allow a flag to control writes only being performed within a period where VRAM can be accessed
	ld a, [hFlagsFFFA]
	bit 3, a
	jr z, .next
.waitForAccessibleVRAMLoop1
	ld a, [rSTAT]
	and %11 ; are we in HBlank?
	jr nz, .waitForAccessibleVRAMLoop1 ; loop until we're in a safe period to transfer to VRAM	
.next

; Copy bc bytes from hl to de.
	ld a, [hli]
	ld [de], a

	;joenote - There are rare instances where the write happens and you accidentally overshot into mode 3.
	;		- Check to see if we're in the invalid mode 3. If so, go back and redo the last write.
	ld a, [hFlagsFFFA]
	bit 3, a
	jr z, .next2
	ld a, [rSTAT]
	and %11
	cp 3
	jr nz, .next2
	dec hl
	dec de
	inc bc
.next2

	inc de
	dec bc
	ld a, c
	or b
	jr nz, CopyData
	ret
