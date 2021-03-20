all: just_lcd.s9 just_serial.s9 just_ram_lcd.s9

#
# JUST_LCD
# --------
# Assumes CPU, ROM, LCD.  RAM not needed
#
just_lcd.s9 : just_lcd.asm
	lwasm --format=srec --map=just_lcd.map --list=just_lcd.lst -o just_lcd.s9 just_lcd.asm

write_just_lcd:
	minipro -p AT28C64 -w just_lcd.s9

#
# JUST_SERIAL
# -----------
# Assumes CPU, ROM, 68B50 serial.  RAM not needed
#
just_serial.s9 : just_serial.asm
	lwasm --format=srec --map=just_serial.map --list=just_serial.lst -o just_serial.s9 just_serial.asm

write_just_serial:
	minipro -p AT28C64 -w just_serial.s9

#
# JUST_RAM_LCD
# ------------
# Assumes CPU, ROM, LCD and RAM.
#
just_ram_lcd.s9 : just_ram_lcd.asm
	lwasm --format=srec --map=just_ram_lcd.map --list=just_ram_lcd.lst -o just_ram_lcd.s9 just_ram_lcd.asm

write_just_ram_lcd:
	minipro -p AT28C64 -w just_ram_lcd.s9


clean:
	rm *.s9 *.lst *.map *.o
