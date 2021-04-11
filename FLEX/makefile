all: qload.bin loader.bin

qload.bin : qload.asm
	lwasm --format=raw --map=qload.map --list=qload.lst -o qload.bin qload.asm

loader.bin : loader.asm
	lwasm --format=raw --map=loader.map --list=loader.lst -o loader.bin loader.asm

clean:
	rm *.map *.lst *.bin

