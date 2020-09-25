	object_const_def ; object_event constants
	const HARPERSTOWN_GRAMPS
	const HARPERSTOWN_SILVER
	const HARPERSTOWN_TEACHER
	const HARPERSTOWN_YOUNGSTER
	const HARPERSTOWN_FISHER

HarpersTown_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_HARPERSTOWN_NOTHING


	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_CHERRYGROVE
	return

HarpersTownMrJackson:
	faceplayer
	opentext
	writetext MrJacksonIntroText
	yesorno
	iffalse .No
	sjump .Yes
.Yes:
	promptbutton
	getstring STRING_BUFFER_4, .mapcardname
	scall .JumpstdReceiveItem
	setflag ENGINE_MAP_CARD
	promptbutton
	writetext MrJacksonPokegearText
	waitbutton
	closetext
	end

.JumpstdReceiveItem:
	jumpstd receiveitem
	end

.mapcardname
	db "MAP CARD@"

.No:
	writetext MrJacksonNoText
	waitbutton
	closetext
	end

CherrygroveTeacherScript:
	faceplayer
	opentext
	checkflag ENGINE_MAP_CARD
	iftrue .HaveMapCard
	writetext CherrygroveTeacherText_NoMapCard
	waitbutton
	closetext
	end

.HaveMapCard:
	writetext CherrygroveTeacherText_HaveMapCard
	waitbutton
	closetext
	end

CherrygroveYoungsterScript:
	faceplayer
	opentext
	writetext CherrygroveYoungsterText
	waitbutton
	closetext
	end

HarpersTownSign:
	jumptext HarpersTownSignText

MrJacksonsHouseSign:
	jumptext MrJacksonsHouseSignText

HarpersTownPokecenterSign:
	jumpstd pokecentersign

HarpersTownMartSign:
	jumpstd martsign

HarpersTown_UnusedMovementData:
	step LEFT
	turn_head DOWN
	step_end

MrJacksonIntroText:
	text "Hello there!"
	line "Welcome to"
	cont "Harper's Town!"
	
	para "Well aren't you"
	line "a fine young"
	cont "trainer!"

	para "My name is Will,"
	line "William Jackson"
	cont "that is."

	para "You must be from"
	line "KANAWHA TOWN,"
	cont "I can tell from"
	cont "how you dress."

	para "It can be easy"
	line "for one as green"
	cont "as yourself to get"
	cont "lost in the forest"
	cont "or mountains"
	cont "'round here."

	para "Why don't you"
	line "take this map!?"
	cont "It has information"
	cont "on the whole area."
	done
	
MrJacksonPokegearText:
	text "Its my pleasure."
	line "I always enjoy"
	cont "helping out young"
	cont "trainers."

	para "Good luck on your"
	line "journey!"
	done

MrJacksonNoText:
	text "Well the offer"
	line "is on the table"
	cont "should you have"
	cont "a change of heart."
	done

CherrygroveTeacherText_NoMapCard:
	text "The old man by the"
	line "river there?"

	para "That's Mr.Jackson."
	line "He likes to help"
	cont "new trainers."

	para "You should go"
	line "chat with him."
	done

CherrygroveTeacherText_HaveMapCard:
	text "Mr. Jackson"
	line "has helped the"
	cont "town so much."
	
	para "Rumor has it"
	line "he has done quite"
	cont "well for himself,"
	cont "but you wouldn't"
	cont "ever guess from"
	cont "his common manner."
	done

CherrygroveYoungsterText:
	text "If your #MON"
	line "knows how to"
	cont "cross a whirlpool,"
	cont "you can ride the"
	cont "rapids down to"
	cont "SHENDO CITY."
	
	para "Otherwise, you"
	line "have to go through"
	cont "DUNKER FOREST."
	done

HarpersTownSignText:
	text "HARPER'S TOWN"

	para "Historic site"
	line "of UNION LANDING"
	cont "AND TRADE OUTPOST."
	done

MrJacksonsHouseSignText:
	text "MR.JACKSON'S HOUSE"
	done

HarpersTown_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event 11,  7, HARPERS_MART, 2
	warp_event  7,  7, CHERRYGROVE_POKECENTER_1F, 1
	warp_event 17,  7, CHERRYGROVE_GYM_SPEECH_HOUSE, 1
	warp_event 11, 13, MR_JACKSONS_HOUSE, 1
	warp_event 18,  3, HARPERS_GYM, 1
	warp_event 21,  8, HARPERS_DUNKER_GATE, 1
	warp_event 21,  9, HARPERS_DUNKER_GATE, 2

	db 0 ; coord events

	db 4 ; bg events
	bg_event 18, 12, BGEVENT_READ, HarpersTownSign
	bg_event  9, 13, BGEVENT_READ, MrJacksonsHouseSign
	bg_event 12,  7, BGEVENT_READ, HarpersTownMartSign
	bg_event  8,  7, BGEVENT_READ, HarpersTownPokecenterSign

	db 3 ; object events
	object_event 11, 19, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HarpersTownMrJackson, EVENT_MR_JACKSON_IN_HIS_HOUSE
	object_event 18, 10, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CherrygroveTeacherScript, -1
	object_event 11, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveYoungsterScript, -1
	
