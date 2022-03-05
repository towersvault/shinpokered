IncrementDayCareMonExp:
	ld a, [wDayCareInUse]
	and a
	ret z

	push bc
	ld bc, $0001
	ld hl, wDayCareMonExp + 2
	
	;add exp 
	ld a, c	
	add [hl]
	ld [hld], a
	ld a, b
	adc [hl]
	ld [hld], a
	ld a, 0
	adc [hl]
	ld [hl], a
	jr nc, .return
	
;joenote - set the cap at $FFFFFF exp
	ld a, $FF
	ld [hli], a
	ld [hli], a
	ld [hl], a
.return
	pop bc
	ret
