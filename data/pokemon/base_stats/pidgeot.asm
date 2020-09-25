	db PIDGEOT ; 018

	db  85,105,95,116,69,70
	;   hp  atk  def  spd  sat  sdf

	db FLYING, FLYING ; type
	db 45 ; catch rate
	db 172 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pidgeot/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SNORE, HYPER_BEAM, RAZOR_WIND, FRUSTRATION, RETURN, MUDSLIDE,  SWAGGER, SLEEP_TALK, SWIFT,  REST, ATTRACT, THIEF,  FLY
	; end
