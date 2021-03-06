	const_def 2 ; object constants
	const CELADONPOKECENTER1F_NURSE
	const CELADONPOKECENTER1F_GENTLEMAN
	const CELADONPOKECENTER1F_PHARMACIST
	const CELADONPOKECENTER1F_COOLTRAINER_F

CeladonPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CeladonPokecenter1FNurseScript:
	jumpstd pokecenternurse

CeladonPokecenter1FGentlemanScript:
	jumpstd happinesschecknpc

CeladonPokecenter1FCooltrainerFScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CLAIR
	iftrue .CeladonPokeCenter1FCooltrainerBeatClair
	writetext CeladonPokecenter1FCooltrainerFText
	waitbutton
	closetext
	end
	
.CeladonPokeCenter1FCooltrainerBeatClair
	writetext CeladonPokecenter1FCooltrainerFText2
	waitbutton
	closetext
	end

CeladonPokecenter1FPharmacistScript:
	jumptextfaceplayer CeladonPokecenter1FPharmacistText

CeladonPokecenter1FCooltrainerFText2:
	text "Wow! You defeated"
	line "RED?"
	para "You must be tough!"
	done

CeladonPokecenter1FCooltrainerFText:
	text "RED is a master of"
	line "all #MON."
	para "You better be"
	line "ready to challenge"
	cont "him."
	done

CeladonPokecenter1FPharmacistText:
	text "Have you been to"
	line "the DEPT.STORE"
	cont "here?"
	para "They have a"
	line "better selection"
	para "than the one in"
	line "WEST CITY, I"
	cont "think."
	done


CeladonPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  5,  7, CELADON_CITY, 5
	warp_event  6,  7, CELADON_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FNurseScript, -1
	object_event  1,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FGentlemanScript, -1
	object_event  10,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FPharmacistScript, -1
	object_event  13,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FCooltrainerFScript, -1
