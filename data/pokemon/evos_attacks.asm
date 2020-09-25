INCLUDE "constants.asm"


SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 20, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 19, SLEEP_POWDER
	db 25, RAZOR_LEAF
	db 30, SWEET_SCENT
	db 37, GROWTH
	db 43, SYNTHESIS
	db 45, STOMP
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 40, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 19, SLEEP_POWDER
	db 28, RAZOR_LEAF
	db 33, SWEET_SCENT
	db 41, GROWTH
	db 49, SYNTHESIS
	db 55, STOMP
	db 60, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 1, VINE_WHIP
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SWEET_SCENT
	db 44, GROWTH
	db 53, SYNTHESIS
	db 58, STOMP
	db 66, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 20, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 13, TACKLE
	db 19, SLASH
	db 25, WILL_O_WISP
	db 31, FLAMETHROWER
	db 37, SLASH
	db 43, DRAGON_RAGE
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 40, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 13, TACKLE
	db 19, SLASH
	db 28, WILL_O_WISP
	db 36, FIRE_PUNCH
	db 39, SLASH
	db 48, DRAGON_RAGE
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 13, TACKLE
	db 20, SLASH
	db 34, FLAMETHROWER
	db 44, WING_ATTACK
	db 54, DRAGON_RAGE
	db 64, FIRE_BLAST
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 20, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, LEER
	db 7, BUBBLE
	db 11, WITHDRAW
	db 15, WATER_GUN
	db 18, RAIN_DANCE
	db 23, RAPID_SPIN
	db 28, PROTECT
	db 33, BUBBLEBEAM
	db 40, SHELL_BASH
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 40, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 19, NIGHT_SLASH
	db 25, RAPID_SPIN
	db 32, PROTECT
	db 37, BUBBLEBEAM
	db 42, DOUBLE_EDGE
	db 50, BODY_SLAM
	db 59, SHELL_BASH
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, BUBBLE
	db 1, WITHDRAW
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 19, NIGHT_SLASH
	db 25, RAPID_SPIN
	db 31, PROTECT
	db 42, DOUBLE_EDGE 
	db 55, BODY_SLAM
	db 68, SHELL_BASH
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 10, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 15, BUTTERFREE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 10, CONFUSION
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 18, SUPERSONIC
	db 23, WHIRLWIND
	db 28, GUST
	db 34, PSYBEAM
	db 40, RAZOR_WIND
	db 46, QUIVER_DANCE
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 10, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 15, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_ATTACK
	db 10, FURY_ATTACK
	db 15, FOCUS_ENERGY
	db 20, AGILITY
	db 25, BUG_BITE
	db 30, PURSUIT
	db 35, AGILITY
	db 46, TWINEEDLE
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, PECK
	db 5, LEER
	db 9, GUST
	db 15, QUICK_ATTACK
	db 21, WHIRLWIND
	db 29, WING_ATTACK
	db 37, AGILITY
	db 42, ENCORE
	db 47, DRILL_PECK
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, GUST
	db 5, PECK
	db 9, GUST
	db 15, QUICK_ATTACK
	db 23, WHIRLWIND
	db 33, WING_ATTACK
	db 43, AGILITY
	db 48, ENCORE
	db 55, DRILL_PECK
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, PECK
	db 1, QUICK_ATTACK
	db 5, CROSS_PUNCH
	db 9, GUST
	db 15, QUICK_ATTACK
	db 23, WHIRLWIND
	db 33, WING_ATTACK
	db 46, AGILITY
	db 52, ENCORE
	db 61, DRILL_PECK
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 25, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 7, QUICK_ATTACK
	db 13, HYPER_FANG
	db 20, FOCUS_ENERGY
	db 27, PURSUIT
	db 30, SCREECH
	db 34, SUPER_FANG
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, QUICK_ATTACK
	db 7, QUICK_ATTACK
	db 13, HYPER_FANG
	db 20, DREADNAUGHT
	db 30, PURSUIT
	db 35, SCREECH
	db 40, SUPER_FANG
	db 0 ; no more level-up moves

ShroomishEvosAttacks:
	db EVOLVE_LEVEL, 30, BRELOOM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STUN_SPORE
	db 7, LEECH_SEED
	db 13, POISONPOWDER
	db 20, HEADBUTT
	db 26, GROWTH
	db 34, GIGA_DRAIN
	db 37, SPORE
	db 0 ; no more level-up moves

BreloomEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STUN_SPORE
	db 1, LEECH_SEED
	db 1, POISONPOWDER
	db 24, HEADBUTT
	db 28, GROWTH
	db 36, GIGA_DRAIN
	db 40, RAZOR_LEAF
	db 47, MACH_PUNCH
	db 55, BLOOM_BURST
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 28, ARBOK
	db 0 ; no more evolutions
	db 1, SUBMISSION
	db 1, LEER
	db 9, POISON_STING
	db 15, SLAM
	db 23, GLARE
	db 29, SCREECH
	db 33, CONSTRICT
	db 37, ACID
	db 43, HAZE
	db 50, MEAN_LOOK
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db EVOLVE_LEVEL, 41, SEVIPER
	db 0 ; no more evolutions
	db 1, SUBMISSION
	db 1, LEER
	db 1, POISON_STING
	db 9, POISON_STING
	db 15, NIGHT_SLASH
	db 25, GLARE
	db 33, SCREECH
	db 37, CONSTRICT
	db 43, ACID
	db 51, HAZE
	db 55, MEAN_LOOK
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, GROWL 
	db 8, THUNDER_WAVE
	db 11, QUICK_ATTACK
	db 20, SLAM
	db 26, SPARK
	db 33, AGILITY
	db 41, THUNDERBOLT
	db 50, LIGHT_SCREEN
	db 55, SURF
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 8, THUNDER_WAVE
	db 11, QUICK_ATTACK
	db 20, SLAM
	db 26, SPARK
	db 33, AGILITY
	db 41, THUNDERBOLT
	db 50, LIGHT_SCREEN
	db 55, BATTERY
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 28, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 6, DEFENSE_CURL
	db 11, TACKLE
	db 17, SANDSTORM
	db 23, SLASH
	db 27, ROCK_THROW
	db 30, SWIFT
	db 37, BULLDOZE
	db 45, SANDSTORM
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 11, TACKLE
	db 17, POISON_STING
	db 24, SLASH
	db 27, ROCK_THROW
	db 33, SWIFT
	db 42, BULLDOZE
	db 52, SANDSTORM
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 20, NIDORINA
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 8, SCRATCH
	db 12, RAGE
	db 17, POISON_STING
	db 23, HORN_ATTACK
	db 30, FISSURE
	db 38, FURY_SWIPES
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_LEVEL, 30, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 8, SCRATCH
	db 12, RAGE
	db 19, POISON_STING
	db 27, HORN_ATTACK
	db 36, FISSURE
	db 46, FURY_SWIPES
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCRATCH
	db 35, BODY_SLAM
	db 39, FISSURE
	db 42, FURY_SWIPES
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 20, NIDORINO
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, HORN_ATTACK
	db 12, RAGE
	db 17, POISON_STING
	db 23, FOCUS_ENERGY
	db 30, FURY_ATTACK
	db 38, MUDSLIDE
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_LEVEL, 30, NIDOKING
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, HORN_ATTACK
	db 12, RAGE
	db 19, POISON_STING
	db 27, FOCUS_ENERGY
	db 33, THRASH
	db 40, MUDSLIDE
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HORN_ATTACK
	db 1, TWIST_KICK
	db 1, POISON_STING
	db 35, THRASH
	db 42, MUDSLIDE
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 4, ENCORE
	db 8, SING
	db 13, DOUBLESLAP
	db 19, DISABLE
	db 26, COMET_PUNCH
	db 34, METRONOME
	db 43, MOONLIGHT
	db 53, LIGHT_SCREEN
	db 53, REFLECT
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 4, ENCORE
	db 8, SING
	db 13, DOUBLESLAP
	db 19, DISABLE
	db 26, COMET_PUNCH
	db 37, METRONOME
	db 45, MOONLIGHT
	db 55, LIGHT_SCREEN
	db 58, REFLECT
	db 63, HEAL_BELL
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, GROWL
	db 7, QUICK_ATTACK
	db 13, ROAR
	db 19, CONFUSE_RAY
	db 25, FLAME_WHEEL
	db 31, FLAMETHROWER
	db 37, WILL_O_WISP
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, FLAME_WHEEL
	db 35, FLAMETHROWER
	db 43, WILL_O_WISP
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, SING
	db 4, DEFENSE_CURL
	db 9, POUND
	db 14, DISABLE
	db 19, ROLLOUT
	db 24, DOUBLESLAP
	db 29, REST
	db 34, BODY_SLAM
	db 39, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DISABLE
	db 1, DEFENSE_CURL
	db 1, DOUBLESLAP
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 16, GOLBAT
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 6, PURSUIT
	db 12, THIEF
	db 27, WING_ATTACK
	db 36, MEAN_LOOK
	db 46, HAZE
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_LEVEL, 30, CROBAT
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, LEECH_LIFE
	db 6, QUICK_ATTACK
	db 12, PURSUIT
	db 19, THIEF
	db 30, WING_ATTACK
	db 38, MEAN_LOOK
	db 50, HAZE
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 30, GLOOM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 19, STUN_SPORE
	db 25, HEAL_BELL
	db 33, ACID
	db 37, MOONLIGHT
	db 43, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_LEVEL, 45, VILEPLUME
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SWEET_SCENT
	db 1, POISONPOWDER
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, HEAL_BELL
	db 35, ACID
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, HEAL_BELL
	db 42, MOONLIGHT
	db 48, GROWTH
	db 55, GIGA_DRAIN
	db 68, PETAL_DANCE
	db 0 ; no more level-up moves

RioluEvosAttacks:
	db EVOLVE_LEVEL, 39, LUCARIO
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 7, COUNTER
	db 13, SCREECH
	db 19, KARATE_CHOP
	db 25, TWIST_KICK
	db 31, MEDITATE
	db 35, REVERSAL
	db 38, NASTY_PLOT
	db 55, EXTREMESPEED
	db 0 ; no more level-up moves

LucarioEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, COUNTER
	db 1, SCREECH
	db 22, KARATE_CHOP
	db 29, TWIST_KICK
	db 34, MEDITATE
	db 38, REVERSAL
	db 45, MEGA_KICK
	db 57, EXTREMESPEED
	db 65, CROSS_CHOP
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 24, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 9, LIGHT_SCREEN
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 33, PSYBEAM
	db 36, SLEEP_POWDER
	db 41, PSYCHIC_M
	db 50, QUIVER_DANCE
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 31, GUST
	db 36, PSYBEAM
	db 42, SLEEP_POWDER
	db 52, PSYCHIC_M
	db 60, QUIVER_DANCE
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 24, DUGTRIO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, GROWL
	db 9, MAGNITUDE
	db 17, DIG
	db 25, BULLDOZE
	db 33, SLASH
	db 41, EARTHQUAKE
	db 49, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, SCRATCH
	db 1, GROWL
	db 1, MAGNITUDE
	db 5, GROWL
	db 9, MAGNITUDE
	db 17, DIG
	db 25, BULLDOZE
	db 37, SLASH
	db 49, EARTHQUAKE
	db 61, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 32, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 11, SLASH
	db 20, SWIFT
	db 28, PURSUIT
	db 35, SCREECH
	db 41, FURY_SWIPES
	db 47, NIGHT_SLASH
	db 54, PAY_DAY
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 11, SLASH
	db 20, PAY_DAY
	db 29, PURSUIT
	db 38, SCREECH
	db 46, FURY_SWIPES
	db 53, NIGHT_SLASH
	db 60, PAY_DAY
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 32, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, LEER
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 27, KINESIS
	db 33, NASTY_PLOT
	db 40, FURY_SWIPES
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, DISABLE
	db 1, CONFUSION
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 34, NASTY_PLOT
	db 44, FURY_SWIPES
	db 50, RAIN_DANCE
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 24, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 33, REVERSAL
	db 39, CROSS_CHOP
	db 45, SCREECH
	db 51, THRASH
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 28, RAGE
	db 36, REVERSAL
	db 45, CROSS_CHOP
	db 54, SCREECH
	db 63, THRASH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_LEVEL, 52, ARCANINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, ROAR
	db 9, EMBER
	db 18, LEER
	db 26, TAKE_DOWN
	db 34, INFERNO
	db 42, AGILITY
	db 45, FLAMETHROWER
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROAR
	db 1, LEER
	db 1, TAKE_DOWN
	db 55, EXTREMESPEED
	db 75, ANCIENT_FIRE
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 20, POLIWHIRL
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 7, HYPNOSIS
	db 13, WATER_GUN
	db 19, DOUBLESLAP
	db 25, RAIN_DANCE
	db 31, BODY_SLAM
	db 37, BELLY_DRUM
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_LEVEL, 32, POLITOED
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, HYPNOSIS
	db 1, WATER_GUN
	db 7, HYPNOSIS
	db 13, WATER_GUN
	db 19, DOUBLESLAP
	db 27, RAIN_DANCE
	db 35, BODY_SLAM
	db 43, BELLY_DRUM
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 42, BODY_SLAM
	db 50, DYNAMICPUNCH
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 22, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_LEVEL, 48, ALAKAZAM
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, KINESIS
	db 1, CONFUSION
	db 16, CONFUSION
	db 21, PSYBEAM
	db 26, RECOVER
	db 31, MIRROR_COAT
	db 38, REFLECT
	db 50, PSYCHIC_M
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, KINESIS
	db 18, CONFUSION
	db 21, PSYBEAM
	db 26, RECOVER
	db 31, MIRROR_COAT
	db 38, REFLECT
	db 55, PSYCHIC_M
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, KARATE_CHOP
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 13, SUBMISSION
	db 19, KNEE_STRIKE
	db 25, FORESIGHT
	db 31, MACH_PUNCH
	db 37, CROSS_CHOP
	db 43, BULK_UP
	db 49, SEISMIC_TOSS
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_LEVEL, 45, MACHAMP
	db 0 ; no more evolutions
	db 1, KARATE_CHOP
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 8, FOCUS_ENERGY
	db 15, SUBMISSION
	db 19, KNEE_STRIKE
	db 25, FORESIGHT
	db 34, MACH_PUNCH
	db 43, CROSS_CHOP
	db 52, BULK_UP
	db 61, SEISMIC_TOSS
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, KARATE_CHOP
	db 1, LEER
	db 8, FOCUS_ENERGY
	db 15, SUBMISSION
	db 19, KNEE_STRIKE
	db 25, FORESIGHT
	db 34, MACH_PUNCH
	db 43, CROSS_CHOP
	db 55, BULK_UP
	db 66, SEISMIC_TOSS
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 6, GROWTH
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 23, ACID
	db 30, SWEET_SCENT
	db 37, RAZOR_LEAF
	db 45, SLAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWTH
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 24, ACID
	db 35, SWEET_SCENT
	db 42, RAZOR_LEAF
	db 54, SLAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 36, SWEET_SCENT
	db 63, BLOOM_BURST
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 12, CONSTRICT
	db 19, ACID
	db 25, BUBBLEBEAM
	db 31, POISON_STING
	db 36, BARRIER
	db 43, RAPID_SPIN
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, SUPERSONIC
	db 1, CONSTRICT
	db 12, CONSTRICT
	db 19, ACID
	db 25, BUBBLEBEAM
	db 32, POISON_STING
	db 38, BARRIER
	db 47, RAPID_SPIN
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, PLATE_SHIFT
	db 26, HARDEN
	db 31, ROLLOUT
	db 36, BULLDOZE
	db 41, EXPLOSION
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_LEVEL, 46, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, PLATE_SHIFT
	db 27, ROLLOUT
	db 34, BULLDOZE
	db 41, EXPLOSION
	db 50, AVALANCHE
	db 55, EARTHQUAKE
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 1, MAGNITUDE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, PLATE_SHIFT
	db 27, ROLLOUT
	db 34, BULLDOZE
	db 44, EXPLOSION
	db 53, AVALANCHE
	db 62, EARTHQUAKE
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 26, RAPIDASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, FLAME_WHEEL
	db 13, EMBER
	db 19, STOMP
	db 25, WILL_O_WISP
	db 34, TAKE_DOWN
	db 43, AGILITY
	db 53, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, EMBER
	db 4, GROWL
	db 8, FLAME_WHEEL
	db 13, EMBER
	db 19, STOMP
	db 25, WILL_O_WISP
	db 34, TAKE_DOWN
	db 40, HORN_ATTACK
	db 47, AGILITY
	db 61, FIRE_BLAST
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 43, AMNESIA
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
    db EVOLVE_LEVEL, 50, SLOWKING
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 37, WITHDRAW
	db 46, AMNESIA
	db 54, PSYCHIC_M
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 16, BATTERY
	db 21, THUNDER_WAVE
	db 27, LOCK_ON
	db 33, SWIFT
	db 39, SCREECH
	db 45, POLARITY
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db EVOLVE_LEVEL, 45, MAGNEZONE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 1, SUPERSONIC
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 16, BATTERY
	db 21, THUNDER_WAVE
	db 27, LOCK_ON
	db 35, TRI_ATTACK
	db 43, SCREECH
	db 53, POLARITY
	db 0 ; no more level-up moves

TangrowthEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 4, SLEEP_POWDER
	db 10, SYNTHESIS
	db 13, POISONPOWDER
	db 19, VINE_WHIP
	db 25, DETECT
	db 31, GROWTH
	db 34, STUN_SPORE
	db 42, SLAM
	db 48, BLOOM_BURST
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 26, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 9, PURSUIT
	db 13, FURY_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 33, DRILL_PECK
	db 37, AGILITY
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 1, PURSUIT
	db 1, FURY_ATTACK
	db 9, PURSUIT
	db 13, FURY_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 38, DRILL_PECK
	db 47, AGILITY
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 35, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 5, GROWL
	db 16, WATER_GUN
	db 21, REST
	db 32, TAKE_DOWN
	db 37, ICE_BEAM
	db 48, AURORA_BEAM
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, GROWL
	db 5, GROWL
	db 16, WATER_GUN
	db 21, REST
	db 32, TAKE_DOWN
	db 43, ICE_BEAM
	db 60, AURORA_BEAM
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 29, MUK
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, POUND
	db 5, HARDEN
	db 10, DISABLE
	db 16, SLUDGE
	db 23, SMOG
	db 31, SCREECH
	db 40, ACID
	db 50, SLUDGE_BOMB
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, POUND
	db 1, HARDEN
	db 23, SMOG
	db 31, SCREECH
	db 42, ACID
	db 56, SLUDGE_BOMB
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_LEVEL, 33, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WITHDRAW
	db 9, WATER_GUN
	db 17, PROTECT
	db 25, LEER
	db 32, CLAMP
	db 41, ICE_BEAM
	db 49, ICICLE_SPEAR
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, WITHDRAW
	db 1, SUPERSONIC
	db 1, AURORA_BEAM
	db 1, PROTECT
	db 35, SPIKES
	db 44, ICE_BEAM
	db 53, ICICLE_SPEAR
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 32, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, SCRATCH
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, ECTOPLASM
	db 28, CONFUSE_RAY
	db 33, DREAM_EATER
	db 36, DESTINY_BOND
	db 55, NIGHT_SHADE
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_LEVEL, 54, GENGAR
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, SPITE
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, ECTOPLASM
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 60, NIGHT_SHADE
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, ECTOPLASM
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 68, NIGHT_SHADE
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_LEVEL, 40, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 10, FISSURE
	db 14, ROCK_THROW
	db 23, HARDEN
	db 27, RAGE
	db 36, SANDSTORM
	db 44, SLAM
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 31, POISON_GAS
	db 36, MEDITATE
	db 40, PSYCHIC_M
	db 43, NASTY_PLOT
	db 45, DREAM_EATER
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 1, DISABLE
	db 1, CONFUSION
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 33, POISON_GAS
	db 40, MEDITATE
	db 49, PSYCHIC_M
	db 55, NASTY_PLOT
	db 60, DREAM_EATER
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 32, KINGLER
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, LEER
	db 12, VICEGRIP
	db 16, HARDEN
	db 23, WATER_GUN
	db 27, CLAMP
	db 34, PROTECT
	db 41, CRABHAMMER
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, LEER
	db 1, VICEGRIP
	db 5, LEER
	db 12, VICEGRIP
	db 16, HARDEN
	db 23, STOMP
	db 27, CLAMP
	db 38, PROTECT
	db 44, STOMP
	db 59, CRABHAMMER
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 9, SCREECH
	db 17, BATTERY
	db 23, DEFENSE_CURL
	db 29, ROLLOUT
	db 33, LIGHT_SCREEN
	db 37, SWIFT
	db 39, EXPLOSION
	db 44, SONICBOOM
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 1, SONICBOOM
	db 9, SCREECH
	db 17, BATTERY
	db 23, DEFENSE_CURL
	db 29, ROLLOUT
	db 34, LIGHT_SCREEN
	db 40, SWIFT
	db 44, EXPLOSION
	db 48, SONICBOOM
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HYPNOSIS
	db 7, REFLECT
	db 13, LEECH_SEED
	db 19, CONFUSION
	db 25, STUN_SPORE
	db 31, POISONPOWDER
	db 37, SLEEP_POWDER
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 42, STOMP
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 35, MAROWAK
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, BELLY_DRUM
	db 9, BULLDOZE
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, FISSURE
	db 29, RAGE
	db 33, PETRIFY
	db 37, BONEMERANG
	db 41, TOMBSTONE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, BULLDOZE
	db 1, HEADBUTT
	db 5, BELLY_DRUM
	db 9, BULLDOZE
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, FISSURE
	db 32, RAGE
	db 39, PETRIFY
	db 46, BONEMERANG
	db 53, TOMBSTONE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TWIST_KICK
	db 6, MEDITATE
	db 11, KNEE_STRIKE
	db 21, FOCUS_ENERGY
	db 26, MEDITATE
	db 31, DETECT
	db 36, FORESIGHT
	db 41, REVERSAL
	db 46, LOW_KICK
	db 51, HI_JUMP_KICK
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, JAB
	db 7, AGILITY
	db 13, PURSUIT
	db 26, THUNDERPUNCH
	db 28, ICE_PUNCH
	db 30, FIRE_PUNCH
	db 38, JAB
	db 45, COUNTER
	db 50, DETECT
	db 59, CROSS_PUNCH
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 7, LEER
	db 13, DEFENSE_CURL
	db 19, STOMP
	db 25, BODY_SLAM
	db 31, DISABLE
	db 37, SLAM
	db 43, SCREECH
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 33, WEEZING
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 9, SMOG
	db 17, ACID
	db 21, SLUDGE
	db 25, CURSE
	db 33, HAZE
	db 41, EXPLOSION
	db 45, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 1, SMOG
	db 9, SMOG
	db 17, ACID
	db 21, SLUDGE
	db 25, CURSE
	db 36, HAZE
	db 44, EXPLOSION
	db 51, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 50, RHYDON
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, LEER
	db 13, STOMP
	db 19, ROCK_THROW
	db 31, BULK_UP
	db 37, JAGGED_EDGE
	db 49, TAKE_DOWN
	
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db EVOLVE_LEVEL, 75, RHYPERIOR
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, LEER
	db 13, STOMP
	db 19, FURY_ATTACK
	db 31, BULK_UP
	db 37, JAGGED_EDGE
	db 54, TAKE_DOWN
	db 61, EARTHQUAKE
	db 78, HORN_DRILL
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_LEVEL, 50, BLISSEY
	db 0 ; no more evolutions
	db 1, POUND
	db 5, GROWL
	db 13, SOFTBOILED
	db 17, DOUBLESLAP
	db 23, BIDE
	db 29, SING
	db 35, CHARM
	db 41, DEFENSE_CURL
	db 49, LIGHT_SCREEN
	db 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db EVOLVE_LEVEL, 40, TANGROWTH
	db 1, CONSTRICT
	db 4, SLEEP_POWDER
	db 10, SYNTHESIS
	db 13, POISONPOWDER
	db 19, VINE_WHIP
	db 25, DETECT
	db 31, GROWTH
	db 34, STUN_SPORE
	db 42, SLAM
	db 46, BLOOM_BURST
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 7, LEER
	db 13, REST
	db 19, FOCUS_ENERGY
	db 26, HEADBUTT
	db 33, RAGE
	db 39, BODY_SLAM
	db 47, REVERSAL
	db 55, COMET_PUNCH
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 8, LEER
	db 15, TACKLE
	db 22, WATER_GUN
	db 29, TWISTER
	db 36, AGILITY
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_LEVEL, 48, KINGDRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, LEER
	db 1, WATER_GUN
	db 8, TACKLE
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 40, AGILITY
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 24, SEAKING
	db 0 ; no more evolutions
	db 1, PECK
	db 1, SUPERSONIC
	db 10, WATER_GUN
	db 15, HORN_ATTACK
	db 29, FURY_ATTACK
	db 38, WATERFALL
	db 43, MIST
	db 52, AGILITY
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 24, WATER_GUN
	db 29, FURY_ATTACK
	db 41, WATERFALL
	db 49, MIST
	db 61, AGILITY
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 7, BUBBLE
	db 13, RAPID_SPIN
	db 19, RECOVER
	db 25, BUBBLEBEAM
	db 31, SWIFT
	db 37, CONFUSION
	db 42, PSYCHIC_M
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, BUBBLEBEAM
	db 1, PSYCHIC_M
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRIER
	db 6, CONFUSION
	db 11, SUBSTITUTE
	db 16, MEDITATE
	db 21, DOUBLESLAP
	db 26, LIGHT_SCREEN
	db 26, REFLECT
	db 31, ENCORE
	db 36, KINESIS
	db 41, BATON_PASS
	db 46, PSYCHIC_M
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_LEVEL, 57, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, RAZOR_WIND
	db 24, AGILITY
	db 30, WING_ATTACK
	db 36, SLASH
	db 42, SWORDS_DANCE
	db 48, JAGGED_EDGE
	db 0 ; no more level-up moves

MamoswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, POWDER_SNOW
	db 1, BATTERY
	db 28, TAKE_DOWN
	db 33, FURY_ATTACK
	db 42, AVALANCHE
	db 56, FISSURE
	db 61, ICICLE_SPEAR
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, ELECTIVIRE
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 9, THUNDERSHOCK
	db 17, LIGHT_SCREEN
	db 25, THUNDERPUNCH
	db 36, AGILITY
	db 42, THUNDER
	db 50, MACH_PUNCH
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, MAGMORTAR
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 7, SMOG
	db 13, POISON_GAS
	db 19, INFERNO
	db 25, FIRE_PUNCH
	db 33, SUNNY_DAY
	db 42, FIRE_BLAST
	db 50, LAVA_PLUME

	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 13, STOMP
	db 22, SUBMISSION
	db 29, BULK_UP
	db 35, BEAT_UP
	db 43, BUG_BITE
	db 50, GUILLOTINE
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, AGILITY
	db 8, RAGE
	db 15, HORN_ATTACK
	db 24, BODY_SLAM
	db 27, PURSUIT
	db 36, REST
	db 47, THRASH
	db 58, TAKE_DOWN
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 35, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 1, SLAM
	db 5, ROAR
	db 30, THRASH
	db 40, HYDRO_PUMP
	db 45, CRUNCH
	db 55, DRAGON_RAGE
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, GROWL
	db 1, SING
	db 8, MIST
	db 15, BODY_SLAM
	db 22, CONFUSE_RAY
	db 29, PERISH_SONG
	db 36, ICE_BEAM
	db 43, RAIN_DANCE
	db 57, AURORA_BEAM
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, RAGE
	db 16, GROWL
	db 23, QUICK_ATTACK
	db 30, AGILITY
	db 36, BATON_PASS
	db 42, TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, REFLECT
	db 16, BUBBLE
	db 23, QUICK_ATTACK
	db 30, BUBBLEBEAM
	db 36, MIST
	db 42, HAZE
	db 47, ACID_ARMOR
	db 63, SCALD
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, STOMP
	db 19, THUNDERSHOCK
	db 25, QUICK_ATTACK
	db 33, SPARK
	db 39, EXTREMESPEED
	db 46, THUNDER_WAVE
	db 55, AGILITY
	db 63, PIN_MISSILE
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, STOMP
	db 19, EMBER
	db 25, QUICK_ATTACK
	db 33, NIGHT_SLASH
	db 39, WILL_O_WISP
	db 46, SMOG
	db 55, TAKE_DOWN
	db 63, FLAMETHROWER
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_LEVEL, 31, PORYGON2
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, SHARPEN
	db 32, LOCK_ON
	db 36, TRI_ATTACK
	db 44, HYPER_BEAM
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 35, OMASTAR
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 13, ROCK_THROW
	db 19, WATER_GUN
	db 31, SPIKES
	db 37, PROTECT
	db 49, ANCIENTPOWER
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 13, ROCK_THROW
	db 19, WATER_GUN
	db 31, SPIKES
	db 37, PROTECT
	db 40, BULK_UP
	db 54, ANCIENTPOWER
	db 65, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 35, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 10, HAZE
	db 19, LEER
	db 28, MIST
	db 37, DOUBLE_EDGE
	db 46, GIGA_DRAIN
	db 55, ANCIENTPOWER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 10, HAZE
	db 19, LEER
	db 28, MIST
	db 37, DOUBLE_EDGE
	db 40, SLASH
	db 51, GIGA_DRAIN
	db 65, ANCIENTPOWER
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 8, AGILITY
	db 15, NIGHT_SLASH
	db 22, SUPERSONIC
	db 29, ANCIENTPOWER
	db 36, DREADNAUGHT
	db 43, TAKE_DOWN
	db 50, HYPER_BEAM
	db 57, PLATE_SHIFT
	db 66, ROCK_SLIDE
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, AMNESIA
	db 15, DEFENSE_CURL
	db 22, BELLY_DRUM
	db 40, HEADBUTT
	db 46, SNORE
	db 50, REST
	db 54, BODY_SLAM
	db 57, ROLLOUT
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 50, GUST
	db 50, POWDER_SNOW
	db 50, MIST
	db 50, AGILITY
	db 65, REFLECT
	db 75, ICE_BEAM
	db 85, RAZOR_WIND
	db 95, SHEER_COLD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 50, THUNDERSHOCK
	db 50, AGILITY
	db 50, DETECT
	db 50, DRILL_PECK
	db 65, THUNDER_WAVE
	db 75, THUNDER
	db 85, RAZOR_WIND
	db 95, STORMTRANCE
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 50, WING_ATTACK
	db 50, EMBER
	db 50, WILL_O_WISP
	db 50, AGILITY
	db 65, FLAME_WHEEL
	db 75, FLAMETHROWER
	db 85, RAZOR_WIND
	db 95, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, THUNDER_WAVE
	db 15, MIST
	db 29, SLAM
	db 36, AGILITY
	db 43, SAFEGUARD
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 62, DRAGONITE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, TWISTER
	db 8, THUNDER_WAVE
	db 29, SLAM
	db 38, AGILITY
	db 47, SAFEGUARD
	db 56, ICY_WIND
	db 65, OUTRAGE
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, SUBMISSION
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 29, SLAM
	db 38, AGILITY
	db 47, SAFEGUARD
	db 55, WING_ATTACK
	db 65, TWISTER
	db 75, OUTRAGE
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 75, PSYCHIC_M
	db 75, DISABLE
	db 75, SUBSTITUTE
	db 75, SWIFT
	db 80, SUBMISSION
	db 85, AMNESIA
	db 89, RECOVER
	db 93, NOVA_BOMB
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 10, TRANSFORM
	db 20, KINESIS
	db 30, METRONOME
	db 40, PSYCHIC_M
	db 50, ANCIENTPOWER
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 20, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, RAZOR_LEAF
	db 12, REFLECT
	db 15, POISONPOWDER
	db 22, SYNTHESIS
	db 29, BODY_SLAM
	db 36, LIGHT_SCREEN
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 40, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 8, RAZOR_LEAF
	db 12, REFLECT
	db 15, POISONPOWDER
	db 23, SYNTHESIS
	db 31, BODY_SLAM
	db 39, LIGHT_SCREEN
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 8, RAZOR_LEAF
	db 12, REFLECT
	db 15, POISONPOWDER
	db 23, SYNTHESIS
	db 31, BODY_SLAM
	db 41, LIGHT_SCREEN
	db 61, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 20, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, EMBER
	db 13, QUICK_ATTACK
	db 18, INFERNO
	db 25, FLAME_WHEEL
	db 38, SWIFT
	db 46, FLAMETHROWER
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 40, TYPHLOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 12, EMBER
	db 19, INFERNO
	db 21, QUICK_ATTACK
	db 31, FLAME_WHEEL
	db 42, SWIFT
	db 54, FLAMETHROWER
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, EMBER
	db 21, QUICK_ATTACK
	db 31, FLAME_WHEEL
	db 45, SWIFT
	db 60, FLAMETHROWER
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 20, CROCONAW
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 7, RAGE
	db 13, WATER_GUN
	db 20, NIGHT_SLASH
	db 27, BODY_SLAM
	db 35, SLASH
	db 43, SCREECH
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 40, FERALIGATR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 7, RAGE
	db 13, WATER_GUN
	db 21, NIGHT_SLASH
	db 28, BODY_SLAM
	db 37, SLASH
	db 45, SCREECH
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 1, WATER_GUN
	db 7, RAGE
	db 13, WATER_GUN
	db 21, NIGHT_SLASH
	db 28, BODY_SLAM
	db 38, SLASH
	db 47, SCREECH
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 20, FURRET
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, DEFENSE_CURL
	db 11, QUICK_ATTACK
	db 17, FURY_SWIPES
	db 25, SLAM
	db 33, REST
	db 41, AMNESIA
	db 48, EXTREMESPEED
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, QUICK_ATTACK
	db 5, DEFENSE_CURL
	db 11, QUICK_ATTACK
	db 18, FURY_SWIPES
	db 28, SLAM
	db 38, REST
	db 48, AMNESIA
	db 55, EXTREMESPEED
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 27, NOCTOWL
	db 0 ; no more evolutions
	db 1, GUST
	db 1, GROWL
	db 6, FORESIGHT
	db 11, SPITE
	db 16, HYPNOSIS
	db 22, REFLECT
	db 28, TWISTER
	db 34, RECOVER
	db 48, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 6, FORESIGHT
	db 11, SPITE
	db 17, HYPNOSIS
	db 25, REFLECT
	db 33, TWISTER
	db 41, RECOVER
	db 57, FUTURE_SIGHT
	db 0 ; no more level-up moves

DrilburEvosAttacks:
	db EVOLVE_LEVEL, 34, EXCADRILL
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 8, LEER
	db 15, BULLDOZE
	db 22, HEADBUTT
	db 29, FISSURE
	db 36, NIGHT_SLASH
	db 43, AGILITY
	db 50, STALACTITE
	db 57, DOUBLE_EDGE
	db 66, EARTHQUAKE
	db 0 ; no more level-up moves

ExcadrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 8, LEER
	db 15, BULLDOZE
	db 24, HEADBUTT
	db 31, FISSURE
	db 37, NIGHT_SLASH
	db 45, AGILITY
	db 53, STALACTITE
	db 59, DOUBLE_EDGE
	db 67, EARTHQUAKE
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 24, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 11, CONSTRICT
	db 17, POISONPOWDER
	db 23, LEECH_LIFE
	db 30, FURY_SWIPES
	db 37, SPIDER_WEB
	db 45, AGILITY
	db 53, BUG_BITE
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, CONSTRICT
	db 11, CONSTRICT
	db 17, POISONPOWDER
	db 25, LEECH_LIFE
	db 34, FURY_SWIPES
	db 43, SPIDER_WEB
	db 53, AGILITY
	db 63, BUG_BITE
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, LEECH_LIFE
	db 1, SUPERSONIC
	db 6, SUPERSONIC
	db 12, NIGHT_SLASH
	db 19, CONFUSE_RAY
	db 32, WING_ATTACK
	db 42, MEAN_LOOK
	db 55, HAZE
	db 62, EXTREMESPEED
	db 0 ; no more level-up moves

HonchkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 11, PURSUIT
	db 16, HAZE
	db 26, PAIN_SPLIT
	db 31, WING_ATTACK
	db 41, MEAN_LOOK
	db 47, DRILL_PECK
	db 55, REFLECT
	db 0 ; no more level-up moves

MismagiusEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PSYWAVE
	db 6, SPITE
	db 12, PETRIFY
	db 19, MEAN_LOOK
	db 27, PSYBEAM
	db 36, PAIN_SPLIT
	db 46, PERISH_SONG
	db 55, NASTY_PLOT
	db 64, SHADOW_BALL
	db 0 ; no more level-up moves

LampentEvosAttacks:
	db EVOLVE_LEVEL, 44, CHANDELURE
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, SMOG
	db 14, CONFUSE_RAY
	db 20, PETRIFY
	db 27, WILL_O_WISP
	db 35, CURSE
	db 41, INFERNO
	db 48, SHADOW_BALL
	db 58, FIRE_BLAST
	db 0 ; no more level-up moves

WeavileEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, QUICK_ATTACK
	db 17, SCREECH
	db 25, SWIFT
	db 33, FURY_SWIPES
	db 41, AGILITY
	db 49, NIGHT_SLASH
	db 57, BEAT_UP
	db 65, ICICLE_SPEAR
	db 77, PURSUIT
	db 0 ; no more level-up moves

LitwickEvosAttacks:
	db EVOLVE_LEVEL, 32, LAMPENT
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, SMOG
	db 12, CONFUSE_RAY
	db 19, PETRIFY
	db 26, WILL_O_WISP
	db 33, CURSE
	db 39, INFERNO
	db 46, SHADOW_BALL
	db 57, FIRE_BLAST
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 18, DISABLE
	db 25, ENCORE
	db 38, DOUBLE_EDGE
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db EVOLVE_LEVEL, 43, TOGEKISS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 18, AGILITY
	db 25, ENCORE
	db 38, DOUBLE_EDGE
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, GUST
	db 1, LEER
	db 10, KINESIS
	db 20, TELEPORT
	db 30, FORESIGHT
	db 40, CONFUSE_RAY
	db 50, PSYCHIC_M
	db 58, RAZOR_WIND
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, LEER
	db 20, TELEPORT
	db 35, FORESIGHT
	db 43, CONFUSE_RAY
	db 50, PSYCHIC_M
	db 58, RAZOR_WIND
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 19, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 9, THUNDERSHOCK
	db 16, THUNDER_WAVE
	db 23, COTTON_SPORE
	db 28, BATTERY
	db 30, LIGHT_SCREEN
	db 37, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 35, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 9, BATTERY
	db 18, THUNDER_WAVE
	db 27, COTTON_SPORE
	db 36, LIGHT_SCREEN
	db 45, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 9, BATTERY
	db 18, THUNDER_WAVE
	db 27, COTTON_SPORE
	db 30, THUNDERPUNCH
	db 42, LIGHT_SCREEN
	db 57, THUNDER
	db 0 ; no more level-up moves

FroslassEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICY_WIND
	db 1, SING
	db 9, SCREECH
	db 17, CONFUSE_RAY
	db 22, ECTOPLASM
	db 27, HAZE
	db 33, STALACTITE
	db 37, DISABLE
	db 44, PETRIFY
	db 52, ICE_BEAM
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 20, AZUMARILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, DEFENSE_CURL
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 21, BUBBLEBEAM
	db 28, DOUBLE_EDGE
	db 36, RAIN_DANCE
	db 44, BELLY_DRUM
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, WATER_GUN
	db 3, DEFENSE_CURL
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 25, BUBBLEBEAM
	db 36, DOUBLE_EDGE
	db 48, RAIN_DANCE
	db 53, BELLY_DRUM
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, MIMIC
	db 19, RAZOR_LEAF
	db 28, RAIN_DANCE
	db 37, JAGGED_EDGE
	db 46, ROCK_SLIDE
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, PERISH_SONG
	db 35, PERISH_SONG
	db 40, RAIN_DANCE
	db 51, SWAGGER
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, TACKLE
	db 10, SYNTHESIS
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 20, LEECH_SEED
	db 25, COTTON_SPORE
	db 30, BLOOM_BURST
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, SYNTHESIS
	db 1, TACKLE
	db 5, SYNTHESIS
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 22, LEECH_SEED
	db 29, COTTON_SPORE
	db 36, BLOOM_BURST
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, SYNTHESIS
	db 1, TACKLE
	db 5, SYNTHESIS
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 22, LEECH_SEED
	db 33, COTTON_SPORE
	db 44, BLOOM_BURST
	db 51, QUIVER_DANCE
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DOUBLESLAP
	db 6, FURY_ATTACK
	db 12, BATON_PASS
	db 19, FURY_SWIPES
	db 27, SWIFT
	db 36, SCREECH
	db 46, AGILITY
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_LEVEL, 32, SUNFLORA
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 4, GROWTH
	db 10, RAZOR_LEAF
	db 19, SUNNY_DAY
	db 31, SYNTHESIS
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, SUNNY_DAY
	db 1, LEECH_SEED
	db 1, RAZOR_LEAF
	db 40, FIRE_BLAST
	db 40, SOLARBEAM
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db EVOLVE_LEVEL, 32, YANMEGA
	db 1, TACKLE
	db 1, FORESIGHT
	db 7, QUICK_ATTACK
	db 13, SCREECH
	db 19, LEECH_LIFE
	db 25, DETECT
	db 31, AGILITY
	db 37, RAZOR_WIND
	db 43, BATON_PASS
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 26, QUAGSIRE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TACKLE
	db 11, SLAM
	db 21, AMNESIA
	db 31, EARTHQUAKE
	db 41, RAIN_DANCE
	db 51, MIST
	db 51, HAZE
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TACKLE
	db 11, SLAM
	db 23, AMNESIA
	db 35, EARTHQUAKE
	db 47, RAIN_DANCE
	db 59, MIST
	db 59, HAZE
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, AGILITY
	db 16, CONFUSION
	db 23, QUICK_ATTACK
	db 30, SWIFT
	db 36, PSYBEAM
	db 42, NASTY_PLOT
	db 47, PSYCHIC_M
	db 52, MORNING_SUN
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, AGILITY
	db 16, PURSUIT
	db 23, QUICK_ATTACK
	db 30, CONFUSE_RAY
	db 36, PAIN_SPLIT
	db 42, MEAN_LOOK
	db 47, NOVA_BOMB
	db 52, MOONLIGHT
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db EVOLVE_LEVEL, 33, HONCHKROW
	db 0 ; no more evolutions
	db 1, PECK
	db 11, PURSUIT
	db 16, HAZE
	db 26, PAIN_SPLIT
	db 31, WING_ATTACK
	db 41, MEAN_LOOK
	db 47, TWISTER
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 43, SWAGGER
	db 55, PSYCHIC_M
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db EVOLVE_LEVEL, 30, MISMAGIUS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PSYWAVE
	db 6, SPITE
	db 12, PETRIFY
	db 19, MEAN_LOOK
	db 27, PSYBEAM
	db 36, PAIN_SPLIT
	db 46, PERISH_SONG
	db 50, NASTY_PLOT
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, DESTINY_BOND
	db 1, SPITE
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, CONFUSION
	db 1, STOMP
	db 7, CONFUSION
	db 13, STOMP
	db 20, AGILITY
	db 30, BATON_PASS
	db 41, PSYBEAM
	db 54, CRUNCH
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 8, LEECH_SEED
	db 15, TAKE_DOWN
	db 22, RAPID_SPIN
	db 29, BIDE
	db 36, EXPLOSION
	db 43, SPIKES
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 8, LEECH_SEED
	db 15, TAKE_DOWN
	db 22, RAPID_SPIN
	db 29, BIDE
	db 39, EXPLOSION
	db 49, SPIKES
	db 59, DOUBLE_EDGE
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 5, DEFENSE_CURL
	db 13, GLARE
	db 18, SPITE
	db 26, PURSUIT
	db 30, SCREECH
	db 38, TAKE_DOWN
	db 44, FISSURE
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db EVOLVE_LEVEL, 37, GLISCOR
	db 1, POISON_STING
	db 6, TACKLE
	db 13, HARDEN
	db 20, QUICK_ATTACK
	db 28, MIST
	db 36, SLASH
	db 44, SCREECH
	db 52, EARTHQUAKE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 10, POLARITY
	db 14, ROCK_THROW
	db 23, HARDEN
	db 27, RAGE
	db 36, SANDSTORM
	db 42, SLAM
	db 56, SLAG_SALVO
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 26, GRANBULL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, CHARM
	db 13, SLAM
	db 19, LICK
	db 26, ROAR
	db 34, RAGE
	db 43, TAKE_DOWN
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, CHARM
	db 13, SLAM
	db 19, LICK
	db 28, CRUNCH
	db 38, RAGE
	db 51, TAKE_DOWN
	db 0 ; no more level-up moves

ChandelureEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, SMOG
	db 15, CONFUSE_RAY
	db 22, PETRIFY
	db 29, WILL_O_WISP
	db 37, CURSE
	db 43, INFERNO
	db 50, SHADOW_BALL
	db 61, FIRE_BLAST
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 24, AGILITY
	db 30, PURSUIT
	db 36, BUG_BITE
	db 42, SWORDS_DANCE
	db 65, BULLET_PUNCH
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 14, ENCORE
	db 28, BIDE
	db 37, REST
	db 45, ROCK_SLIDE
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, HORN_ATTACK
	db 12, HARDEN
	db 19, FURY_ATTACK
	db 27, COUNTER
	db 35, TAKE_DOWN
	db 40, MACH_PUNCH
	db 44, REVERSAL
	db 60, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db EVOLVE_LEVEL, 55, WEAVILE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, QUICK_ATTACK
	db 17, SCREECH
	db 25, SWIFT
	db 33, FURY_SWIPES
	db 41, AGILITY
	db 49, NIGHT_SLASH
	db 57, BEAT_UP
	db 65, ICICLE_SPEAR
	db 77, PURSUIT
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 34, URSARING
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 8, LICK
	db 15, FURY_SWIPES
	db 22, BODY_SLAM
	db 29, REST
	db 36, SLASH
	db 43, SNORE
	db 50, THRASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 1, FURY_SWIPES
	db 8, LICK
	db 15, FURY_SWIPES
	db 22, BODY_SLAM
	db 29, REST
	db 39, SLASH
	db 49, SNORE
	db 59, THRASH
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGCARGO
	db 0 ; no more evolutions
	db 1, SMOG
	db 8, EMBER
	db 15, ROCK_THROW
	db 22, HARDEN
	db 29, AMNESIA
	db 36, FLAMETHROWER
	db 43, ROCK_SLIDE
	db 50, LAVA_PLUME
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, EMBER
	db 1, ROCK_THROW
	db 8, EMBER
	db 15, ROCK_THROW
	db 22, HARDEN
	db 29, AMNESIA
	db 36, FLAMETHROWER
	db 48, ROCK_SLIDE
	db 60, LAVA_PLUME
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 29, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 10, POWDER_SNOW
	db 19, BATTERY
	db 28, TAKE_DOWN
	db 37, AVALANCHE
	db 46, BLIZZARD
	db 55, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db EVOLVE_LEVEL, 44, MAMOSWINE
	db 1, HORN_ATTACK
	db 1, POWDER_SNOW
	db 1, BATTERY
	db 28, TAKE_DOWN
	db 33, FURY_ATTACK
	db 42, AVALANCHE
	db 56, FISSURE
	db 61, ICICLE_SPEAR
	db 0 ; no more level-up moves

GliscorEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, TACKLE
	db 13, HARDEN
	db 20, QUICK_ATTACK
	db 28, MIST
	db 36, SLASH
	db 44, SCREECH
	db 52, EARTHQUAKE
	db 0 ; no more level-up moves

TogekissEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 18, AGILITY
	db 25, ENCORE
	db 38, DOUBLE_EDGE
	db 45, RAZOR_WIND
	db 0 ; no more level-up moves

ElectivireEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERPUNCH
	db 1, LIGHT_SCREEN
	db 1, AGILITY
	db 50, MACH_PUNCH
	db 0 ; no more level-up moves

MagnezoneEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 1, SUPERSONIC
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 16, BATTERY
	db 21, THUNDER_WAVE
	db 27, LOCK_ON
	db 35, TRI_ATTACK
	db 43, SCREECH
	db 53, POLARITY
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, BUBBLE
	db 10, SUPERSONIC
	db 18, BUBBLEBEAM
	db 25, TAKE_DOWN
	db 32, AGILITY
	db 40, WING_ATTACK
	db 49, CONFUSE_RAY
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 13, DETECT
	db 19, SPIKES
	db 25, WING_ATTACK
	db 37, WHIRLWIND
	db 55, STEEL_WING
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 34, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, ROAR
	db 13, SMOG
	db 20, NIGHT_SLASH
	db 27, INFERNO
	db 35, FLAMETHROWER
	db 43, CRUNCH
	db 49, NASTY_PLOT
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, ROAR
	db 13, SMOG
	db 20, NIGHT_SLASH
	db 30, INFERNO
	db 41, FLAMETHROWER
	db 52, CRUNCH
	db 62, NASTY_PLOT
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, ANCIENT_FIRE
	db 1, LEER
	db 1, WATER_GUN
	db 8, ANCIENT_FIRE
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 40, AGILITY
	db 51, HYDRO_PUMP
	db 57, DRAGONBREATH
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 35, DONPHAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 9, DEFENSE_CURL
	db 17, BULLDOZE
	db 25, TAKE_DOWN
	db 33, ROLLOUT
	db 41, BATTERY
	db 49, EARTHQUAKE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, GROWL
	db 9, DEFENSE_CURL
	db 17, ICICLE_SPEAR
	db 25, BULLDOZE
	db 33, ROLLOUT
	db 44, RAPID_SPIN
	db 53, EARTHQUAKE
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db EVOLVE_LEVEL, 52, PORYGON_Z
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, DEFENSE_CURL
	db 32, LOCK_ON
	db 40, TRI_ATTACK
	db 51, HYPER_BEAM
	db 0 ; no more level-up moves

AbsolEvosAttacks:
	db 0 ; no more evolutions
	db 1, PERISH_SONG
	db 8, SCRATCH
	db 15, PAIN_SPLIT
	db 23, RAZOR_WIND
	db 31, PURSUIT
	db 40, NIGHT_SLASH
	db 49, BEAT_UP
	db 55, SWORDS_DANCE
	db 63, MOONLIGHT
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db 0 ; no more evolutions
	db 1, KARATE_CHOP
	db 0 ; no more level-up moves

SeviperEvosAttacks:
	db 0 ; no more evolutions
	db 1, SUBMISSION
	db 1, LEER
	db 1, POISON_STING
	db 9, POISON_STING
	db 15, NIGHT_SLASH
	db 25, GLARE
	db 33, SCREECH
	db 37, CONSTRICT
	db 43, ACID
	db 51, HAZE
	db 55, MEAN_LOOK
	db 62, CRUNCH
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 7, QUICK_ATTACK
	db 13, SCREECH
	db 19, LEECH_LIFE
	db 25, DETECT
	db 31, AGILITY
	db 37, RAZOR_WIND
	db 43, BATON_PASS
	db 0 ; no more level-up moves

PorygonZEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, DEFENSE_CURL
	db 32, LOCK_ON
	db 45, TRI_ATTACK
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

MagmortarEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 1, SMOG
	db 1, FIRE_PUNCH
	db 7, LEER
	db 1, SMOG
	db 1, FIRE_PUNCH
	db 1, POISON_GAS
	db 1, MUDSLIDE
	db 1, FIRE_BLAST
	db 50, LAVA_PLUME
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, DEFENSE_CURL
	db 13, STOMP
	db 19, MILK_DRINK
	db 26, BIDE
	db 34, ROLLOUT
	db 43, BODY_SLAM
	db 53, HEAL_BELL
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 4, GROWL
	db 10, SOFTBOILED
	db 13, DOUBLESLAP
	db 23, SING
	db 33, DEFENSE_CURL
	db 40, LIGHT_SCREEN
	db 57, DOUBLE_EDGE
	db 65, HEAL_BELL
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, NIGHT_SLASH
	db 1, LEER
	db 11, THUNDERSHOCK
	db 21, BATTERY
	db 31, QUICK_ATTACK
	db 41, SPARK
	db 51, REFLECT
	db 61, CRUNCH
	db 71, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, NIGHT_SLASH
	db 1, LEER
	db 11, EMBER
	db 21, ROAR
	db 31, WILL_O_WISP
	db 41, STOMP
	db 51, FLAMETHROWER
	db 61, SWAGGER
	db 71, FIRE_BLAST
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, NIGHT_SLASH
	db 1, LEER
	db 11, BUBBLEBEAM
	db 21, RAIN_DANCE
	db 31, REST
	db 41, ICE_BEAM
	db 51, MIST
	db 61, MIRROR_COAT
	db 71, HYDRO_PUMP
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 36, PUPITAR
	db 0 ; no more evolutions
	db 1, NIGHT_SLASH
	db 1, LEER
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 36, BULK_UP
	db 43, CRUNCH
	db 50, EARTHQUAKE
	db 57, DREADNAUGHT
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 62, TYRANITAR
	db 0 ; no more evolutions
	db 1, NIGHT_SLASH
	db 1, LEER
	db 1, SANDSTORM
	db 1, SCREECH
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 38, BULK_UP
	db 47, CRUNCH
	db 64, EARTHQUAKE
	db 72, DREADNAUGHT
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, NIGHT_SLASH
	db 1, LEER
	db 1, SANDSTORM
	db 1, SCREECH
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 38, BULK_UP
	db 47, CRUNCH
	db 64, EARTHQUAKE
	db 75, DREADNAUGHT
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYCHIC_M
	db 22, GUST
	db 33, RECOVER
	db 44, HYDRO_PUMP
	db 55, RAIN_DANCE
	db 66, TWISTER
	db 77, WHIRLWIND
	db 88, ANCIENTPOWER
	db 99, AEROBLAST
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAMETHROWER
	db 22, GUST
	db 33, RECOVER
	db 44, FIRE_BLAST
	db 55, SUNNY_DAY
	db 66, DRILL_PECK
	db 77, SKY_ATTACK
	db 88, ANCIENTPOWER
	db 99, SACRED_FIRE
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, RECOVER
	db 1, HEAL_BELL
	db 10, SAFEGUARD
	db 20, ANCIENTPOWER
	db 30, FUTURE_SIGHT
	db 40, BATON_PASS
	db 50, PERISH_SONG
	db 60, PSYCHIC_M
	db 70, BLOOM_BURST
	db 0 ; no more level-up moves

RhyperiorEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, LEER
	db 13, STOMP
	db 19, FURY_ATTACK
	db 31, BULK_UP
	db 37, JAGGED_EDGE
	db 54, TAKE_DOWN
	db 61, EARTHQUAKE
	db 85, HORN_DRILL
	db 0 ; no more level-up moves
	