	db HOUNDOUR ; 228

	db  60,75,45,80,95,65
	;   hp  atk  def  spd  sat  sdf

	db DARK, FIRE ; type
	db 120 ; catch rate
	db 114 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/houndour/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, WILL_O_WISP,  SNORE, HYPER_BEAM,   FRUSTRATION, SOLARBEAM, IRON_TAIL, RETURN, SHADOW_BALL, DREADNAUGHT, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, SWIFT, DREAM_EATER,  REST, ATTRACT, THIEF, NIGHTMARE, STRENGTH, FLAMETHROWER
	; end
