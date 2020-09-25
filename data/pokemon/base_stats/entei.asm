	db ENTEI ; 244

	db 115,120,95,100,105,95
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 3 ; catch rate
	db 217 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 80 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/entei/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, WILL_O_WISP, SNORE, HYPER_BEAM, FRUSTRATION, IRON_TAIL, RETURN, MUDSLIDE, SWAGGER, SLEEP_TALK, FIRE_BLAST, SWIFT, REST, CUT, STRENGTH, FLASH, FLAMETHROWER
	; end
