;joenote - add secret cave for mist_stone with associated warps
DiglettsCaveScript:
	jp EnableAutoTextBoxDrawing

DiglettsCaveTextPointers:
;	db "@"
	dw Mist_Stone_Text
	
Mist_Stone_Text:
	TX_ASM
	ld hl, _TXTDevGreeting
	call PrintText

	ld hl, _TXTDevGreeting2
	CheckEvent EVENT_8C4
	jr nz, .next
	
	ld hl, _TXTDevHint
	CheckEvent EVENT_8C3
	jr z, .next
	
	;give MIST_STONE item
	lb bc, MIST_STONE, 1
	call GiveItem
	ld hl, _TXTDevBag
	jr nc, .next	;jump if not enough room in bag
	SetEvent EVENT_8C4
	ld hl, _TXTDevMist_Stone
	call PrintText
	ld a, SFX_GET_ITEM_1
	call PlaySound 
	call WaitForSoundToFinish
	ld hl, _TXTDevGreeting2
.next
	call PrintText
	jp TextScriptEnd

_TXTDevGreeting:
	text "It's me, the dev"
	line "of this ROM hack!"
	cont "Welcome to my"
	cont "secret room."
	prompt
	db "@"

_TXTDevGreeting2:
	text "I always seem to"
	line "be cooking up new"
	cont "game-goodies."
	done
	db "@"

_TXTDevHint:
	text "Did you know that"
	line "there's a way to"
	cont "get behind BILL's"
	cont "house? Maybe show"
	cont "him a NEW SPECIES"
	cont "of #MON."
	
	para "Come tell me if"
	line "you succeed." 
	done
	db "@"

_TXTDevMist_Stone:
	text "So you found the"
	line "way to the secret"
	cont "area from BILL."
	cont "Great job!"
	
	para "I prepared this"
	line "just for you."
	
	para "You recieved the"
	line "MIST STONE!@@"
	db "@"
	
_TXTDevBag:
	text "Make some room in"
	line "your bag for me."
	done
	db "@"
