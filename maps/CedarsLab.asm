	object_const_def ; object_event constants
	const CEDARSLAB_CEDAR
	const CEDARSLAB_CEDARS_AIDE
	const CEDARSLAB_POKE_BALL1
	const CEDARSLAB_POKE_BALL2
	const CEDARSLAB_POKE_BALL3

CedarsLab_MapScripts:
	db 5 ; scene scripts
	scene_script .MeetCedar ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_CEDARSLAB_CANT_LEAVE
	scene_script .DummyScene2 ; SCENE_CEDARSLAB_NOTHING
	scene_script .DummyScene4 ; SCENE_CEDARSLAB_UNUSED
	scene_script .DummyScene5 ; SCENE_CEDARSLAB_AIDE_GIVES_POTION

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .MoveCedarCallback

.MeetCedar:
	prioritysjump .WalkUpToCedar
	end

.DummyScene1:
	end

.DummyScene2:
	end

.DummyScene3:
	end

.DummyScene4:
	end

.DummyScene5:
	end

.MoveCedarCallback:
	checkscene
	iftrue .Skip ; not SCENE_DEFAULT
	moveobject CEDARSLAB_CEDAR, 3, 4
.Skip:
	return

.WalkUpToCedar:
	applymovement PLAYER, CedarsLab_WalkUpToCedarMovement
	showemote EMOTE_SHOCK, CEDARSLAB_CEDAR, 15
	turnobject CEDARSLAB_CEDAR, RIGHT
	opentext
	writetext CedarText_Intro
.MustSayYes:
	yesorno
	iftrue .CedarGetsEmail
	writetext CedarText_Refused
	sjump .MustSayYes

.CedarGetsEmail:
	writetext CedarText_Accepted
	promptbutton
	writetext CedarText_ResearchAmbitions
	waitbutton
	closetext
	turnobject CEDARSLAB_CEDAR, RIGHT
	applymovement CEDARSLAB_CEDAR, CedarsLab_CedarToDefaultPositionMovement1
	turnobject PLAYER, UP
	applymovement CEDARSLAB_CEDAR, CedarsLab_CedarToDefaultPositionMovement2
	turnobject PLAYER, RIGHT
	opentext
	writetext CedarText_ChooseAPokemon
	waitbutton
	setscene SCENE_CEDARSLAB_CANT_LEAVE
	closetext
	end

ProfCedarScript:
	faceplayer
	checkflag ENGINE_BLOOMBADGE
	iftrue CedarCheckCut

CedarCheckCut:
	checkevent EVENT_GOT_HM01_CUT
	opentext
	iftrue CedarGenericTextScript
	iffalse CedarGiveCutScript
	end

MagmarPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_CEDAR
	iftrue LookAtCedarPokeBallScript
	turnobject CEDARSLAB_CEDAR, DOWN
	refreshscreen
	pokepic MAGMAR
	cry MAGMAR
	waitbutton
	closepokepic
	opentext
	writetext TakeMagmarText
	yesorno
	iffalse DidntChooseStarterScript
	disappear CEDARSLAB_POKE_BALL1
	setevent EVENT_GOT_MAGMAR_FROM_CEDAR
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, MAGMAR
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke MAGMAR, 5, BERRY
	closetext
	readvar VAR_FACING
	ifequal RIGHT, CedarDirectionsScript
	applymovement PLAYER, AfterMagmarMovement
	sjump CedarDirectionsScript

StaryuPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_CEDAR
	iftrue LookAtCedarPokeBallScript
	turnobject CEDARSLAB_CEDAR, DOWN
	refreshscreen
	pokepic STARYU
	cry STARYU
	waitbutton
	closepokepic
	opentext
	writetext TakeStaryuText
	yesorno
	iffalse DidntChooseStarterScript
	disappear CEDARSLAB_POKE_BALL2
	setevent EVENT_GOT_STARYU_FROM_CEDAR
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, STARYU
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke STARYU, 5, BERRY
	closetext
	applymovement PLAYER, AfterStaryuMovement
	sjump CedarDirectionsScript

ElectabuzzPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_CEDAR
	iftrue LookAtCedarPokeBallScript
	turnobject CEDARSLAB_CEDAR, DOWN
	refreshscreen
	pokepic ELECTABUZZ
	cry ELECTABUZZ
	waitbutton
	closepokepic
	opentext
	writetext TakeElectabuzzText
	yesorno
	iffalse DidntChooseStarterScript
	disappear CEDARSLAB_POKE_BALL3
	setevent EVENT_GOT_ELECTABUZZ_FROM_CEDAR
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, ELECTABUZZ
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke ELECTABUZZ, 5, BERRY
	closetext
	applymovement PLAYER, AfterElectabuzzMovement
	sjump CedarDirectionsScript

DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end

CedarDirectionsScript:
	turnobject PLAYER, UP
	opentext
 	writetext CedarGivesDexText1
	waitbutton
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_POKEDEX
	closetext
	opentext
	writetext CedarGivesDexText2
	waitbutton
	closetext
	opentext
	writetext CedarDirectionsText1
	waitbutton
	addcellnum PHONE_CEDAR
	opentext
	writetext GotCedarsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	turnobject CEDARSLAB_CEDAR, LEFT
	opentext
	writetext CedarDirectionsText2
	waitbutton
	closetext
	turnobject CEDARSLAB_CEDAR, DOWN
	opentext
	writetext CedarDirectionsText3
	waitbutton
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_CEDAR
	setevent EVENT_RIVAL_HARPERS_TOWN
	setscene SCENE_CEDARSLAB_AIDE_GIVES_POTION
	setmapscene NEW_BARK_TOWN, SCENE_FINISHED
	end

CedarGenericTextScript:
	writetext CedarDirectionsText3
	waitbutton
	closetext
	end

LookAtCedarPokeBallScript:
	opentext
	writetext CedarPokeBallText
	waitbutton
	closetext
	end

CedarsLabHealingMachine:
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_CEDAR
	iftrue .CanHeal
	writetext CedarsLabHealingMachineText1
	waitbutton
	closetext
	end

.CanHeal:
	writetext CedarsLabHealingMachineText2
	yesorno
	iftrue CedarsLabHealingMachine_HealParty
	closetext
	end

CedarsLabHealingMachine_HealParty:
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_NONE
	setval HEALMACHINE_CEDARS_LAB
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	closetext
	end

CedarGiveCutScript:
	writetext CedarGiveCutText1
	promptbutton
	verbosegiveitem HM_CUT
	iffalse .notdone
	setevent EVENT_GOT_HM01_CUT
	writetext CedarGiveCutText2
	waitbutton
.notdone
	closetext
	setevent EVENT_PLAYERS_HOUSE_1F_NEIGHBOR
	clearevent EVENT_PLAYERS_NEIGHBORS_HOUSE_NEIGHBOR
	end

CedarJumpBackScript1:
	closetext
	readvar VAR_FACING
	ifequal DOWN, CedarJumpDownScript
	ifequal UP, CedarJumpUpScript
	ifequal LEFT, CedarJumpLeftScript
	ifequal RIGHT, CedarJumpRightScript
	end

CedarJumpBackScript2:
	closetext
	readvar VAR_FACING
	ifequal DOWN, CedarJumpUpScript
	ifequal UP, CedarJumpDownScript
	ifequal LEFT, CedarJumpRightScript
	ifequal RIGHT, CedarJumpLeftScript
	end

CedarJumpUpScript:
	applymovement CEDARSLAB_CEDAR, CedarJumpUpMovement
	opentext
	end

CedarJumpDownScript:
	applymovement CEDARSLAB_CEDAR, CedarJumpDownMovement
	opentext
	end

CedarJumpLeftScript:
	applymovement CEDARSLAB_CEDAR, CedarJumpLeftMovement
	opentext
	end

CedarJumpRightScript:
	applymovement CEDARSLAB_CEDAR, CedarJumpRightMovement
	opentext
	end

AideScript_WalkBalls1:
	scall AideScript_GiveYouBalls
	end

AideScript_GiveYouBalls:
	faceplayer
	opentext
	writetext AideText_GiveYouBalls
	promptbutton
	getitemname STRING_BUFFER_4, POKE_BALL
	scall AideScript_ReceiveTheBalls
	giveitem POKE_BALL, 25
	writetext AideText_ExplainBalls
	promptbutton
	itemnotify
	closetext
	setscene SCENE_CEDARSLAB_NOTHING
	end

AideScript_ReceiveTheBalls:
	jumpstd receiveitem
	end

AideScript_ExplainBalls:
	writetext AideText_ExplainBalls
	waitbutton
	closetext
	end

CedarsLabWindow:
	opentext
	writetext CedarsLabWindowText
	waitbutton
	closetext
	end

CedarsLabTravelTip1:
	jumptext CedarsLabTravelTip1Text

CedarsLabTravelTip2:
	jumptext CedarsLabTravelTip2Text

CedarsLabTravelTip3:
	jumptext CedarsLabTravelTip3Text

CedarsLabTravelTip4:
	jumptext CedarsLabTravelTip4Text

CedarsLabPC:
	jumptext CedarsLabPCText

CedarsLabBookshelf:
	jumpstd difficultbookshelf

CedarsLab_WalkUpToCedarMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head LEFT
	step_end

CedarsLab_CantLeaveMovement:
	step UP
	step_end

CedarJumpUpMovement:
	fix_facing
	big_step UP
	remove_fixed_facing
	step_end

CedarJumpDownMovement:
	fix_facing
	big_step DOWN
	remove_fixed_facing
	step_end

CedarJumpLeftMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	step_end

CedarJumpRightMovement:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	step_end

CedarsLab_CedarToDefaultPositionMovement1:
	step UP
	step_end

CedarsLab_CedarToDefaultPositionMovement2:
	step RIGHT
	step RIGHT
	step UP
	turn_head DOWN
	step_end

AfterMagmarMovement:
	step LEFT
	step UP
	turn_head UP
	step_end

AfterStaryuMovement:
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

AfterElectabuzzMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

CedarText_Intro:
	text "CEDAR: <PLAY_G>!"
	line "There you are!"

	para "I needed to ask"
	line "you a favor."

	para "I'm conducting new"
	line "#MON research"

	para "right now. I was"
	line "wondering if you"

	para "could help me with"
	line "it, <PLAY_G>."

	para "You see…"

	para "I'm writing a"
	line "paper that I want"

	para "to present at a"
	line "conference."

	para "But there are some"
	line "things I don't"

	para "quite understand"
	line "yet."

	para "So!"

	para "I'd like you to"
	line "raise a #MON"

	para "that I recently"
	line "caught."
	done

CedarText_Accepted:
	text "Thanks, <PLAY_G>!"

	para "You're a great"
	line "help!"
	done

CedarText_Refused:
	text "But… Please, I"
	line "need your help!"
	done

CedarText_ResearchAmbitions:
	text "When I announce my"
	line "findings, I'm sure"

	para "we'll delve a bit"
	line "deeper into the"

	para "many mysteries of"
	line "#MON."

	para "You can count on"
	line "it!"
	done

CedarText_ChooseAPokemon:
	text "I want you to"
	line "raise one of the"

	para "#MON contained"
	line "in these BALLS."

	para "You'll be that"
	line "#MON's first"
	cont "partner, <PLAY_G>!"

	para "Go on. Pick one!"
	done

CedarText_LetYourMonBattleIt:
	text "If a wild #MON"
	line "appears, let your"
	cont "#MON battle it!"
	done

TakeMagmarText:
	text "CEDAR: You'll take"
	line "MAGMAR, the"
	cont "fire #MON?"
	done

TakeStaryuText:
	text "CEDAR: Do you want"
	line "STARYU, the"
	cont "water #MON?"
	done

TakeElectabuzzText:
	text "CEDAR: So you like"
	line "ELECTABUZZ, the"
	cont "electric #MON?"
	done

DidntChooseStarterText:
	text "CEDAR: Take"
	line "your time."
	done

ChoseStarterText:
	text "CEDAR: I think"
	line "that's a great"
	cont "#MON too!"
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

CedarGivesDexText1:
	text "This here is"
	line "a #DEX."

	para "You can use it to"
	line "record tons of"
	cont "information on the"
	cont "#MON you find."

	para "Catch as many as"
	line "you can and fill"
	cont "up your #DEX"
	cont "with the data"
	cont "we need."
	done

CedarGivesDexText2:
	text "<PLAYER> got"
	line "a #DEX!"
	done

CedarDirectionsText1:
	text "Also, put my"
	line "number in your"
	cont "#GEAR"

	para "Call me if you"
	line "find anything"
	cont "intersting."
	done

CedarDirectionsText2:
	text "If your #MON is"
	line "hurt, you should"

	para "heal it with this"
	line "machine."

	para "Feel free to use"
	line "it anytime."
	done

CedarDirectionsText3:
	text "<PLAY_G>, I'm"
	line "counting on you!"
	done

GotCedarsNumberText:
	text "<PLAYER> got CEDAR's"
	line "phone number."
	done

CedarPokeBallText:
	text "It contains a"
	line "#MON caught by"
	cont "PROF.CEDAR."
	done

CedarsLabHealingMachineText1:
	text "I wonder what this"
	line "does?"
	done

CedarsLabHealingMachineText2:
	text "Would you like to"
	line "heal your #MON?"
	done

CedarText_CallYou:
	text "CEDAR: <PLAY_G>, I'll"
	line "call you if any-"
	cont "thing comes up."
	done

CedarGiveCutText1:
	text "CEDAR: Hi, <PLAY_G>!"
	line "Thanks to you, my"

	para "research is moving"
	line "right along!"

	para "Take this as a"
	line "token of my"
	cont "appreciation."
	done

CedarGiveCutText2:
	text "HM01 contains CUT"

	para "HM's are moves"
	line "which are useful"
	cont "outside of battle"

	para "Since you beat"
	line "DAISY, you can"
	cont "have your #MON"
	cont "cut down small"
	cont "trees."

	para "Now you should"
	line "be able to get"
	cont "through"
	cont "DUNKER FOREST."
	done

AideText_GiveYouPotion:
	text "<PLAY_G>, I want"
	line "you to have this"
	cont "for your journey."
	done

AideText_AlwaysBusy:
	text "There are only two"
	line "of us, so we're"
	cont "always busy."
	done

AideText_GiveYouBalls:
	text "<PLAY_G>!"

	para "Use these on your"
	line "#DEX quest!"
	done

AideText_ExplainBalls:
	text "To add to your"
	line "#DEX, you have"
	cont "to catch #MON."

	para "Throw # BALLS"
	line "at wild #MON"
	cont "to get them."
	done

CedarsLabWindowText:
	text "The window's open."

	para "A pleasant breeze"
	line "is blowing in."
	done

CedarsLabTravelTip1Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 1:"

	para "Press START to"
	line "open the MENU."
	done

CedarsLabTravelTip2Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 2:"

	para "Record your trip"
	line "with SAVE!"
	done

CedarsLabTravelTip3Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 3:"

	para "Open your PACK and"
	line "press SELECT to"
	cont "move items."
	done

CedarsLabTravelTip4Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 4:"

	para "Check your #MON"
	line "moves. Press the"

	para "A Button to switch"
	line "moves."
	done

CedarsLabPCText:
	text "OBSERVATIONS ON"
	line "#MON EVOLUTION"

	para "…It says on the"
	line "screen…"
	done

CedarsLab_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  4, 11, NEW_BARK_TOWN, 1
	warp_event  5, 11, NEW_BARK_TOWN, 1
	warp_event  9,  5, NEW_BARK_TOWN, 4

	db 1; coord events
	coord_event  4,  8, SCENE_CEDARSLAB_AIDE_GIVES_POKE_BALLS, AideScript_WalkBalls1

	db 15 ; bg events
	bg_event  2,  1, BGEVENT_READ, CedarsLabHealingMachine
	bg_event  6,  1, BGEVENT_READ, CedarsLabBookshelf
	bg_event  7,  1, BGEVENT_READ, CedarsLabBookshelf
	bg_event  8,  1, BGEVENT_READ, CedarsLabBookshelf
	bg_event  9,  1, BGEVENT_READ, CedarsLabBookshelf
	bg_event  0,  7, BGEVENT_READ, CedarsLabTravelTip1
	bg_event  1,  7, BGEVENT_READ, CedarsLabTravelTip2
	bg_event  2,  7, BGEVENT_READ, CedarsLabTravelTip3
	bg_event  3,  7, BGEVENT_READ, CedarsLabTravelTip4
	bg_event  6,  7, BGEVENT_READ, CedarsLabBookshelf
	bg_event  7,  7, BGEVENT_READ, CedarsLabBookshelf
	bg_event  8,  7, BGEVENT_READ, CedarsLabBookshelf
	bg_event  9,  7, BGEVENT_READ, CedarsLabBookshelf
	bg_event  5,  0, BGEVENT_READ, CedarsLabWindow
	bg_event  3,  5, BGEVENT_DOWN, CedarsLabPC

	db 5 ; object events
	object_event  5,  2, SPRITE_CEDAR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfCedarScript, -1
	object_event  2,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AideScript_WalkBalls1, EVENT_CEDARS_AIDE_IN_LAB
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MagmarPokeBallScript, EVENT_MAGMAR_POKEBALL_IN_CEDARS_LAB
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StaryuPokeBallScript, EVENT_STARYU_POKEBALL_IN_CEDARS_LAB
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElectabuzzPokeBallScript, EVENT_ELECTABUZZ_POKEBALL_IN_CEDARS_LAB
	
