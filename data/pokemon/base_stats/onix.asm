	db ONIX ; 095

	db  50,60,175,85,45,60
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 108 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/onix/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, BODY_SLAM, ROCK_SMASH, JAGGED_EDGE, HIDDEN_POWER, SNORE, HYPER_BEAM, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN,  MUDSLIDE,  SWAGGER, SLEEP_TALK, SANDSTORM, TOMBSTONE, REST, ATTRACT, STRENGTH
	; end
