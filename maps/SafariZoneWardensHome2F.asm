	const_def 2 ; object constants
	const SAFARIZONEWARDENSHOME2F_GRUNTF4
	const SAFARIZONEWARDENSHOME2F_GRUNTM6
	const SAFARIZONEWARDENSHOME2F_GRUNTM7
	const SAFARIZONEWARDENSHOME2F_IMPOSTER

SafariZoneWardensHome2F_MapScripts:
	db 2 ; scene scripts
	scene_script .SceneSafariZoneWardensHome2FImposterScene ; SCENE_DEFAULT
	scene_script .SceneSafariZoneWardensHome2FNothing ;

	db 0 ; callbacks

.SceneSafariZoneWardensHome2FImposterScene
	end
.SceneSafariZoneWardensHome2FNothing
	end

TrainerGruntF4:
	trainer GRUNTF, GRUNTF_4, EVENT_BEAT_ROCKET_GRUNTF_4, GruntF4SeenText, GruntF4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF4AfterBattleText
	waitbutton
	closetext
	end


TrainerGruntM6:
	trainer GRUNTM, GRUNTM_6, EVENT_BEAT_ROCKET_GRUNTM_6, GruntM6SeenText, GruntM6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM6AfterBattleText
	waitbutton
	closetext
	end


TrainerGruntM7:
	trainer GRUNTM, GRUNTM_7, EVENT_BEAT_ROCKET_GRUNTM_7, GruntM7SeenText, GruntM7BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM7AfterBattleText
	waitbutton
	closetext
	end
	
ImposterScene2FTop:
	opentext
	writetext ImposterHeyYouText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 20
	applymovement PLAYER, Warden2FOneStepLeft
	jump ImposterSceneMainScript
	
ImposterScene2FBottom:
	opentext
	writetext ImposterHeyYouText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 20
	applymovement PLAYER, Warden2FOneStepLeftAndUp
	jump ImposterSceneMainScript
	
ImposterSceneMainScript:
	applymovement PLAYER, Warden2FRestOfTheSteps
	opentext
	writetext Warden2FWhoDoYouThinkYouAreText
	waitbutton
	closetext
	winlosstext ImposterWinText, ImposterLossText
	loadtrainer SABRINA, SABRINA1,
	startbattle
	reloadmapafterbattle
	opentext
	writetext Warden2FFineYouWin
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear SAFARIZONEWARDENSHOME2F_GRUNTF4
	disappear SAFARIZONEWARDENSHOME2F_GRUNTM6
	disappear SAFARIZONEWARDENSHOME2F_GRUNTM7
	disappear SAFARIZONEWARDENSHOME2F_IMPOSTER
	pause 15
	special FadeInQuickly
	setevent EVENT_GOT_HP_UP_FROM_RANDY
	setscene SCENE_SAFARI_ZONE_WARDENS_HOME_2F_NOTHING
	setmapscene SAFARI_ZONE_WARDENS_HOME, SCENE_SAFARI_ZONE_WARDENS_HOME_BASE_UNCOVERED
	pause 30
	end
	
SafariZoneWardensHome2FTV:
	jumptext SafariZoneWardensHome2FTVText
	
SafariZoneWardensHome2FPoster:
	jumptext SafariZoneWardensHome2FPosterText

Warden2FRestOfTheSteps:
	step LEFT
	step LEFT
	step LEFT
	step_end
	
Warden2FOneStepLeft:
	step LEFT
	step_end
	
Warden2FOneStepLeftAndUp:
	step LEFT
	step UP
	step_end
	
SafariZoneWardensHome2FTVText:
	text "It's a rerun..."
	done

SafariZoneWardensHome2FPosterText:
	text "TEAM ROCKET aims"
	line "to make money from"
	cont "all #MON!"
	done
	
Warden2FFineYouWin:
	text "Heh. Fine"
	para "You win."
	para "We'll head out"
	line "now."
	para "Nothing else left"
	line "here for you to"
	cont "see."
	para "Bye, kid."
	done
	
ImposterWinText:
	text "You little brat!"
	done

ImposterLossText:
	text "Haha!"
	done
	
Warden2FWhoDoYouThinkYouAreText:
	text "Just who do you"
	line "think you are?"
	para "Why are you trying"
	line "to interfere with"
	cont "our amazing work?"
	para "TEAM ROCKET is"
	line "about to launch"
	para "the biggest"
	line "revolution in"
	para "#MON technology"
	line "ever!"
	para "..."
	para "Clearly you don't"
	line "feel the same."
	para "I guess I'll have"
	line "to help you"
	cont "understand!"
	para "I'm through"
	line "letting you get in"
	cont "the way!"
	done

ImposterHeyYouText:
	text "Hey, you!"
	line "Kid!"
	done

GruntM7SeenText:
	text "I've been given"
	line "strict orders."

	para "I'm to crush any-"
	line "one who challenges"
	cont "TEAM ROCKET!"
	done

GruntM7BeatenText:
	text "What?!"
	done

GruntM7AfterBattleText:
	text "I failed in my"
	line "duties…"

	para "I'll be docked pay"
	line "for this…"
	done

GruntF4SeenText:
	text "Don't I think"
	line "#MON are cute?"

	para "I'll think my"
	line "#MON are cute--"

	para "after they beat"
	line "yours!"
	done

GruntF4BeatenText:
	text "Oh, no! They're so"
	line "useless!"
	done

GruntF4AfterBattleText:
	text "I love my"
	line "beautiful self!"

	para "Who cares about"
	line "#MON?"
	done


GruntM6SeenText:
	text "Hey, hey! Keep out"
	line "of our way!"
	done

GruntM6BeatenText:
	text "Arggh. I give up."
	done

GruntM6AfterBattleText:
	text "The EXECUTIVE"
	line "won't like hearing"
	para "about more kids"
	line "getting in the way"
	cont "of the plan..."
	done

SafariZoneWardensHome2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 19,  1, SAFARI_ZONE_WARDENS_HOME, 4

	db 2 ; coord events
	coord_event 12,  4, SCENE_DEFAULT, ImposterScene2FTop
	coord_event 12,  5, SCENE_DEFAULT, ImposterScene2FBottom

	db 2 ; bg events
	bg_event 10,  1, BGEVENT_READ, SafariZoneWardensHome2FTV
	bg_event  6,  0, BGEVENT_READ, SafariZoneWardensHome2FPoster

	db 4 ; object events
	object_event 14,  1, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerGruntF4, EVENT_GOT_HP_UP_FROM_RANDY
	object_event 16,  5, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerGruntM6, EVENT_GOT_HP_UP_FROM_RANDY
	object_event 17,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerGruntM7, EVENT_GOT_HP_UP_FROM_RANDY
	object_event  5,  4, SPRITE_SURGE, SPRITEMOVEDATA_STANDING_RIGHT, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 5, ObjectEvent, EVENT_GOT_HP_UP_FROM_RANDY
