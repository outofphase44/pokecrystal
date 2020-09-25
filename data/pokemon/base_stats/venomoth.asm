	db VENOMOTH ; 049

	db  90,75,80,90,115,105
	;   hp  atk  def  spd  sat  sdf

	db BUG, PSYCHIC ; type
	db 75 ; catch rate
	db 138 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/venomoth/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, WILL_O_WISP,  SWEET_SCENT, SNORE, HYPER_BEAM, RAZOR_WIND, REFLECT, FRUSTRATION, SOLARBEAM, RETURN, PSYCHIC_M,  SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SWIFT, REST, ATTRACT, THIEF, FLASH
	; end
