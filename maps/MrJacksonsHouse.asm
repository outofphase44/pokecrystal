	object_const_def ; object_event constants
	const MRJACKSONSHOUSE_GRAMPS

MrJacksonsHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MrJacksonsHouseMrJackson:
	jumptextfaceplayer MrJacksonsHouseMrJacksonText

MrJacksonsHouseBookshelf:
	jumpstd magazinebookshelf

MrJacksonsHouseMrJacksonText:
	text "After the war,"
	line "I made some money"
	cont "building railroads."

	para "I had my fill of"
	line "city life, so I"
	cont "retired and I"
	line "settled down here"
	line "at the base of the"
	line "mountains."
	done

MrJacksonsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, HARPERS_TOWN, 4
	warp_event  3,  7, HARPERS_TOWN, 4

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, MrJacksonsHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MrJacksonsHouseBookshelf

	db 1 ; object events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrJacksonsHouseMrJackson, EVENT_MR_JACKSON_VISIBLE_IN_CHERRYGROVE
