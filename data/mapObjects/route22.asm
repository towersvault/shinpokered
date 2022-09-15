Route22Object:
	db $2c ; border block

	db 1 ; warps
	warp 8, 5, 0, ROUTE_22_GATE

	db 1 ; signs
;	sign 7, 11, 3 ; Route22FrontGateText
	sign 7, 11, 4 ; Route22FrontGateText

;	db 2 ; objects
	db 3	;joenote - adding trade back in for chikuchiku
	object SPRITE_BLUE, 25, 5, STAY, RIGHT, 1 ; person
	object SPRITE_BLUE, 25, 5, STAY, RIGHT, 2 ; person
	object SPRITE_BUG_CATCHER, 2, 14, WALK, 0, 3 ; person

	; warp-to
	warp_to 8, 5, ROUTE_22_WIDTH ; ROUTE_22_GATE
