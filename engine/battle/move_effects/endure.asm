BattleCommand_Battery:
; endure

; Battery shares code with Protect. See protect.asm.

	call ProtectChance
	ret c

	ld a, BATTLE_VARS_SUBSTATUS1
	call GetBattleVarAddr
	set SUBSTATUS_BATTERY, [hl]

	call AnimateCurrentMove

	ld hl, BracedItselfText
	jp StdBattleTextbox
