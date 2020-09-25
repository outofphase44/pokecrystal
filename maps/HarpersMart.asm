	object_const_def ; object_event constants
	const HARPERSMART_CLERK
	const HARPERSMART_YOUNGSTER

HarpersMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

HarpersMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE_DEX
	closetext
	end

HarpersMartYoungsterScript:
	jumptextfaceplayer HarpersMartYoungsterText


HarpersMartYoungsterText:
	text "When I was walking"
	line "in the grass, a"

	para "bug #MON poi-"
	line "soned my #MON!"

	para "I just kept going,"
	line "but then my"
	cont "#MON fainted."

	para "You should keep an"
	line "ANTIDOTE with you."
	done

HarpersMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, HARPERS_TOWN, 1
	warp_event  3,  7, HARPERS_TOWN, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HarpersMartClerkScript, -1
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HarpersMartYoungsterScript, -1
