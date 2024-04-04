	db DEX_GENGAR ; pokedex id

	db  60,  65,  60, 110, 130
	;   hp  atk  def  spd  spc

	db GHOST, POISON ; type
	db 45 ; catch rate
	db 190 ; base exp

	INCBIN "gfx/pokemon/front/gengar.pic", 0, 1 ; sprite dimensions
	dw GengarPicFront, GengarPicBack

	db LICK, CONFUSE_RAY, NIGHT_SHADE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SHADOW_BALL,  MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   ICE_PUNCH,    SUBMISSION,   \
	     COUNTER,      SEISMIC_TOSS, MEGA_DRAIN,   THUNDERBOLT,  THUNDER,      \
	     PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  THUNDERPUNCH, METRONOME,    \
	     SELFDESTRUCT, FIRE_PUNCH,   SKULL_BASH,   HEADBUTT,     DREAM_EATER,  \
	     REST,         PSYWAVE,      EXPLOSION,    SUBSTITUTE,   STRENGTH
	; end

	db BANK(GengarPicFront)
	assert BANK(GengarPicFront) == BANK(GengarPicBack)
