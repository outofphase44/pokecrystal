	db HONCHKROW ; ???

	db  80,120,90,85,85,100
	;   hp  atk  def  spd  sat  sdf

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 107 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/Honchkrow/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm  CURSE, TOXIC, HIDDEN_POWER, SNORE, ICY_WIND, HYPER_BEAM, RAZOR_WIND, REFLECT, FRUSTRATION, RETURN, SHADOW_BALL, DREADNAUGHT, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER,  REST, ATTRACT, THIEF, PETRIFY, NIGHTMARE, FLY
	; end