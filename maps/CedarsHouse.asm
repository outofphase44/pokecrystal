	object_const_def ; object_event constants
	const CEDARSHOUSE_CEDARS_WIFE
	const CEDARSHOUSE_CEDARS_SON

CedarsHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CedarsWife:
	jumptextfaceplayer CedarsWifeText

CedarsSon:
	jumptextfaceplayer CedarsSonText

CedarsHousePC:
	jumptext CedarsHousePCText

CedarsHouseBookshelf:
	jumpstd difficultbookshelf

CedarsWifeText:
	text "Hi, <PLAY_G>! My"
	line "husband's always"

	para "so busy--I hope"
	line "he's OK."

	para "When he's caught"
	line "up in his #MON"

	para "research, he even"
	line "forgets to eat."
	done

CedarsSonText:
	text "When I grow up,"
	line "I'm going to help"
	cont "my dad!"

	para "I'm going to be a"
	line "great #MON"
	cont "professor!"
	done

CedarsHouseLabFoodText:
; unused
	text "There's some food"
	line "here. It must be"
	cont "for the LAB."
	done

CedarsHousePokemonFoodText:
; unused
	text "There's some food"
	line "here. This must be"
	cont "for #MON."
	done

CedarsHousePCText:
	text "#MON. Where do"
	line "they come from? "

	para "Where are they"
	line "going?"

	para "Why has no one"
	line "ever witnessed a"
	cont "#MON's birth?"

	para "I want to know! I"
	line "will dedicate my"

	para "life to the study"
	line "of #MON!"

	para "…"

	para "It's a part of"
	line "PROF.CEDAR's re-"
	cont "search papers."
	done

CedarsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NEW_BARK_TOWN, 4
	warp_event  3,  7, NEW_BARK_TOWN, 4

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, BGEVENT_READ, CedarsHousePC
	bg_event  6,  1, BGEVENT_READ, CedarsHouseBookshelf
	bg_event  7,  1, BGEVENT_READ, CedarsHouseBookshelf

	db 2 ; object events
	object_event  1,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CedarsWife, -1
	object_event  5,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CedarsSon, -1
