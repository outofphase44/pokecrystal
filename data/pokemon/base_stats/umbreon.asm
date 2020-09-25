	db UMBREON ; 197

	db  90,100,130,60,75,115
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 45 ; catch rate
	db 197 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 35 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/umbreon/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC,   HIDDEN_POWER,  SNORE, HYPER_BEAM, REFLECT,  FRUSTRATION, IRON_TAIL, RETURN, SHADOW_BALL, MUDSLIDE, DREADNAUGHT,  SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, TOMBSTONE, REST, ATTRACT, NIGHTMARE, CUT, FLASH
	; end
