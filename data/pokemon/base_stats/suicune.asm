	db SUICUNE ; 245

	db 110,75,125,90,105,125
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 3 ; catch rate
	db 215 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 80 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/suicune/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH,  HIDDEN_POWER,  SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, FRUSTRATION, IRON_TAIL, RETURN, SCALD, MUDSLIDE,  SWAGGER, SLEEP_TALK, SANDSTORM, SWIFT,  REST, CUT, SURF, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end
