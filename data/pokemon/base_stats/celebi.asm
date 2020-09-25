	db CELEBI ; 251

	db 108,108,108,108,108,108
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, GRASS ; type
	db 45 ; catch rate
	db 64 ; base exp
	db NO_ITEM, MIRACLEBERRY ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/celebi/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, WILL_O_WISP, SWEET_SCENT, SNORE, HYPER_BEAM, LIGHT_SCREEN, REFLECT, FRUSTRATION, SOLARBEAM, RETURN,  PSYCHIC_M, SHADOW_BALL, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, REST, FLASH
	; end
