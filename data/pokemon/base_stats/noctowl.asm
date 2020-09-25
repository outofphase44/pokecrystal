	db NOCTOWL ; 164

	db 120,60,85,80,110,110
	;   hp  atk  def  spd  sat  sdf

	db GHOST, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/noctowl/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, WILL_O_WISP,  SNORE, HYPER_BEAM, RAZOR_WIND, FRUSTRATION, RETURN, SHADOW_BALL, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, TOMBSTONE,  REST, ATTRACT, THIEF,  NIGHTMARE, FLY, FLASH
	; end