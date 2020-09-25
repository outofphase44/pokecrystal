	db RAIKOU ; 243

	db  90,95,105,110,120,110
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 3 ; catch rate
	db 216 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 80 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/raikou/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC,  ROCK_SMASH,  HIDDEN_POWER,  SNORE, HYPER_BEAM, FRUSTRATION, IRON_TAIL, THUNDER, RETURN,  MUDSLIDE,  SWAGGER, SLEEP_TALK, SWIFT,  REST, CUT, STRENGTH, FLASH, THUNDERBOLT
	; end