	db SKARMORY ; 227

	db  90,80,160,105,40,75
	;   hp  atk  def  spd  sat  sdf

	db STEEL, FLYING ; type
	db 25 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/skarmory/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, JAGGED_EDGE, HIDDEN_POWER,  SNORE, HYPER_BEAM, RAZOR_WIND, FRUSTRATION, RETURN,  SWAGGER, SLEEP_TALK, SANDSTORM, SWIFT,  REST, ATTRACT, THIEF,  CUT, FLY
	; end
