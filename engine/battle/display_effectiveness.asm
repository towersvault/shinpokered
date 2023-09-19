DisplayEffectiveness:
;joenote - if a multi-attack move, only display effectiveness on the last attack 
	callba TestMultiAttackMoveUse
	jr nz, .next
	callba TestMultiAttackMoveUse_lastAttack
	ret nz
.next
	
	ld a, [wDamageMultipliers]
	and $7F
	cp $0A
	ret z
	ld hl, SuperEffectiveText
	jr nc, .done
	ld hl, NotVeryEffectiveText
.done
	jp PrintText

SuperEffectiveText:
	TX_FAR _SuperEffectiveText
	db "@"

NotVeryEffectiveText:
	TX_FAR _NotVeryEffectiveText
	db "@"
