	db KOFFING ; 109

	db  55,80,110,50,75,60
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 190 ; catch rate
	db 114 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/koffing/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROLLOUT, TOXIC, HIDDEN_POWER, WILL_O_WISP,  SNORE, HYPER_BEAM,  FRUSTRATION, THUNDER, RETURN,  SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, TOMBSTONE, REST, ATTRACT, THIEF, FLAMETHROWER, THUNDERBOLT
	; end
