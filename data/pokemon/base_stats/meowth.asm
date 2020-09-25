	db MEOWTH ; 052

	db  55,60,50,105,55,55
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 69 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/meowth/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC,   HIDDEN_POWER,  SNORE, ICY_WIND,  FRUSTRATION, IRON_TAIL, THUNDER, RETURN, SHADOW_BALL, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER,  REST, ATTRACT, THIEF, NIGHTMARE, THUNDERBOLT
	; end
