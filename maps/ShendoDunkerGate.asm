	object_const_def ; object_event constants
	const SHENDODUNKERGATE_OFFICER

ShendoDunkerGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

ShendoDunkerGateOfficerScript:
	jumptextfaceplayer ShendoDunkerGateOfficerText

ShendoDunkerGateOfficerText:
	text "SHENDO CITY was"
	line "once the capital"
	cont "of SHENDO."

	para "It's still a"
	line "thriving city,"
    cont "but things are"
    cont "more quiet these"
    cont "days."
	done

ShendoDunkerGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, DUNKER_FOREST, 3
	warp_event  0,  5, DUNKER_FOREST, 4
	warp_event  9,  4, SHENDO_CITY, 1
	warp_event  9,  5, SHENDO_CITY, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  6,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ShendoDunkerGateOfficerScript, -1
