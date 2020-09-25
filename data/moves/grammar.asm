; Used by GetMoveGrammar (see engine/battle/used_move_text.asm)
; Each move is given an identifier for what usedmovetext to use (0-4).
; Made redundant in English localization, where all are just "[mon]¯used [move]!"

MoveGrammar:
; 0: originally "[mon]の¯[move]¯つかった!" ("[mon]¯used¯[move]!")
	db SWORDS_DANCE
	db GROWTH
	db STRENGTH
	db HARDEN
	db SCALD
	db ANCIENT_FIRE
	db WITHDRAW
	db DEFENSE_CURL
	db BUG_BITE
	db SMOG
	db BULLDOZE
	db FLASH
	db SPLASH
	db ACID_ARMOR
	db BONEMERANG
	db REST
	db SHARPEN
	db SUBSTITUTE
	db INFERNO
	db SNORE
	db PROTECT
	db SPIKES
	db BATTERY
	db ROLLOUT
	db SWAGGER
	db SLEEP_TALK
	db HIDDEN_POWER
	db NASTY_PLOT
	db EXTREMESPEED
	db 0 ; end set

; 1: originally "[mon]の¯[move]した!" ("[mon]¯did [move]!")
	db RECOVER
	db TELEPORT
	db BIDE
	db PLATE_SHIFT
	db AMNESIA
	db ICICLE_SPEAR
	db 0 ; end set

; 2: originally "[mon]の¯[move]¯した!" ("[mon]¯did¯[move]!")
	db MEDITATE
	db AGILITY
	db MIMIC
	db BULLET_PUNCH
	db SLAG_SALVO
	db TRANSFORM
	db STRUGGLE
	db DREADNAUGHT
	db 0 ; end set

; 3: originally "[mon]の¯[move]　こうげき!" ("[mon]'s¯[move] attack!")
	db POUND
	db SCRATCH
	db VICEGRIP
	db WING_ATTACK
	db FLY
	db POLARITY
	db SLAM
	db HORN_ATTACK
	db SUBMISSION
	db THRASH
	db NOVA_BOMB
	db LEER
	db NIGHT_SLASH
	db GROWL
	db ROAR
	db SING
	db PECK
	db ECTOPLASM
	db STRING_SHOT
	db EARTHQUAKE
	db FISSURE
	db DIG
	db TOXIC
	db SCREECH
	db METRONOME
	db LICK
	db CLAMP
	db CONSTRICT
	db POISON_GAS
	db BUBBLE
	db SLASH
	db SPIDER_WEB
	db NIGHTMARE
	db CURSE
	db FORESIGHT
	db CHARM
	db ATTRACT
	db ROCK_SMASH
	db 0 ; end set

; 4: originally "[mon]の¯[move]!" ("[mon]'s¯[move]!")
; Any move not listed above uses this grammar.
	db -1 ; end
