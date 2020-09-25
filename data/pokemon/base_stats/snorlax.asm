	db SNORLAX ; 143

	db 170,120,75,30,65,120
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 154 ; base exp
	db LEFTOVERS, LEFTOVERS ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/snorlax/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, BODY_SLAM, ROCK_SMASH, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, FRUSTRATION, SOLARBEAM, THUNDER, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, MUDSLIDE, ICE_PUNCH, SWAGGER, SLEEP_TALK, FIRE_BLAST, DEFENSE_CURL, THUNDERPUNCH, REST, ATTRACT, FIRE_PUNCH, SURF, STRENGTH, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
