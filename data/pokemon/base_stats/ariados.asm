	db ARIADOS ; 168

	db  80,105,80,75,75,85
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 90 ; catch rate
	db 134 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ariados/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, WILL_O_WISP, SNORE, HYPER_BEAM, FRUSTRATION, SOLARBEAM, RETURN, PSYCHIC_M, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, THIEF, PETRIFY, FURY_CUTTER, FLASH
	; end
