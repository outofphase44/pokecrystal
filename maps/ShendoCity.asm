	object_const_def ; object_event constants

ShendoCity_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

ShendoCity_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2, 2, SHENDO_DUNKER_GATE, 3
	warp_event  2, 3, SHENDO_DUNKER_GATE, 4


	db 0 ; coord events

	db 0 ; bg events


	db 0 ; object events
