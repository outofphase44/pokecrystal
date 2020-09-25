	db ZAPDOS ; 145

	db  90,105,85,105,145,100
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, FLYING ; type
	db 3 ; catch rate
	db 216 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 80 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/zapdos/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC,  ROCK_SMASH, HIDDEN_POWER,  SNORE, HYPER_BEAM, RAZOR_WIND, LIGHT_SCREEN, FRUSTRATION, THUNDER, RETURN, SWAGGER, SLEEP_TALK, SWIFT,  REST,  FLY, FLASH, THUNDERBOLT
	; end
