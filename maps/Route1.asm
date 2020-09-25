	object_const_def ; object_event constants
	const Route1_COOLTRAINER_M1
	const Route1_YOUNGSTER
	const Route1_TEACHER1
	const Route1_FRUIT_TREE
	const Route1_FISHER
	const Route1_COOLTRAINER_M2
	const Route1_POKE_BALL

Route1_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_Route1_NOTHING

	db 0 ; callbacks


.DummyScene0:
	end

.DummyScene1:
	end

Route1YoungsterScript:
	jumptextfaceplayer Route1YoungsterText

Route1TeacherScript:
	jumptextfaceplayer Route1TeacherText

Route1FisherScript:
	jumptextfaceplayer Route1FisherText

Route1CooltrainerMScript:
	faceplayer
	opentext
	checktime DAY
	iftrue .day_morn
	checktime NITE
	iftrue .nite
.day_morn
	writetext Route1CooltrainerMText_WaitingForNight
	waitbutton
	closetext
	end

.nite
	writetext Route1CooltrainerMText_WaitingForMorning
	waitbutton
	closetext
	end

Route1Sign1:
	jumptext Route1Sign1Text

Route1Sign2:
	jumptext Route1Sign2Text

Route1Sign3:
	jumptext Route1Sign3Text

Route1FruitTree:
	fruittree FRUITTREE_ROUTE_1

Route1Potion:
	itemball POTION

Route1YoungsterText:
	text "HEY! How are your"
	line "#MON?"

	para "If they're weak"
	line "and not ready for"

	para "battle, keep out"
	line "of the grass."
	done

Route1TeacherText:
	text "If you are feeling"
	line "bold, you can jump"
	cont "from the ledges."

	para "That way you can"
	line "go to KANAWHA"
	cont "without walking in"
	cont "the grass."
	done

Route1FisherText:
	text "DAISY is the gym"
	line "leader in"
	cont "HARPER'S TOWN."

	para "She's great with"
	line "grass types."
	done

; unused
Text_WaitingForDay:
	text "I'm waiting for"
	line "#MON that"

	para "appear only in the"
	line "daytime."
	done

Route1CooltrainerMText_WaitingForNight:
	text "I'm waiting for"
	line "#MON that"

	para "appear only at"
	line "night."
	done

Route1CooltrainerMText_WaitingForMorning:
	text "I'm waiting for"
	line "#MON that"

	para "appear only in the"
	line "morning."
	done

Route1Sign1Text:
	text "ROUTE 1"

	para "HARPER'S TOWN -"
	line "KANAWHA TOWN"
	done

Route1Sign2Text:
	text "ROUTE 1"

	para "KANAWHA TOWN -"
	line "HARPER'S TOWN"
	done

Route1Sign3Text:
	text "WINCHESTER BRIDGE"
	
	para "Built with the"
	line "generous donation"
	para "of MR. JACKSON"
	done

Route1_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  4, 21, MT_WILDERNESS, 1

	db 0 ; coord events

	db 3 ; bg events
	bg_event 25,  3, BGEVENT_READ, Route1Sign1
	bg_event 20, 22, BGEVENT_READ, Route1Sign2
	bg_event  8, 12, BGEVENT_READ, Route1Sign3

	db 6 ; object events
	object_event 17, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route1YoungsterScript, -1
	object_event 10, 19, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route1TeacherScript, -1
	object_event  5, 14, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route1FruitTree, -1
	object_event 18,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route1FisherScript, -1
	object_event  6,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route1CooltrainerMScript, -1
	object_event 48,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route1Potion, EVENT_ROUTE_1_POTION
