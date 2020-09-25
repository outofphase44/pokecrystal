	db SLOWBRO ; 080

	db  90,75,90,30,105,100
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC ; type
	db 75 ; catch rate
	db 164 ; base exp
	db NO_ITEM, KINGS_ROCK ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/slowbro/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC,  ROCK_SMASH,  HIDDEN_POWER,  SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, REFLECT, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, SCALD, PSYCHIC_M, SHADOW_BALL, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, REST, ATTRACT, FURY_CUTTER, NIGHTMARE, SURF, STRENGTH, FLASH, ICE_BEAM
	; end
