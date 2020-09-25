	db PERSIAN ; 053

	db  85,115,90,130,65,75
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 148 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/persian/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, HIDDEN_POWER,  SNORE, HYPER_BEAM, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, SHADOW_BALL, SWAGGER, SLEEP_TALK, SWIFT, DEFENSE_CURL, DREAM_EATER,  REST, ATTRACT, THIEF, NIGHTMARE, THUNDERBOLT
	; end
