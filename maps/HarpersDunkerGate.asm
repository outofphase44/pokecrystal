	object_const_def ; object_event constants
	const HARPERSDUNKERGATE_OFFICER

HarpersDunkerGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

HarpersDunkerGateOfficerScript:
	jumptextfaceplayer HarpersDunkerGateOfficerText

HarpersDunkerGateOfficerText:
	text "The forest ahead"
	line "is like a maze."

	para "Be careful. Please"
	line "use WATER #MON"
    cont "to put out any"
    cont "fires you may"
    cont "have started."
	done

HarpersDunkerGate_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  0,  4, HARPERS_TOWN, 6
	warp_event  0,  5, HARPERS_TOWN, 7
	warp_event  7,  4, DUNKER_FOREST, 1
	warp_event  7,  5, DUNKER_FOREST, 2
	warp_event  7,  0, HARPERS_DUNKER_GATE_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  4,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HarpersDunkerGateOfficerScript, -1
