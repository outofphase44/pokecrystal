CedarPhoneCalleeScript:
	readvar VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_POKERUS, .pokerus
	checkevent EVENT_SHOWED_TOGEPI_TO_CEDAR
	iftrue .discovery
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_CEDARS_AIDE
	iffalse .next
	checkevent EVENT_TOGEPI_HATCHED
	iftrue .egghatched
.next
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_CEDARS_AIDE
	iftrue .eggunhatched
	checkevent EVENT_CEDARS_AIDE_IN_LAB
	iftrue .assistant
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_CEDAR
	iftrue .checkingegg
	checkevent EVENT_CEDAR_CALLED_ABOUT_STOLEN_POKEMON
	iftrue .stolen
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue .sawmrpokemon
	farwritetext CedarPhoneHealYourMonText
	end

.sawmrpokemon
	farwritetext CedarPhoneSawMrPokemonText
	end

.stolen
	farwritetext CedarPhonePokemonStolenText
	end

.checkingegg
	farwritetext CedarPhoneCheckingTheEggText
	end

.assistant
	farwritetext CedarPhoneAssistantText
	end

.eggunhatched
	farwritetext CedarPhoneHowIsTheEggText
	end

.egghatched
	farwritetext CedarPhoneEggHatchedText
	setevent EVENT_TOLD_CEDAR_ABOUT_TOGEPI_OVER_THE_PHONE
	end

.discovery
	random 2
	ifequal 0, .nextdiscovery
	farwritetext CedarPhoneDiscoveredHatchTimeText
	end

.nextdiscovery
	farwritetext CedarPhoneInvestigatingEggMovesText
	end

.pokerus
	farwritetext CedarPhoneDiscoveredPokerusText
	specialphonecall SPECIALCALL_NONE
	end

CedarPhoneCallerScript:
	readvar VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_ROBBED, .disaster
	ifequal SPECIALCALL_ASSISTANT, .assistant
	ifequal SPECIALCALL_WEIRDBROADCAST, .rocket
	ifequal SPECIALCALL_SSTICKET, .gift
	ifequal SPECIALCALL_MASTERBALL, .gift
	farwritetext CedarPhoneDiscoveredPokerusText
	specialphonecall SPECIALCALL_NONE
	end

.disaster
	farwritetext CedarPhoneDisasterText
	specialphonecall SPECIALCALL_NONE
	setevent EVENT_CEDAR_CALLED_ABOUT_STOLEN_POKEMON
	end

.assistant
	farwritetext CedarPhoneEggAssistantText
	specialphonecall SPECIALCALL_NONE
	clearevent EVENT_CEDARS_AIDE_IN_VIOLET_POKEMON_CENTER
	setevent EVENT_CEDARS_AIDE_IN_LAB
	end

.rocket
	farwritetext CedarPhoneRadioTowerRocketTakeoverText
	specialphonecall SPECIALCALL_NONE
	end

.gift
	farwritetext CedarPhoneGiftText
	specialphonecall SPECIALCALL_NONE
	end

.unused
	farwritetext CedarPhoneGotAholdOfSomethingNeatText
	specialphonecall SPECIALCALL_NONE
	end
