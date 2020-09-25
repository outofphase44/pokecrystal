	object_const_def ; object_event constants
	const HARPERSDUNKERGATE2F_TEACHER

HarpersDunkerGate2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

HarpersDunkerGate2FTeacherScript:
	jumptextfaceplayer HarpersDunkerGate2FTeacherText

HarpersDunkerGate2FTeacherText:
	text "You can get a"
	line "wonderful view"
    cont "of the mountains"
    cont "from up here."
	done

HarpersDunkerGate2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  5,  0, HARPERS_DUNKER_GATE, 5


	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  3,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HarpersDunkerGate2FTeacherScript, -1
