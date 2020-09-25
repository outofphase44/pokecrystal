	db KABUTO ; 140

	db  45,95,105,70,70,60
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 119 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 30 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/kabuto/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROLLOUT, TOXIC, ROCK_SMASH, JAGGED_EDGE, HIDDEN_POWER, SNORE, ICY_WIND, HYPER_BEAM, FRUSTRATION, RETURN, SWAGGER, SLEEP_TALK, SANDSTORM, TOMBSTONE, REST, ATTRACT, THIEF, ICE_BEAM
	; end