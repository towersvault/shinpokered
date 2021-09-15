ViridianHouseObject:
	db $a ; border block

	db 2 ; warps
	warp 2, 7, 3, -1
	warp 3, 7, 3, -1

	db 0 ; signs

	db 6 ; objects
	object SPRITE_BALDING_GUY, 5, 3, STAY, NONE, 1 ; person
	object SPRITE_LITTLE_GIRL, 1, 4, WALK, 1, 2 ; person
	object SPRITE_BIRD, 5, 5, WALK, 2, 3 ; person
	object SPRITE_CLIPBOARD, 4, 0, STAY, NONE, 4 ; person
	;joenote - adding clause brothers
	object SPRITE_BLACK_HAIR_BOY_1, 7, 5, STAY, LEFT, 5	;clause brother 1
	object SPRITE_BLACK_HAIR_BOY_1, 6, 1, STAY, DOWN, 6	;clause brother 2
;	object SPRITE_BLACK_HAIR_BOY_1, 2, , STAY, DOWN, 7	;clause brother 3
	
	; warp-to
	warp_to 2, 7, VIRIDIAN_HOUSE_WIDTH
	warp_to 3, 7, VIRIDIAN_HOUSE_WIDTH
