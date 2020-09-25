	object_const_def ; object_event constants
	const HARPERSGYM_DAISY
	const HARPERSGYM_YOUNGSTER1
	const HARPERSGYM_YOUNGSTER2
	const HARPERSGYM_GYM_GUY

HarpersGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

HarpersGymDaisyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_DAISY
	iftrue .FightDone
	writetext DaisyIntroText
	waitbutton
	closetext
	winlosstext DaisyWinLossText, 0
	loadtrainer DAISY, DAISY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_DAISY
	opentext
	writetext ReceivedBloomBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_BLOOMBADGE
	readvar VAR_BADGES
	scall HarpersGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM12_SWEET_SCENT
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_LASS_LILY
	setevent EVENT_BEAT_LASS_ROSE
	setmapscene CEDARS_LAB, SCENE_CEDARSLAB_NOTHING
	specialphonecall SPECIALCALL_ASSISTANT
	writetext DaisyBloomBadgeText
	promptbutton
	verbosegiveitem TM_SWEET_SCENT
	iffalse .NoRoomForSWEET_SCENT
	setevent EVENT_GOT_TM12_SWEET_SCENT
	writetext DaisyTMSWEET_SCENTText
	waitbutton
	closetext
	end

.SpeechAfterTM:
	writetext DaisyFightDoneText
	waitbutton
.NoRoomForSWEET_SCENT:
	closetext
	end

HarpersGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd goldenrodrockets

.RadioTowerRockets:
	jumpstd radiotowerrockets

TrainerLassLily:
	trainer LASS, LILY, EVENT_BEAT_LASS_LILY, LassLilySeenText, LassLilyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassLilyAfterBattleText
	waitbutton
	closetext
	end

TrainerLassRose:
	trainer LASS, ROSE, EVENT_BEAT_LASS_ROSE, LassRoseSeenText, LassRoseBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassRoseAfterBattleText
	waitbutton
	closetext
	end

HarpersGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_DAISY
	iftrue .HarpersGymGuyWinScript
	writetext HarpersGymGuyText
	waitbutton
	closetext
	end

.HarpersGymGuyWinScript:
	writetext HarpersGymGuyWinText
	waitbutton
	closetext
	end

HarpersGymStatue:
	checkflag ENGINE_BLOOMBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	gettrainername STRING_BUFFER_4, DAISY, DAISY1
	jumpstd gymstatue2

DaisyIntroText:
	text "I'm DAISY, the"
	line "HARPERS TOWN GYM"
	cont "leader!"

	para "Right, the best"
	line "GRASS #MON"
	cont "trainer in SHENDO!"

	para "A battle!?"
	
	para "You won't be"
	line "the first upstart"
	cont "from KANAWHA that"
	cont "had to learn the"
	cont "hard way."
	done

DaisyWinLossText:

	text "But... OK..."
	line "...take this."

	para "It's the official"
	line "#MON LEAGUE"
	cont "BLOOMBADGE."
	done

ReceivedBloomBadgeText:
	text "<PLAYER> received"
	line "BLOOMBADGE."
	done

DaisyBloomBadgeText:
	text "The BLOOMBADGE"
	line "is an official"
	cont "league badge."

	para "It also enables"
	line "#MON to use"

	para "CUT, if they"
	line "have it, anytime."

	para "You know what!?"
	line "Since this is your"
	cont "first badge, take"
	cont "this too!"
	done

DaisyTMSWEET_SCENTText:
	text "By using a TM, a"
	line "#MON will"

	para "instantly learn a"
	line "new move."

	para "Think before you"
	line "act--a TM can be"
	cont "used only once."

	para "TM12 contains"
	line "SWEET SCENT."

	para "It can confuse the"
	line "foe's senses."
	done

DaisyFightDoneText:
	text "That was quite a"
	line "battle!"

	para "Normally, I don't"
	line "enjoy losing to"
	cont "new trainers,"
	cont "but I can see you"
	cont "have potential."

	para "If you need"
	line "training against"
	cont "grass #MON,"
	cont "you know where to"
	cont "find us."
	done

LassLilySeenText:
	text "So you're the"
	line "kid from KANAWHA"
	cont "that has been"
	cont "going around town."
	
	para "We may look"
	cont "delicate, but"
	cont "looks can be"
	cont "deceiving."

	para "Let me just say"
	line "sorry in advance,"
	cont "hun."
	done

LassLilyBeatenText:
	text "Hmph!"
	done

LassLilyAfterBattleText:
	text "DAISY's skills"
	line "are for real!"

	para "Don't get cocky"
	line "just because you"
	cont "beat me!"
	done

LassRoseSeenText:
	text "You!?"
	line "face DAISY!?"
	
	para "As if!!"
	line "Hahahaha!"
	done

LassRoseBeatenText:
	text "Whatever."
	done

LassRoseAfterBattleText:
	text "You got lucky"
	line "aginst me, but"
	cont "it won't happen"
	cont "against ROSE."
	done

HarpersGymGuyText:
	text "Hey! Have you"
	line "ever been inside"
	cont "of a GYM before?"

	para "No? Well let me"
	line "tell you..."

	para "The trainers at"
	line "a #MON gym are the"
	cont "best around."

	para "The girls here all"
	line "train under DAISY."
	cont "They come from all"
	cont "across the region,"
	line "and they all use the"
	line "grass type."
	done 

HarpersGymGuyWinText:
	text "Amazing! The way"
	line "you handled her"
	cont "CHIKORITA was"
	cont "magnificent!"

	para "You certainly"
	line "made a fan of me!"
	done

HarpersGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  6, 17, HARPERS_TOWN, 5
	warp_event  7, 17, HARPERS_TOWN, 5

	db 0 ; coord events

	db 2 ; bg events
	bg_event  5, 15, BGEVENT_READ, HarpersGymStatue
	bg_event  8, 15, BGEVENT_READ, HarpersGymStatue

	db 4 ; object events
	object_event  6,  3, SPRITE_DAISY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, HarpersGymDaisyScript, -1
	object_event  9,  7, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerLassLily, -1
	object_event  4, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerLassRose, -1
	object_event  7, 15, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HarpersGymGuyScript, -1
