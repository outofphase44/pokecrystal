	object_const_def ; object_event constants
	const SILPHSTORE_CLERK1


SilphStore_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilphStoreClerk1Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_SILPH_STORE
	closetext
	end

SilphStoreClerk1Text:
	text "Here at our"
	line ""

	para "mimicking people"
	line "lives here."

	para "She even mimics"
	line "the people she's"

	para "conversing with."
	line "It's confusing."
	done

SilphStore_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 11, SAFFRON_CITY, 15
	warp_event  5, 11, SAFFRON_CITY, 15


	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  6,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphStoreClerk1Script, -1
