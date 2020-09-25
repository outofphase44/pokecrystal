	db GOLDUCK ; 055

	db  85,92,78,90,105,90
	;   hp  atk  def  spd  sat  sdf

	db WATER, DARK ; type
	db 75 ; catch rate
	db 174 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/golduck/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH,  HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, REFLECT, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, SCALD, PSYCHIC_M, SHADOW_BALL, DREADNAUGHT, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, THIEF, FURY_CUTTER, SURF, STRENGTH, FLASH, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end