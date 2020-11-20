DungeonMonsB1:;joenote - added mew
	db $19
	db 55,RHYDON
	db 55,MAROWAK
	db 55,ELECTRODE
	IF DEF(_RED)
		db 64,ARBOK
	ENDC
	IF (DEF(_BLUE) || DEF(_GREEN))
		db 64,SANDSLASH
	ENDC
	db 64,PARASECT
	db 64,RAICHU
	db 64,CHANSEY
	db 65,DITTO
	db 67,DITTO
	db 70,MEW
	db $00
