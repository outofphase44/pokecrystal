	db ABSOL ; 234

	db  70,130,70,85,90,75
	;   hp  atk  def  spd  sat  sdf

	db DARK, NORMAL ; type
	db 45 ; catch rate
	db 165 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/absol/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, BODY_SLAM, HIDDEN_POWER, SNORE, HYPER_BEAM, RAZOR_WIND, FRUSTRATION, IRON_TAIL, RETURN, DREADNAUGHT, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, TOMBSTONE, REST, ATTRACT, THIEF, NIGHTMARE, CUT, FLASH 
	; end
