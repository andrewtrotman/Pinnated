basic.s9 : basic.asm
	lwasm --format=srec --map=basic.map --list=basic.lst -o basic.F000 basic.asm 
	srec_cat basic.F000 -offset -0xE000 -o basic.s9
