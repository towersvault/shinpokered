_TM18PreReceiveText::
	text "Oh, hi! I finally"
	line "finished #MON!"

	para "Not done yet?"
	line "This might be"
	cont "useful!"
	prompt

_ReceivedTM18Text::
	text "<PLAYER> received"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_TM18ExplanationText::
	text "TM18 is COUNTER!"
	line "Not like the one"
	cont "I'm leaning on,"
	cont "mind you!"
	
	para "It meets NORMAL"
	line "or FIGHTING moves"
	cont "with 2x damage!"
	done

_TM18NoRoomText::
	text "Your pack is full"
	line "of items!"
	done

_CeladonMart3Text2::
	text "Captured #MON"
	line "are registered"
	cont "with an ID No."
	cont "and OT, the name"
	cont "of the Original"
	cont "Trainer that"
	cont "caught it!"
	done

IF DEF(_JPTXT)	;joenote - this was changed in the localization for some reason
_CeladonMart3Text3::
	text "All right!"

	para "My buddy's going"
	line "to trade me his"
	cont "KANGASKHAN for my"
	cont "HAUNTER!"
	done

_CeladonMart3Text4::
	text "Come on, my sweet"
	line "HAUNTY-pie!"

	para "I'm an absolute"
	line "HAUNTER maniac."

	para "... ...Huh?"

	para "HAUNTER turned"
	line "into a different"
	cont "#MON!"
	done
ELSE
_CeladonMart3Text3::
	text "All right!"

	para "My buddy's going"
	line "to trade me his"
	cont "KANGASKHAN for my"
	cont "GRAVELER!"
	done

_CeladonMart3Text4::
	text "Come on GRAVELER!"

	para "I love GRAVELER!"
	line "I collect them!"

	para "Huh?"

	para "GRAVELER turned"
	line "into a different"
	cont "#MON!"
	done
ENDC

_CeladonMart3Text5::
	text "You can identify"
	line "#MON you got"
	cont "in trades by"
	cont "their ID Numbers!"
	done

_CeladonMart3Text6::
	text "It's an SNES!"
	done

_CeladonMart3Text7::
	text "An RPG! There's"
	line "no time for that!"
	done

_CeladonMart3Text9::
	text "A sports game!"
	line "Dad'll like that!"
	done

_CeladonMart3Text11::
	text "A puzzle game!"
	line "Looks addictive!"
	done

_CeladonMart3Text13::
	text "A fighting game!"
	line "Looks tough!"
	done

_CeladonMart3Text14::
	text "3F: TV GAME SHOP"
	done

_CeladonMart3Text15::
IF DEF(_JPTXT)
	text "Red and Green!"
ELSE
	text "Red and Blue!"
ENDC
	line "Both are #MON!"
	done

_CeladonMart3Blocker::
	text "This vendor will"
	line "be open after the"
	cont "#MON League"
	cont "Championship."
	
	para "Come back to buy"
	line "rare new items"
	cont "from SILPH CO."
	
	para "Phew!"
	line "It is really hot"
	cont "in this costume."
	done