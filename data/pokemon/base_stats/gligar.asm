	db GLIGAR ; 207

	db  80,110,125,95,50,85
	;   hp  atk  def  spd  sat  sdf

	db GROUND, FLYING ; type
	db 60 ; catch rate
	db 108 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gligar/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ROCK_SMASH, JAGGED_EDGE, HIDDEN_POWER,  SNORE, HYPER_BEAM, RAZOR_WIND, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DREADNAUGHT, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, SWIFT,  REST, ATTRACT, THIEF, PETRIFY, FURY_CUTTER, CUT, STRENGTH
	; end
