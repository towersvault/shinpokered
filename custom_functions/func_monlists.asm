ListRealPkmn:
	db MEW          ; $15
ListNonMythPkmn:
	db MEWTWO       ; $83
ListNonMewPkmn:
	db MOLTRES      ; $49
	db ARTICUNO     ; $4A
	db ZAPDOS       ; $4B
ListNonLegendPkmn:
	db ABRA         ; $94
	db BELLSPROUT   ; $BC
	db BULBASAUR    ; $99
	db CATERPIE     ; $7B
	db CHARMANDER   ; $B0
	db CLEFAIRY     ; $04
	db CUBONE       ; $11
	db DIGLETT      ; $3B
	db DODUO        ; $46
	db DRATINI      ; $58
	db DROWZEE      ; $30
	db EEVEE        ; $66
	db EKANS        ; $6C
	db EXEGGCUTE    ; $0C
	db GASTLY       ; $19
	db GEODUDE      ; $A9
	db GOLDEEN      ; $9D
	db GRIMER       ; $0D
	db GROWLITHE    ; $21
	db HORSEA       ; $5C
	db JIGGLYPUFF   ; $64
	db KABUTO       ; $5A
	db KOFFING      ; $37
	db KRABBY       ; $4E
	db MACHOP       ; $6A
	db MAGIKARP     ; $85
	db MAGNEMITE    ; $AD
	db MANKEY       ; $39
	db MEOWTH       ; $4D
	db NIDORAN_F    ; $0F
	db NIDORAN_M    ; $03
	db ODDISH       ; $B9
	db OMANYTE      ; $62
	db PARAS        ; $6D
	db PIDGEY       ; $24
	db PIKACHU      ; $54
	db POLIWAG      ; $47
	db PONYTA       ; $A3
	db PSYDUCK      ; $2F
	db RATTATA      ; $A5
	db RHYHORN      ; $12
	db SANDSHREW    ; $60
	db SEEL         ; $3A
	db SHELLDER     ; $17
	db SLOWPOKE     ; $25
	db SPEAROW      ; $05
	db SQUIRTLE     ; $B1
	db STARYU       ; $1B
	db TENTACOOL    ; $18
	db VENONAT      ; $41
	db VOLTORB      ; $06
	db VULPIX       ; $52
	db WEEDLE       ; $70
	db ZUBAT        ; $6B
ListMidEvolvedPkmn:
	db CHARMELEON   ; $B2
	db DRAGONAIR    ; $59
	db GLOOM        ; $BA
	db GRAVELER     ; $27
	db HAUNTER      ; $93
	db IVYSAUR      ; $09
	db KADABRA      ; $26
	db KAKUNA       ; $71
	db MACHOKE      ; $29
	db METAPOD      ; $7C
	db NIDORINA     ; $A8
	db NIDORINO     ; $A7
	db PIDGEOTTO    ; $96
	db POLIWHIRL    ; $6E
	db WARTORTLE    ; $B3
	db WEEPINBELL   ; $BD
ListNonEvolvingPkmn:
	db AERODACTYL   ; $AB
	db CHANSEY      ; $28
	db DITTO        ; $4C
	db ELECTABUZZ   ; $35
	db FARFETCHD    ; $40
	db HITMONCHAN   ; $2C
	db HITMONLEE    ; $2B
	db JYNX         ; $48
	db KANGASKHAN   ; $02
	db LAPRAS       ; $13
	db LICKITUNG    ; $0B
	db MAGMAR       ; $33
	db MR_MIME      ; $2A
	db ONIX         ; $22
	db PINSIR       ; $1D
	db PORYGON      ; $AA
	db SCYTHER      ; $1A
	db SNORLAX      ; $84
	db TANGELA      ; $1E
	db TAUROS       ; $3C
ListMostEvolvedPkmn:
	db ALAKAZAM     ; $95
	db ARBOK        ; $2D
	db ARCANINE     ; $14
	db BEEDRILL     ; $72
	db BLASTOISE    ; $1C
	db BUTTERFREE   ; $7D
	db CHARIZARD    ; $B4
	db CLEFABLE     ; $8E
	db CLOYSTER     ; $8B
	db DEWGONG      ; $78
	db DODRIO       ; $74
	db DRAGONITE    ; $42
	db DUGTRIO      ; $76
	db ELECTRODE    ; $8D
	db EXEGGUTOR    ; $0A
	db FEAROW       ; $23
	db FLAREON      ; $67
	db GENGAR       ; $0E
	db GOLBAT       ; $82
	db GOLDUCK      ; $80
	db GOLEM        ; $31
	db GYARADOS     ; $16
	db HYPNO        ; $81
	db JOLTEON      ; $68
	db KABUTOPS     ; $5B
	db KINGLER      ; $8A
	db MACHAMP      ; $7E
	db MAGNETON     ; $36
	db MAROWAK      ; $91
	db MUK          ; $88
	db NIDOKING     ; $07
	db NIDOQUEEN    ; $10
	db NINETALES    ; $53
	db OMASTAR      ; $63
	db PARASECT     ; $2E
	db PERSIAN      ; $90
	db PIDGEOT      ; $97
	db POLIWRATH    ; $6F
	db PRIMEAPE     ; $75
	db RAICHU       ; $55
	db RAPIDASH     ; $A4
	db RATICATE     ; $A6
	db RHYDON       ; $01
	db SANDSLASH    ; $61
	db SEADRA       ; $5D
	db SEAKING      ; $9E
	db SLOWBRO      ; $08
	db STARMIE      ; $98
	db TENTACRUEL   ; $9B
	db VAPOREON     ; $69
	db VENOMOTH     ; $77
	db VENUSAUR     ; $9A
	db VICTREEBEL   ; $BE
	db VILEPLUME    ; $BB
	db WEEZING      ; $8F
	db WIGGLYTUFF   ; $65
	db $00

	
;list pokemon separated out by gener ratio
;leave out pokemon with a set gender or are genderless
ListByGenderRatio:
;0 to 18 are 1-7 ratio --> atk dv >= 2 is male
	db AERODACTYL   ; $AB
	db BLASTOISE    ; $1C
	db BULBASAUR    ; $99
	db CHARIZARD    ; $B4
	db CHARMANDER   ; $B0
	db CHARMELEON   ; $B2
	db EEVEE        ; $66
	db FLAREON      ; $67
	db IVYSAUR      ; $09
	db JOLTEON      ; $68
	db KABUTO       ; $5A
	db KABUTOPS     ; $5B
	db OMANYTE      ; $62
	db OMASTAR      ; $63
	db SNORLAX      ; $84
	db SQUIRTLE     ; $B1
	db VAPOREON     ; $69
	db VENUSAUR     ; $9A
	db WARTORTLE    ; $B3
;19 to 28 are 1-3 ratio  --> atk dv >= 4 is male
	db ABRA         ; $94
	db ALAKAZAM     ; $95
	db ARCANINE     ; $14
	db ELECTABUZZ   ; $35
	db GROWLITHE    ; $21
	db KADABRA      ; $26
	db MACHAMP      ; $7E
	db MACHOKE      ; $29
	db MACHOP       ; $6A
	db MAGMAR       ; $33
;29 to 120 are 1-1 ratio --> atk dv >= 8 is male
	db ARBOK        ; $2D
	db BEEDRILL     ; $72
	db BELLSPROUT   ; $BC
	db BUTTERFREE   ; $7D
	db CATERPIE     ; $7B
	db CLOYSTER     ; $8B
	db CUBONE       ; $11
	db DEWGONG      ; $78
	db DIGLETT      ; $3B
	db DITTO        ; $4C
	db DODRIO       ; $74
	db DODUO        ; $46
	db DRAGONAIR    ; $59
	db DRAGONITE    ; $42
	db DRATINI      ; $58
	db DROWZEE      ; $30
	db DUGTRIO      ; $76
	db EKANS        ; $6C
	db EXEGGCUTE    ; $0C
	db EXEGGUTOR    ; $0A
	db FARFETCHD    ; $40
	db FEAROW       ; $23
	db GASTLY       ; $19
	db GENGAR       ; $0E
	db GEODUDE      ; $A9
	db GLOOM        ; $BA
	db GOLBAT       ; $82
	db GOLDEEN      ; $9D
	db GOLDUCK      ; $80
	db GOLEM        ; $31
	db GRAVELER     ; $27
	db GRIMER       ; $0D
	db GYARADOS     ; $16
	db HAUNTER      ; $93
	db HORSEA       ; $5C
	db HYPNO        ; $81
	db KAKUNA       ; $71
	db KINGLER      ; $8A
	db KOFFING      ; $37
	db KRABBY       ; $4E
	db LAPRAS       ; $13
	db LICKITUNG    ; $0B
	db MAGIKARP     ; $85
	db MANKEY       ; $39
	db MAROWAK      ; $91
	db MEOWTH       ; $4D
	db METAPOD      ; $7C
	db MR_MIME      ; $2A
	db MUK          ; $88
	db ODDISH       ; $B9
	db ONIX         ; $22
	db PARAS        ; $6D
	db PARASECT     ; $2E
	db PERSIAN      ; $90
	db PIDGEOT      ; $97
	db PIDGEOTTO    ; $96
	db PIDGEY       ; $24
	db PIKACHU      ; $54
	db PINSIR       ; $1D
	db POLIWAG      ; $47
	db POLIWHIRL    ; $6E
	db POLIWRATH    ; $6F
	db PONYTA       ; $A3
	db PRIMEAPE     ; $75
	db PSYDUCK      ; $2F
	db RAICHU       ; $55
	db RAPIDASH     ; $A4
	db RATICATE     ; $A6
	db RATTATA      ; $A5
	db RHYDON       ; $01
	db RHYHORN      ; $12
	db SANDSHREW    ; $60
	db SANDSLASH    ; $61
	db SCYTHER      ; $1A
	db SEADRA       ; $5D
	db SEAKING      ; $9E
	db SEEL         ; $3A
	db SHELLDER     ; $17
	db SLOWBRO      ; $08
	db SLOWPOKE     ; $25
	db SPEAROW      ; $05
	db TANGELA      ; $1E
	db TENTACOOL    ; $18
	db TENTACRUEL   ; $9B
	db VENOMOTH     ; $77
	db VENONAT      ; $41
	db VICTREEBEL   ; $BE
	db VILEPLUME    ; $BB
	db WEEDLE       ; $70
	db WEEPINBELL   ; $BD
	db WEEZING      ; $8F
	db ZUBAT        ; $6B
;121 to 126 are 3-1 ratio --> atk dv >= 12 is male
	db CLEFABLE     ; $8E
	db CLEFAIRY     ; $04
	db JIGGLYPUFF   ; $64
	db NINETALES    ; $53
	db VULPIX       ; $52
	db WIGGLYTUFF   ; $65
	db $00

GetGenderRatioTarget:
	cp 19
	ld b, 2
	ret c
	cp 29
	ld b, 4
	ret c
	cp 121
	ld b, 8
	ret c
	ld b, 12
	ret


ListGameItems:
	db HS_ROUTE_2_ITEM_1
	db HS_ROUTE_2_ITEM_2
	db HS_ROUTE_4_ITEM
	db HS_ROUTE_9_ITEM
	db HS_ROUTE_12_ITEM_1
	db HS_ROUTE_12_ITEM_2
	db HS_ROUTE_15_ITEM
	db HS_ROUTE_24_ITEM
	db HS_ROUTE_25_ITEM
	db HS_VIRIDIAN_GYM_ITEM
	db HS_UNKNOWN_DUNGEON_1_ITEM_1
	db HS_UNKNOWN_DUNGEON_1_ITEM_2
	db HS_UNKNOWN_DUNGEON_1_ITEM_3
	db HS_POKEMONTOWER_3_ITEM
	db HS_POKEMONTOWER_4_ITEM_1
	db HS_POKEMONTOWER_4_ITEM_2
	db HS_POKEMONTOWER_4_ITEM_3
	db HS_POKEMONTOWER_5_ITEM
	db HS_POKEMONTOWER_6_ITEM_1
	db HS_POKEMONTOWER_6_ITEM_2
	db HS_FUCHSIA_HOUSE_2_ITEM
	db HS_MANSION_1_ITEM_1
	db HS_MANSION_1_ITEM_2
	db HS_POWER_PLANT_ITEM_1
	db HS_POWER_PLANT_ITEM_2
	db HS_POWER_PLANT_ITEM_3
	db HS_POWER_PLANT_ITEM_4
	db HS_POWER_PLANT_ITEM_5
	db HS_VICTORY_ROAD_2_ITEM_1
	db HS_VICTORY_ROAD_2_ITEM_2
	db HS_VICTORY_ROAD_2_ITEM_3
	db HS_VICTORY_ROAD_2_ITEM_4
	db HS_VIRIDIAN_FOREST_ITEM_1
	db HS_VIRIDIAN_FOREST_ITEM_2
	db HS_VIRIDIAN_FOREST_ITEM_3
	db HS_MT_MOON_1_ITEM_1
	db HS_MT_MOON_1_ITEM_2
	db HS_MT_MOON_1_ITEM_3
	db HS_MT_MOON_1_ITEM_4
	db HS_MT_MOON_1_ITEM_5
	db HS_MT_MOON_1_ITEM_6
	db HS_MT_MOON_3_ITEM_1
	db HS_MT_MOON_3_ITEM_2
	db HS_SS_ANNE_8_ITEM
	db HS_SS_ANNE_9_ITEM_1
	db HS_SS_ANNE_9_ITEM_2
	db HS_SS_ANNE_10_ITEM_1
	db HS_SS_ANNE_10_ITEM_2
	db HS_SS_ANNE_10_ITEM_3
	db HS_VICTORY_ROAD_3_ITEM_1
	db HS_VICTORY_ROAD_3_ITEM_2
	db HS_ROCKET_HIDEOUT_1_ITEM_1
	db HS_ROCKET_HIDEOUT_1_ITEM_2
	db HS_ROCKET_HIDEOUT_2_ITEM_1
	db HS_ROCKET_HIDEOUT_2_ITEM_2
	db HS_ROCKET_HIDEOUT_2_ITEM_3
	db HS_ROCKET_HIDEOUT_2_ITEM_4
	db HS_ROCKET_HIDEOUT_3_ITEM_1
	db HS_ROCKET_HIDEOUT_3_ITEM_2
	db HS_ROCKET_HIDEOUT_4_ITEM_1
	db HS_ROCKET_HIDEOUT_4_ITEM_2
	db HS_ROCKET_HIDEOUT_4_ITEM_3
	db HS_ROCKET_HIDEOUT_4_ITEM_4
	db HS_SILPH_CO_3F_ITEM
	db HS_SILPH_CO_4F_ITEM_1
	db HS_SILPH_CO_4F_ITEM_2
	db HS_SILPH_CO_4F_ITEM_3
	db HS_SILPH_CO_5F_ITEM_1
	db HS_SILPH_CO_5F_ITEM_2
	db HS_SILPH_CO_6F_ITEM_1
	db HS_SILPH_CO_6F_ITEM_2
	db HS_SILPH_CO_7F_ITEM_1
	db HS_SILPH_CO_7F_ITEM_2
	db HS_SILPH_CO_10F_ITEM_1
	db HS_SILPH_CO_10F_ITEM_2
	db HS_SILPH_CO_10F_ITEM_3
	db HS_MANSION_2_ITEM
	db HS_MANSION_3_ITEM_1
	db HS_MANSION_3_ITEM_2
	db HS_MANSION_4_ITEM_1
	db HS_MANSION_4_ITEM_2
	db HS_MANSION_4_ITEM_3
	db HS_MANSION_4_ITEM_4
	db HS_SAFARI_ZONE_EAST_ITEM_1
	db HS_SAFARI_ZONE_EAST_ITEM_2
	db HS_SAFARI_ZONE_EAST_ITEM_3
	db HS_SAFARI_ZONE_EAST_ITEM_4
	db HS_SAFARI_ZONE_NORTH_ITEM_1
	db HS_SAFARI_ZONE_NORTH_ITEM_2
	db HS_SAFARI_ZONE_WEST_ITEM_1
	db HS_SAFARI_ZONE_WEST_ITEM_2
	db HS_SAFARI_ZONE_WEST_ITEM_3
	db HS_SAFARI_ZONE_CENTER_ITEM
	db HS_UNKNOWN_DUNGEON_2_ITEM_1
	db HS_UNKNOWN_DUNGEON_2_ITEM_2
	db HS_UNKNOWN_DUNGEON_2_ITEM_3
	db HS_UNKNOWN_DUNGEON_3_ITEM_1
	db HS_UNKNOWN_DUNGEON_3_ITEM_2
	db HS_VICTORY_ROAD_1_ITEM_1
	db HS_VICTORY_ROAD_1_ITEM_2
	db $00
