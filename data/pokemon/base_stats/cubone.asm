	db CUBONE ; 104

	db  65,65,110,50,55,65
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 190 ; catch rate
	db 87 ; base exp
	db THICK_CLUB, THICK_CLUB ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/cubone/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, JAGGED_EDGE, HIDDEN_POWER, SNORE, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, SWAGGER, SLEEP_TALK, FIRE_BLAST, TOMBSTONE, REST, ATTRACT, THIEF, PETRIFY, FIRE_PUNCH, STRENGTH
	; end
