	db JOLTEON ; 135

	db  70,65,70,150,117,98
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 197 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 35 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/jolteon/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC,  HIDDEN_POWER,  SNORE, HYPER_BEAM, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, SHADOW_BALL,  SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, FLASH, THUNDERBOLT
	; end
