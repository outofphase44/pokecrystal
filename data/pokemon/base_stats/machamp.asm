	db MACHAMP ; 068

	db  95,145,110,80,75,75
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 193 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/machamp/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER,  SNORE, HYPER_BEAM, KNEE_STRIKE, FRUSTRATION, EARTHQUAKE, RETURN,  ICE_PUNCH, SWAGGER, SLEEP_TALK, THUNDERPUNCH,  REST, ATTRACT, THIEF, FIRE_PUNCH, STRENGTH
	; end
