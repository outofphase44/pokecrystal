	db MAGMORTAR ; ???

	db  77,100,75,93,115,110
	;   hp  atk  def  spd  sat  sdf

	db FIRE, GROUND ; type
	db 45 ; catch rate
	db 167 ; base exp
	db BURNT_BERRY, BURNT_BERRY ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magmortar/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, WILL_O_WISP, SNORE, HYPER_BEAM, REFLECT, FRUSTRATION, RETURN, MUDSLIDE, SWAGGER, SLEEP_TALK, FIRE_BLAST, THUNDERPUNCH,  REST, ATTRACT, THIEF, FIRE_PUNCH, STRENGTH, FLAMETHROWER
	; end
