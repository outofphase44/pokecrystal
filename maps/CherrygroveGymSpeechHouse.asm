	object_const_def ; object_event constants
	const CHERRYGROVEGYMSPEECHHOUSE_POKEFAN_M
	const CHERRYGROVEGYMSPEECHHOUSE_BUG_CATCHER

CherrygroveGymSpeechHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CherrygroveGymSpeechHousePokefanMScript:
	jumptextfaceplayer CherrygroveGymSpeechHousePokefanMText

CherrygroveGymSpeechHouseBugCatcherScript:
	jumptextfaceplayer CherrygroveGymSpeechHouseBugCatcherText

CherrygroveGymSpeechHouseBookshelf:
	jumpstd picturebookshelf

CherrygroveGymSpeechHousePokefanMText:
	text "Harper's gym"
	line "leader DAISY is"
	cont "just one of many"
	cont "gym leaders across"
	cont "SHENDO."

	para "If you defeat"
	line "all of them, you"
	cont "can take on the"
	cont "SHENDO LEAGUE."

	para "Every 10 years,"
	line "all the champions"
	cont "from all over,"
	cont "past and present,"
	cont "compete in the"
	cont "GRAND TOURNAMENT"
	done

CherrygroveGymSpeechHouseBugCatcherText:
	text "Papa says that"
	line "we are going to"
	cont "Gale City soon!"

	para "He says every boy"
	line "in SHENDO goes to"
	cont "the first GRAND"
	cont "TOURNAMENT after"
	cont "he is born!"

	para "It must not happen"
	cont "very often."
	done

CherrygroveGymSpeechHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, HARPERS_TOWN, 3
	warp_event  3,  7, HARPERS_TOWN, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, CherrygroveGymSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CherrygroveGymSpeechHouseBookshelf

	db 2 ; object events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveGymSpeechHousePokefanMScript, -1
	object_event  5,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveGymSpeechHouseBugCatcherScript, -1
