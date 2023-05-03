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
	jr z, .write

.waitForAccessibleVRAMLoop1
	ld a, [rSTAT]
	and %11 ; are we in HBlank?
	jr nz, .waitForAccessibleVRAMLoop1 ; loop until we're in a safe period to transfer to VRAM	

.write_vram
	;now write to VRAM
	ld a, [hl]
	ld [de], a
	;joenote - make sure that the values between the source and destination match.
	ld a, [de]
	cp [hl]
	jr nz, .waitForAccessibleVRAMLoop1
	inc hl
	jr .next

.write
; Copy bc bytes from hl to de.
	ld a, [hli]
	ld [de], a
	
.next
	inc de
	dec bc
	ld a, c
	or b
	jr nz, CopyData
	ret
