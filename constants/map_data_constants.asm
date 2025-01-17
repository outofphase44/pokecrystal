GROUP_N_A  EQU -1
MAP_N_A    EQU -1
GROUP_NONE EQU 0
MAP_NONE   EQU 0

; map struct members (see data/maps/maps.asm)
	const_def
	const MAP_MAPATTRIBUTES_BANK ; 0
	const MAP_TILESET            ; 1
	const MAP_ENVIRONMENT        ; 2
	const MAP_MAPATTRIBUTES      ; 3
	const MAP_MAPATTRIBUTES_HI   ; 4
	const MAP_LOCATION           ; 5
	const MAP_MUSIC              ; 6
	const MAP_PALETTE            ; 7
	const MAP_FISHGROUP          ; 8

; map environments (wEnvironment)
	const_def 1
	const TOWN
	const ROUTE
	const INDOOR
	const CAVE
	const ENVIRONMENT_5
	const GATE
	const DUNGEON

; map palettes (wEnvironment)
	const_def
	const PALETTE_AUTO
	const PALETTE_DAY
	const PALETTE_NITE
	const PALETTE_MORN
	const PALETTE_DARK

; FishGroups indexes (see data/wild/fish.asm)
	const_def
	const FISHGROUP_NONE
	const FISHGROUP_SHORE
	const FISHGROUP_OCEAN
	const FISHGROUP_LAKE
	const FISHGROUP_POND
	const FISHGROUP_DRATINI
	const FISHGROUP_POLIWHIRL_SWARM
	const FISHGROUP_GOLDEEN_SWARM
	const FISHGROUP_GYARADOS
	const FISHGROUP_DRATINI_2
	const FISHGROUP_WHIRL_ISLANDS
	const FISHGROUP_POLIWHIRL
	const FISHGROUP_GOLDEEN
	const FISHGROUP_POLIWHIRL_NO_SWARM

; connection directions (see data/maps/data.asm)
	const_def
	const EAST_F
	const WEST_F
	const SOUTH_F
	const NORTH_F

; wMapConnections
	const_def
	shift_const EAST
	shift_const WEST
	shift_const SOUTH
	shift_const NORTH

; SpawnPoints indexes (see data/maps/spawn_points.asm)
const_value = -1
	const SPAWN_N_A
	const SPAWN_HOME
	const SPAWN_DEBUG
; kanto
	const SPAWN_PALLET
	const SPAWN_VIRIDIAN
	const SPAWN_PEWTER
	const SPAWN_CERULEAN
	const SPAWN_ROCK_TUNNEL
	const SPAWN_VERMILION
	const SPAWN_LAVENDER
	const SPAWN_SAFFRON
	const SPAWN_CELADON
	const SPAWN_FUCHSIA
	const SPAWN_CINNABAR
	const SPAWN_INDIGO
; johto
	const SPAWN_NEW_BARK
	const SPAWN_CHERRYGROVE
	const SPAWN_VIOLET
	const SPAWN_UNION_CAVE
	const SPAWN_AZALEA
	const SPAWN_CIANWOOD
	const SPAWN_GOLDENROD
	const SPAWN_OLIVINE
	const SPAWN_ECRUTEAK
	const SPAWN_MAHOGANY
	const SPAWN_LAKE_OF_RAGE
	const SPAWN_BLACKTHORN
	const SPAWN_MT_SILVER
	const SPAWN_FAST_SHIP
NUM_SPAWNS EQU const_value

; Flypoints indexes (see data/maps/flypoints.asm)
	const_def
; johto
	const FLY_NEW_BARK
	const FLY_CHERRYGROVE
	const FLY_VIOLET
	const FLY_AZALEA
	const FLY_GOLDENROD
	const FLY_ECRUTEAK
	const FLY_OLIVINE
	const FLY_CIANWOOD
	const FLY_MAHOGANY
	const FLY_LAKE_OF_RAGE
	const FLY_BLACKTHORN
	const FLY_MT_SILVER
; kanto
KANTO_FLYPOINT EQU const_value
	const FLY_PALLET
	const FLY_VIRIDIAN
	const FLY_PEWTER
	const FLY_CERULEAN
	const FLY_VERMILION
	const FLY_ROCK_TUNNEL
	const FLY_LAVENDER
	const FLY_CELADON
	const FLY_SAFFRON
	const FLY_FUCHSIA
	const FLY_CINNABAR
	const FLY_INDIGO

MAX_OUTDOOR_SPRITES EQU 23 ; see engine/overworld/overworld.asm
