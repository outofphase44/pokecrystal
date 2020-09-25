	object_const_def ; object_event constants
	const ROUTE1ROUTE2GATE_OFFICER
	const ROUTE1ROUTE2GATE_YOUNGSTER

Route1Route2Gate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route1Route2GateOfficerScript:
	jumptextfaceplayer Route1Route2GateOfficerText

Route1Route2GateYoungsterScript:
	jumptextfaceplayer Route1Route2GateYoungsterText

Route1Route2GateOfficerText:
	text "You can't climb"
	line "ledges."

	para "But you can jump"
	line "down from them to"
	cont "take a shortcut."
	done

Route1Route2GateYoungsterText:
	text "Different types of"
	line "#MON appear"
	cont "past here."

	para "If you want to"
	line "catch them all,"

	para "you have to look"
	line "everywhere."
	done

Route1Route2Gate_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  0,  5, ROUTE_1, 1
	warp_event  0,  4, ROUTE_1, 2

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  4,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route1Route2GateOfficerScript, -1
	object_event  4,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route1Route2GateYoungsterScript, -1
