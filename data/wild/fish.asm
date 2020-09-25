time_group EQUS "0," ; use the nth TimeFishGroups entry

fishgroup: MACRO
; chance, old rod, good rod, super rod
	dbwww \1, \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Goldeen_Swarm_Old,   .Goldeen_Swarm_Good,   .Goldeen_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Goldeen_Old,         .Goldeen_Good,         .Goldeen_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super

.Shore_Old:
	db  70 percent + 1, MAGIKARP,   8
	db  85 percent + 1, MAGIKARP,   8
	db 100 percent,     HORSEA,     10
.Shore_Good:
	db  35 percent,     MAGIKARP,   27
	db  70 percent,     KRABBY,     27
	db  90 percent + 1, KRABBY,     27
	db 100 percent,     time_group 0
.Shore_Super:
	db  40 percent,     KRABBY,     50
	db  70 percent,     time_group 1
	db  90 percent + 1, KRABBY,     50
	db 100 percent,     KINGLER,    50

.Ocean_Old:
	db  70 percent + 1, MAGIKARP,   22
	db  85 percent + 1, MAGIKARP,   22
	db 100 percent,     TENTACOOL,  15
.Ocean_Good:
	db  35 percent,     MAGIKARP,   27
	db  70 percent,     TENTACOOL,  20
	db  90 percent + 1, SEAKING,   27
	db 100 percent,     time_group 2
.Ocean_Super:
	db  40 percent,     SEAKING,   50
	db  70 percent,     time_group 3
	db  90 percent + 1, TENTACRUEL, 40
	db 100 percent,     MANTINE,    50

.Lake_Old:
	db  70 percent + 1, MAGIKARP,   22
	db  85 percent + 1, MAGIKARP,   22
	db 100 percent,     GOLDEEN,    22
.Lake_Good:
	db  35 percent,     MAGIKARP,   27
	db  70 percent,     GOLDEEN,    27
	db  90 percent + 1, GOLDEEN,    27
	db 100 percent,     time_group 4
.Lake_Super:
	db  40 percent,     GOLDEEN,    50
	db  70 percent,     time_group 5
	db  90 percent + 1, MAGIKARP,   50
	db 100 percent,     SEAKING,    50

.Pond_Old:
	db  70 percent + 1, POLIWAG,   9
	db  85 percent + 1, POLIWAG,   10
	db 100 percent,     POLIWAG,    12
.Pond_Good:
	db  35 percent,     MAGIKARP,   27
	db  70 percent,     POLIWAG,    27
	db  90 percent + 1, POLIWAG,    27
	db 100 percent,     time_group 6
.Pond_Super:
	db  40 percent,     POLIWAG,    50
	db  70 percent,     time_group 7
	db  90 percent + 1, MAGIKARP,   50
	db 100 percent,     POLIWAG,    50

.Dratini_Old:
	db  70 percent + 1, MAGIKARP,   22
	db  85 percent + 1, MAGIKARP,   22
	db 100 percent,     MAGIKARP,   22
.Dratini_Good:
	db  35 percent,     MAGIKARP,   27
	db  70 percent,     MAGIKARP,   27
	db  90 percent + 1, MAGIKARP,   27
	db 100 percent,     time_group 8
.Dratini_Super:
	db  40 percent,     MAGIKARP,   50
	db  70 percent,     time_group 9
	db  90 percent + 1, MAGIKARP,   50
	db 100 percent,     DRAGONAIR,  40

.Qwilfish_Swarm_Old:
	db  70 percent + 1, MAGIKARP,   8
	db  85 percent + 1, MAGIKARP,   8
	db 100 percent,     POLIWHIRL,   8
.Qwilfish_Swarm_Good:
	db  35 percent,     MAGIKARP,   27
	db  70 percent,     POLIWHIRL,   27
	db  90 percent + 1, POLIWHIRL,   27
	db 100 percent,     time_group 10
.Qwilfish_Swarm_Super:
	db  40 percent,     POLIWHIRL,   50
	db  70 percent,     time_group 11
	db  90 percent + 1, POLIWHIRL,   50
	db 100 percent,     POLIWHIRL,   50

.Goldeen_Swarm_Old:
	db  70 percent + 1, MAGIKARP,   22
	db  85 percent + 1, MAGIKARP,   22
	db 100 percent,     GOLDEEN,   22
.Goldeen_Swarm_Good:
	db  35 percent,     MAGIKARP,   27
	db  70 percent,     GOLDEEN,   27
	db  90 percent + 1, GOLDEEN,   27
	db 100 percent,     time_group 12
.Goldeen_Swarm_Super:
	db  40 percent,     GOLDEEN,   50
	db  70 percent,     time_group 13
	db  90 percent + 1, GOLDEEN,   50
	db 100 percent,     GOLDEEN,   50

.Gyarados_Old:
	db  70 percent + 1, MAGIKARP,   22
	db  85 percent + 1, MAGIKARP,   22
	db 100 percent,     MAGIKARP,   22
.Gyarados_Good:
	db  35 percent,     MAGIKARP,   27
	db  70 percent,     MAGIKARP,   27
	db  90 percent + 1, MAGIKARP,   27
	db 100 percent,     time_group 14
.Gyarados_Super:
	db  40 percent,     MAGIKARP,   50
	db  70 percent,     time_group 15
	db  90 percent + 1, MAGIKARP,   50
	db 100 percent,     MAGIKARP,   50

.Dratini_2_Old:
	db  70 percent + 1, MAGIKARP,   22
	db  85 percent + 1, MAGIKARP,   22
	db 100 percent,     MAGIKARP,   22
.Dratini_2_Good:
	db  35 percent,     MAGIKARP,   22
	db  70 percent,     MAGIKARP,   22
	db  90 percent + 1, MAGIKARP,   22
	db 100 percent,     time_group 16
.Dratini_2_Super:
	db  40 percent,     MAGIKARP,   22
	db  70 percent,     time_group 17
	db  90 percent + 1, MAGIKARP,   22
	db 100 percent,     DRAGONAIR,  15

.WhirlIslands_Old:
	db  70 percent + 1, MAGIKARP,   22
	db  85 percent + 1, MAGIKARP,   22
	db 100 percent,     KRABBY,     22
.WhirlIslands_Good:
	db  35 percent,     MAGIKARP,   27
	db  70 percent,     KRABBY,     27
	db  90 percent + 1, KRABBY,     27
	db 100 percent,     time_group 18
.WhirlIslands_Super:
	db  40 percent,     KRABBY,     50
	db  70 percent,     time_group 19
	db  90 percent + 1, KINGLER,    50
	db 100 percent,     SEADRA,     50

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	db  70 percent + 1, MAGIKARP,   22
	db  85 percent + 1, MAGIKARP,   22
	db 100 percent,     TENTACOOL,  15
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	db  35 percent,     MAGIKARP,   27
	db  70 percent,     TENTACOOL,  20
	db  90 percent + 1, TENTACOOL,  20
	db 100 percent,     time_group 20
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	db  40 percent,     TENTACOOL,  40
	db  70 percent,     time_group 21
	db  90 percent + 1, MAGIKARP,   50
	db 100 percent,     POLIWHIRL,   50

.Goldeen_Old:
	db  70 percent + 1, MAGIKARP,   22
	db  85 percent + 1, MAGIKARP,   22
	db 100 percent,     POLIWAG,    22
.Goldeen_Good:
	db  35 percent,     MAGIKARP,   27
	db  70 percent,     POLIWAG,    27
	db  90 percent + 1, POLIWAG,    27
	db 100 percent,     time_group 6
.Goldeen_Super:
	db  40 percent,     POLIWAG,    50
	db  70 percent,     time_group 7
	db  90 percent + 1, MAGIKARP,   50
	db 100 percent,     GOLDEEN,   50

TimeFishGroups:
	;  day              nite
	db SHELLDER,   27,  SHELLDER,   36 ; 2
	db SHELLDER,   50,  SHELLDER,   48 ; 3
	db GOLDEEN,    27,  GOLDEEN,    36 ; 4
	db GOLDEEN,    50,  GOLDEEN,    48 ; 8
	db POLIWAG,    27,  POLIWAG,    36 ; 6
	db POLIWAG,    50,  POLIWAG,    48 ; 7
	db DRATINI,    27,  DRATINI,    36 ; 8
	db DRATINI,    50,  DRATINI,    48 ; 9
	db POLIWHIRL,   27,  POLIWHIRL,   36 ; 10
	db POLIWHIRL,   50,  POLIWHIRL,   48 ; 11
	db GOLDEEN,   27,  GOLDEEN,   36 ; 12
	db GOLDEEN,   50,  GOLDEEN,   48 ; 13
	db MAGIKARP,   27,  MAGIKARP,   36 ; 14
	db MAGIKARP,   50,  MAGIKARP,   48 ; 15
	db DRATINI,    22,  DRATINI,    27 ; 16
	db DRATINI,    22,  DRATINI,    27 ; 17
	db HORSEA,     27,  HORSEA,     36 ; 18
	db HORSEA,     50,  HORSEA,     48 ; 19
	db TENTACOOL,  20,  TENTACOOL,  30 ; 20
	db TENTACOOL,  40,  TENTACOOL,  48 ; 21
