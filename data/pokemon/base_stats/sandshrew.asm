	db SANDSHREW ; 027

	db  65,90,100,55,35,45
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 93 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sandshrew/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER,  SNORE,   FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN,  MUDSLIDE,  SWAGGER, SLEEP_TALK, SANDSTORM, SWIFT, DEFENSE_CURL,  REST, ATTRACT, THIEF, FURY_CUTTER, CUT, STRENGTH
	; end
