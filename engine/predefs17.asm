; this function temporarily makes the starters (and Ivysaur) seen
; so that the full Pokedex information gets displayed in Oak's lab
;joenote - modify this to work with NG+; wPokedexOwned is preserved instead of cleared
StarterDex:
	ld a, [wPokedexOwned]
	push af
	ld a, %01001011 ; set starter flags
	ld [wPokedexOwned], a
	predef ShowPokedexData
	;xor a ; unset starter flags
	pop af
	ld [wPokedexOwned], a
	ret
