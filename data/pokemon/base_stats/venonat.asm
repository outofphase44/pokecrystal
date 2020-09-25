	db VENONAT ; 048

	db  75,70,65,60,55,70
	;   hp  atk  def  spd  sat  sdf

	db BUG, PSYCHIC ; type
	db 190 ; catch rate
	db 75 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/venonat/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER,  SWEET_SCENT, SNORE, HYPER_BEAM, REFLECT, FRUSTRATION, SOLARBEAM, RETURN, PSYCHIC_M,  SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SWIFT, REST, ATTRACT, THIEF, FLASH
	; end