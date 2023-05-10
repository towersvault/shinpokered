Random_::
; Generate a random 16-bit value.
;	ld a, [rDIV]
;	ld b, a
;	ld a, [hRandomAdd]
;	adc b
;	ld [hRandomAdd], a
;	ld a, [rDIV]
;	ld b, a
;	ld a, [hRandomSub]
;	sbc b
;	ld [hRandomSub], a
;	ret

;joenote - implementing Patrik Rak's Xor-Shift random number generator
;Found at https://gist.github.com/raxoft/2275716fea577b48f7f0
;Patrik Rak released this code into public domain.

; 8-bit Xor-Shift random number generator.
; Created by Patrik Rak in 2008 and revised in 2011/2012.
; See http://www.worldofspectrum.org/forums/showthread.php?t=23070

;Note about the hram locations and how they hold random values:
;hRandomAdd = x[n]
;hRandomLast = x[n-1]
;hRandomSub = x[n-2]
;hRandomLast+1 = x[n-3]
;This gives up to 4 random values to pick from so long as this function as been called at least 4 times.

	;load Seed[n] into bc
	ld hl, hRandomAdd + 1
	ld a, [hld]
	ld b, a
	ld a, [hl]
	ld c, a
	;load Seed[n-1] into de
	ld hl, hRandomLast + 1
	ld a, [hld]
	ld d, a
	ld a, [hli]
	ld e, a
	;Seed[n-1] = Seed[n] 
	ld a, b
	ld [hld], a
	ld a, c
	ld [hl], a
	
	ld  a,c         
    add a,a
    add a,a
    add a,a
    xor c
    ld  c,a
    ld  a,d         
    add a,a
    xor d
    ld  b,a
    rra             
    xor b
    xor c
    ld  b,e         
    ld  c,a    
	
	ld hl, hRandomAdd + 1
	ld a, b
	ld [hld], a
	ld a, c
	ld [hl], a
 	ret


;joenote - rolls 1d16-1	twice and keeps the higher result for each of the four DV values
_Random_BiasDV::
	
	call Random
	ld b, a
	and $F0
	ld h, a
	ld a, b
	and $0F
	ld l, a
	
	call Random
	ld b, a
	and $F0
	ld d, a
	ld a, b
	and $0F
	ld e, a
	
	call Random
	ld b, a
	and $F0
	cp h
	jr c, .next1
	ld h, a
.next1
	ld a, b
	and $0F
	cp l
	jr c, .next2
	ld l, a
.next2
	
	call Random
	ld b, a
	and $F0
	cp d
	jr c, .next3
	ld d, a
.next3
	ld a, b
	and $0F
	cp e
	jr c, .next4
	ld e, a
.next4
	
	ld a, h
	or l
	ld b, a
	
	ld a, d
	or e
	ld d, a
	ld e, b
	
	ret
	
_Random_DV::	;generates four 0 to 15 DVs in DE, and rerolls 1 time for each DV below the value placed in L
	ld l, 0
	
	ld a, [wOptions]	;load game options
	bit BIT_BATTLE_HARD, a			;check for hard mode
	jr z, .begin	;if in hard mode, bias the DV upwards a little bit
	ld l, 4
	
.begin
	ld c, 4
.loop
	call Random
	ld b, a
	and $0F
	cp l
	jr nc, .next
	swap b
.next
	ld a, b
	push af
	dec c
	jr nz, .loop

	ld de, $0000

	pop af
	and $0F
	swap a
	or d
	ld d, a

	pop af
	and $0F
	or d
	ld d, a

	pop af
	and $0F
	swap a
	or e
	ld e, a

	pop af
	and $0F
	or e
	ld e, a
	
	ret

	
	
	
	
	
	
	
	
	