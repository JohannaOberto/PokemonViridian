	db DEX_LAPRAS ; pokedex id

	db 130,  85,  80,  60,  95
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 45 ; catch rate
	db 219 ; base exp

	INCBIN "gfx/pokemon/front/lapras.pic", 0, 1 ; sprite dimensions
	dw LaprasPicFront, LaprasPicBack

	db WATER_GUN, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   POWDER_SNOW,  \
	     SOLARBEAM,    DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      DRAGONBREATH, \
	     PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  REFLECT,      SKULL_BASH,   \
	     HEADBUTT,     REST,         PSYWAVE,      SUBSTITUTE,   SURF,         \
		 STRENGTH
	; end

	db BANK(LaprasPicFront)
	assert BANK(LaprasPicFront) == BANK(LaprasPicBack)
