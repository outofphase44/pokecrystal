	db HAUNTER ; 093

	db  65,60,55,110,120,65
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 90 ; catch rate
	db 126 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/haunter/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, WILL_O_WISP, SNORE, HYPER_BEAM, FRUSTRATION, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, SWAGGER, SLEEP_TALK, DREAM_EATER, TOMBSTONE, REST, ATTRACT, THIEF, PETRIFY, NIGHTMARE, THUNDERBOLT
	; end
