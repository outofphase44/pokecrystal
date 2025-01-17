	db JIGGLYPUFF ; 039

	db 130,60,35,35,60,40
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 170 ; catch rate
	db 76 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/jigglypuff/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, BODY_SLAM,  HIDDEN_POWER,  SNORE, BLIZZARD, HYPER_BEAM,  FRUSTRATION, SOLARBEAM, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, ICE_PUNCH, SWAGGER, SLEEP_TALK, FIRE_BLAST, DEFENSE_CURL, THUNDERPUNCH, DREAM_EATER,  REST, ATTRACT, FIRE_PUNCH, NIGHTMARE, STRENGTH, FLASH, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
