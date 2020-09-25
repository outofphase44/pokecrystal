	object_const_def ; object_event constants
	const NEWBARKTOWN_TEACHER
	const NEWBARKTOWN_FISHER
	const NEWBARKTOWN_SILVER

NewBarkTown_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	return

NewBarkTown_TeacherStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_TEACHER, UP
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement NEWBARKTOWN_TEACHER, Movement_TeacherRunsToYou1_NBT
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow NEWBARKTOWN_TEACHER, PLAYER
	applymovement NEWBARKTOWN_TEACHER, Movement_TeacherBringsYouBack1_NBT
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

NewBarkTown_TeacherStopsYouScene2:
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_TEACHER, UP
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement NEWBARKTOWN_TEACHER, Movement_TeacherRunsToYou2_NBT
	turnobject PLAYER, LEFT
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow NEWBARKTOWN_TEACHER, PLAYER
	applymovement NEWBARKTOWN_TEACHER, Movement_TeacherBringsYouBack2_NBT
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

NewBarkTownTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .CallMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_CEDAR
	iftrue .TellMomYoureLeaving
	checkevent EVENT_GOT_A_POKEMON_FROM_CEDAR
	iftrue .MonIsAdorable
	writetext Text_GearIsImpressive
	waitbutton
	closetext
	end

.MonIsAdorable:
	writetext Text_YourMonIsAdorable
	waitbutton
	closetext
	end

.TellMomYoureLeaving:
	writetext Text_TellMomIfLeaving
	waitbutton
	closetext
	end

.CallMom:
	writetext Text_CallMomOnGear
	waitbutton
	closetext
	end

NewBarkTownFisherScript:
	jumptextfaceplayer Text_CedarDiscoveredNewMon

NewBarkTownSign:
	jumptext NewBarkTownSignText

NewBarkTownPlayersHouseSign:
	jumptext NewBarkTownPlayersHouseSignText

NewBarkTownCedarsLabSign:
	jumptext NewBarkTownCedarsLabSignText

Movement_TeacherRunsToYou1_NBT:
	step UP
	step UP
	step UP
	step_end

Movement_TeacherRunsToYou2_NBT:
	step UP
	step UP
	step UP
	step UP
	turn_head RIGHT
	step_end

Movement_TeacherBringsYouBack1_NBT:
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

Movement_TeacherBringsYouBack2_NBT:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

Text_GearIsImpressive:
	text "Wow, you have the"
	line "newest #GEAR!?"

	para "Your mom is"
	line "the coolest!"
	done

Text_WaitPlayer:
	text "Wait, <PLAY_G>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "What do you think"
	line "you're doing?"
	done

Text_ItsDangerousToGoAlone:
	text "It's dangerous to"
	line "go out without a"
	cont "#MON!"

	para "Wild #MON"
	line "jump out of the"

	para "grass on the way"
	line "to the next town."
	done

Text_YourMonIsAdorable:
	text "Your #MON is"
	line "is so cute!"
	cont "I want one too!"
	done

Text_TellMomIfLeaving:
	text "Hi, <PLAY_G>!"
	line "Leaving again?"

	para "You should tell"
	line "your mom if you"
	cont "are leaving."
	done

Text_CallMomOnGear:
	text "Call your mom on"
	line "your #GEAR to"

	para "let her know how"
	line "you're doing."
	done

Text_CedarDiscoveredNewMon:
	text "Yo, <PLAYER>!"

	para "I hear PROF.CEDAR"
	line "is close to some"
	cont "new discoveries!"
	done


NewBarkTownSignText:
	text "KANAWHA TOWN"
	para "Where the waters"
	line "of a new"
	cont "beginning flow."
	para "Home of '86 SHENDO"
	para "REGION CHAMP"
	line "MASON"
	done

NewBarkTownPlayersHouseSignText:
	text "<PLAYER>'s House"
	done

NewBarkTownCedarsLabSignText:
	text "CEDAR #MON LAB"
	para "Evolving our"
	line "knowledge of" 
	cont "#MON every day!"
	done


NewBarkTown_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 10,  9, CEDARS_LAB, 1
	warp_event 11,  3, PLAYERS_HOUSE_1F, 1
	warp_event  5,  3, PLAYERS_NEIGHBORS_HOUSE, 1
	warp_event 14,  9, CEDARS_LAB, 3

	db 2 ; coord events
	coord_event 20,  0, SCENE_DEFAULT, NewBarkTown_TeacherStopsYouScene1
	coord_event 21,  0, SCENE_DEFAULT, NewBarkTown_TeacherStopsYouScene2

	db 3 ; bg events
	bg_event 22,  4, BGEVENT_READ, NewBarkTownSign
	bg_event  9,  3, BGEVENT_READ, NewBarkTownPlayersHouseSign
	bg_event  6,  8, BGEVENT_READ, NewBarkTownCedarsLabSign

	db 2 ; object events
	object_event 20,  4, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownTeacherScript, -1
	object_event  8, 12, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NewBarkTownFisherScript, -1
