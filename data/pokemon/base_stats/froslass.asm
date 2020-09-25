	db FROSLASS ; 182

	db  75,80,80,115,95,105
	;   hp  atk  def  spd  sat  sdf

	db ICE, GHOST ; type
	db 45 ; catch rate
	db 184 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/froslass/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, JAGGED_EDGE, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, LIGHT_SCREEN, REFLECT, FRUSTRATION, RETURN, SHADOW_BALL, ICE_PUNCH, SWAGGER, SLEEP_TALK, DREAM_EATER, TOMBSTONE, REST, ATTRACT, THIEF, PETRIFY, NIGHTMARE, FLASH, ICE_BEAM
	; end
