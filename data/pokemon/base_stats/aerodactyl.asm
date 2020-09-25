	db AERODACTYL ; 142

	db  100,125,85,130,60,70
	;   hp  atk  def  spd  sat  sdf

	db ROCK, FLYING ; type
	db 45 ; catch rate
	db 202 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 35 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/aerodactyl/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, JAGGED_EDGE, HIDDEN_POWER, SNORE, HYPER_BEAM, FRUSTRATION, IRON_TAIL, DRAGONBREATH, EARTHQUAKE, RETURN, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, SWIFT,  REST, ATTRACT,  FLY, FLAMETHROWER
	; end