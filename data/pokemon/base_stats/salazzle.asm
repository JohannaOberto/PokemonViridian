	db DEX_SALAZZLE ; pokedex id

	db  68,  64,  60, 117, 111
	;   hp  atk  def  spd  spc

	db POISON, FIRE ; type
	db 45 ; catch rate
	db 168 ; base exp

	INCBIN "gfx/pokemon/front/salazzle.pic", 0, 1 ; sprite dimensions
	dw SalazzlePicFront, SalazzlePicBack

	db SCRATCH, POISON_GAS, EMBER, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DRAGON_RAGE,  DOUBLE_TEAM,  FIRE_BLAST,   \
	     SWIFT,        BIDE,         REST,         THUNDER_WAVE, SUBSTITUTE
	; end

	db 0 ; padding