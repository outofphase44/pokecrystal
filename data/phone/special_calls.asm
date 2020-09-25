specialcall: MACRO
; condition, contact, script
	dw \1
	db \2
	dba \3
ENDM

SpecialPhoneCallList:
; entries correspond to SPECIALCALL_* constants
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_CEDAR,      CedarPhoneCallerScript
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_CEDAR,      CedarPhoneCallerScript
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_CEDAR,      CedarPhoneCallerScript
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_CEDAR,      CedarPhoneCallerScript
	specialcall SpecialCallWhereverYouAre,  PHONECONTACT_CEDAR,      CedarPhoneCallerScript
	specialcall SpecialCallWhereverYouAre,  PHONECONTACT_BIKESHOP, BikeShopPhoneCallerScript
	specialcall SpecialCallWhereverYouAre,  PHONECONTACT_MOM,      MomPhoneLectureScript
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_CEDAR,      CedarPhoneCallerScript
