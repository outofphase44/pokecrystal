	db MISMAGIUS ; ???

	db  75,60,75,120,110,110
	;   hp  atk  def  spd  sat  sdf

	db GHOST, DARK ; type
	db 45 ; catch rate
	db 147 ; base exp
	db NO_ITEM, SPELL_TAG ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/mismagius/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, WILL_O_WISP, SNORE, HYPER_BEAM, FRUSTRATION, THUNDER, RETURN, SHADOW_BALL,  SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, TOMBSTONE, REST, ATTRACT, THIEF, PETRIFY, NIGHTMARE, FLASH, THUNDERBOLT
	; end
