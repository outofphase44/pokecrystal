	db RHYPERIOR ; 252

	db 118,147,130,65,45,75
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK ; type
	db 60 ; catch rate
	db 204 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/rhyperior/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC,  ROCK_SMASH, JAGGED_EDGE, HIDDEN_POWER,  SNORE, HYPER_BEAM, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN,  MUDSLIDE, SWAGGER, SLEEP_TALK, SANDSTORM, THUNDERPUNCH, REST, ATTRACT, FURY_CUTTER, SURF, STRENGTH
	; end
