	db SKIPLOOM ; 188

	db  65,55,60,95,55,80
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 120 ; catch rate
	db 136 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/skiploom/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER,  SWEET_SCENT, SNORE, HYPER_BEAM, RAZOR_WIND, FRUSTRATION, SOLARBEAM, RETURN,  SWAGGER, SLEEP_TALK, REST, ATTRACT, FLASH
	; end