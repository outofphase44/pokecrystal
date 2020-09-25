	db DONPHAN ; 232

	db  100,120,130,55,60,75
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 60 ; catch rate
	db 189 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/donphan/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC, BODY_SLAM, ROCK_SMASH, JAGGED_EDGE, HIDDEN_POWER, SNORE, HYPER_BEAM, FRUSTRATION, EARTHQUAKE, RETURN, MUDSLIDE, SWAGGER, SLEEP_TALK, SANDSTORM, DEFENSE_CURL, REST, ATTRACT, STRENGTH
	; end