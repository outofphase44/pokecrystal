	object_const_def ; object_event constants
	const DunkerFOREST_YOUNGSTER1
	const DunkerFOREST_POKE_BALL
	const DunkerFOREST_POKE_BALL2
	const DunkerFOREST_POKE_BALL3
	const DunkerFOREST_POKE_BALL4
	const DunkerFOREST_COOLTRAINER_F1

DunkerForest_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerBugCatcherPercy:
	trainer BUG_CATCHER, PERCY, EVENT_BEAT_BUG_CATCHER_PERCY, BugCatcherPercySeenText, BugCatcherPercyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherPercyAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerRuby:
	trainer PICNICKER, RUBY, EVENT_BEAT_PICNICKER_RUBY, PicnickerRubySeenText, PicnickerRubyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherPercyAfterBattleText
	waitbutton
	closetext
	end

DunkerForestRevive:
	itemball REVIVE

DunkerForestXAttack:
	itemball X_ATTACK

DunkerForestAntidote:
	itemball ANTIDOTE

DunkerForestEther:
	itemball ETHER

DunkerForestHiddenEther:
	hiddenitem ETHER, EVENT_DUNKER_FOREST_HIDDEN_ETHER

DunkerForestHiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_DUNKER_FOREST_HIDDEN_SUPER_POTION

DunkerForestHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_DUNKER_FOREST_HIDDEN_FULL_HEAL


DunkerForestSignpost:
	jumptext DunkerForestSignpostText

DunkerForestShrineScript:
	jumptext DunkerForestShrineText



DunkerForestSignpostText:
	text "Dunker FOREST is"
	line "so overgrown with"

	para "trees that you"
	line "can't see the sky."

	para "Please watch out"
	line "for items that may"
	cont "have been dropped."
	done

DunkerForestShrineText:
	text "Dunker FOREST"
	line "SHRINE…"

	para "It's in honor of"
	line "the forest's"
	cont "protector…"
	done

BugCatcherPercySeenText:
	text "Don't sneak up on"
	line "me like that!"

	para "You frightened a"
	line "#MON away!"
	done

BugCatcherPercyBeatenText:
	text "I hadn't seen that"
	line "#MON before…"
	done

BugCatcherPercyAfterBattleText:
	text "A #MON I've"
	line "never seen before"

	para "fell out of the"
	line "tree when I used"
	cont "HEADBUTT."

	para "I ought to use"
	line "HEADBUTT in other"
	cont "places too."
	done

PicnickerRubySeenText:
	text "Isn't it calming"
	line "to be out in the"
	cont "woods all alone?"
	done


PicnickerRubyBeatenText:
	text "I was trying to"
	line "take it easy, but"
	cont "I can't say no to"
	cont "a battle!"
	done

DunkerForest_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  6, 16, HARPERS_DUNKER_GATE, 3
	warp_event  6, 17, HARPERS_DUNKER_GATE, 4
	warp_event 29,  6, SHENDO_DUNKER_GATE, 1
	warp_event 29,  7, SHENDO_DUNKER_GATE, 2
	db 0 ; coord events

	db 5 ; bg events
	bg_event  9, 15, BGEVENT_READ, DunkerForestSignpost
	bg_event  7,  0, BGEVENT_ITEM, DunkerForestHiddenEther
	bg_event 29,  4, BGEVENT_ITEM, DunkerForestHiddenSuperPotion
	bg_event 19, 13, BGEVENT_ITEM, DunkerForestHiddenFullHeal
	bg_event  6,  0, BGEVENT_UP, DunkerForestShrineScript

	db 5 ; object events
	
	object_event 19,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerBugCatcherPercy, -1
	object_event 13, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DunkerForestXAttack, EVENT_DUNKER_FOREST_X_ATTACK
	object_event  0, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DunkerForestAntidote, EVENT_DUNKER_FOREST_ANTIDOTE
	object_event  6,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DunkerForestEther, EVENT_DUNKER_FOREST_ETHER
	object_event 16, 12, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerRuby, -1
