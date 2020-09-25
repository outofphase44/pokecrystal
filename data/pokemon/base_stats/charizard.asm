	db CHARIZARD ; 006

	db  80,95,80,105,120,85
	;   hp  atk  def  spd  sat  sdf

	db FIRE, DRAGON ; type
	db 45 ; catch rate
	db 209 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/charizard/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, WILL_O_WISP, SNORE, HYPER_BEAM, RAZOR_WIND, FRUSTRATION, IRON_TAIL, DRAGONBREATH, EARTHQUAKE, RETURN, SWAGGER, SLEEP_TALK, FIRE_BLAST, SWIFT, REST, ATTRACT, FIRE_PUNCH, FURY_CUTTER, CUT, FLY, STRENGTH, FLAMETHROWER
	; end