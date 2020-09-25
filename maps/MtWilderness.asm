	object_const_def ; object_event constants

MtWilderness_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks


MtWilderness_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 19, 25, ROUTE_1, 1


	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
