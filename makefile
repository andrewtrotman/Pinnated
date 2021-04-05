all: just_lcd.s9 just_serial.s9 just_ram_lcd.s9 just_ram.s9 bios.s9 just_ata_ide.s9

#
# JUST_ATA_IDE
# ------------
# Assumes CPU, ROM, RAM, 68B50 serial at 115200(N81), IDE disk controller
#
just_ata_ide.s9 : just_ata_ide.asm io.asm serial.asm lcd.asm ram.asm ata_ide.asm
	lwasm --format=srec --map=just_ata_ide.map --list=just_ata_ide.lst -o just_ata_ide.F000 just_ata_ide.asm
	srec_cat just_ata_ide.F000 -offset -0xE000 -o just_ata_ide.s9

write_just_ata_ide:
	minipro -p AT28C64 -w just_ata_ide.s9

#
# BIOS
# ----
# Assumes CPU, ROM, RAM, 68B50 serial at 115200(N81)
#
bios.s9 : bios.asm io.asm serial.asm lcd.asm ram.asm
	lwasm --format=srec --map=bios.map --list=bios.lst -o bios.F000 bios.asm
	srec_cat bios.F000 -offset -0xE000 -o bios.s9

write_bios:
	minipro -p AT28C64 -w bios.s9


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
	lwasm --format=srec --map=just_serial.map --list=just_serial.lst -o just_serial.F000 just_serial.asm
	srec_cat just_serial.F000 -offset -0xE000 -o just_serial.s9

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

#
# JUST_RAM
# --------
# Assumes CPU, ROM, and RAM.  Can only be verified with an osciloscope
#
just_ram.s9 : just_ram.asm
	lwasm --format=srec --map=just_ram.map --list=just_ram.lst -o just_ram.s9 just_ram.asm

write_just_ram:
	minipro -p AT28C64 -w just_ram.s9


clean:
	rm *.s9 *.lst *.map *.o *.F000
