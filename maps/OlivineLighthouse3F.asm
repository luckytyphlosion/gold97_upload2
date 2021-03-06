	const_def 2 ; object constants
	const OLIVINELIGHTHOUSE3F_SAILOR
	const OLIVINELIGHTHOUSE3F_GENTLEMAN
	const OLIVINELIGHTHOUSE3F_YOUNGSTER
	const OLIVINELIGHTHOUSE3F_POKE_BALL
	const OLIVINELIGHTHOUSE3F_POKE_BALL_2

OlivineLighthouse3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	

Route45Elixer:
	itemball ELIXER


TrainerBirdKeeperTheo:
	trainer BIRD_KEEPER, THEO, EVENT_BEAT_BIRD_KEEPER_THEO, BirdKeeperTheoSeenText, BirdKeeperTheoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperTheoAfterBattleText
	waitbutton
	closetext
	end



TrainerSailorTerrell:
	trainer SAILOR, TERRELL, EVENT_BEAT_SAILOR_TERRELL, SailorTerrellSeenText, SailorTerrellBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorTerrellAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCooltrainermNick:
	trainer COOLTRAINERM, NICK, EVENT_BEAT_COOLTRAINERM_NICK, CooltrainermNickSeenText, CooltrainermNickBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermNickAfterBattleText
	waitbutton
	closetext
	end
	

OlivineLighthouse3FEther:
	itemball ETHER

BirdKeeperTheoSeenText:
	text "My beautiful birds"
	line "have no room to"
	cont "FLY in here!"
	done

BirdKeeperTheoBeatenText:
	text "Do you know the"
	line "way out of here?"
	done

BirdKeeperTheoAfterBattleText:
	text "How the heck do"
	line "you get out?"

	para "I want to FLY!"
	line "FLY, far away!"
	done

SailorTerrellSeenText:
	text "Sailors are both"
	line "kind and strong."
	cont "How about you?"
	done

SailorTerrellBeatenText:
	text "You are both kind"
	line "and strong…"
	done

SailorTerrellAfterBattleText:
	text "I hear there's a"
	line "new BOARDWALK open"
	para "south of HONTO"
	line "TOWN."
	done
	
CooltrainermNickSeenText:
	text "No one can pass"
	line "here unless they"
	cont "defeat me!"
	done

CooltrainermNickBeatenText:
	text "You may pass..."
	done

CooltrainermNickAfterBattleText:
	text "Not many people"
	line "come through here"
	cont "to battle anyways."
	done


OlivineLighthouse3F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3, 15, DIGLETTS_CAVE, 3
	warp_event 51, 11, DIGLETTS_CAVE, 4
	warp_event 43,  7, ELM_ENTRANCE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event 34, 13, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSailorTerrell, -1
	object_event 48, 13, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerCooltrainermNick, -1
	object_event  8,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBirdKeeperTheo, -1
	object_event 21,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, OlivineLighthouse3FEther, EVENT_OLIVINE_LIGHTHOUSE_3F_ETHER
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45Elixer, EVENT_ROUTE_45_ELIXER
