;
;	BIOS.ASM
;	--------
;

;
;	BASIC Interpreter
;	-----------------
;
	ORG $F800
	INCLUDE TinyBasic/basic.asm

;
;	BIOS
;	----
;
BIOS
	;
	;	Initialise the stack and start
	;
	LDU #$A000
	LDS #$B000
	LBRA main

	;
	;	Include drivers for everything
	;
	INCLUDE serial.asm
	INCLUDE io.asm
;	INCLUDE lcd.asm

	;
	;	Strings and constants
	;
bios_startup_message
	FCN "Pinnated 6809"

;
;	MAIN
;	----
;
main
	;
	;	We start by waiting for power and reset to stabalise
	;
	LDX #$FFFF
bios_startup_wait
	LEAX -1,X
	CMPX #$0000
	BNE bios_startup_wait

	;
	;	Configure the RAM DAT page table
	;
	INCLUDE ram.asm

	LBSR serial_init

	;
	;	Print the power-on message
	;
finish
	LEAX bios_startup_message,pcr
	LBSR io_puts
	LBRA BASIC
	LBRA finish

;
;	6809 INTERRUPT VECTORS
;	----------------------
;
	org $FFF0

vector_reserved
	FDB BIOS
vector_swi3
	FDB BIOS
vector_swi2
	FDB BIOS
vector_firq
	FDB BIOS
vector_irq
	FDB BIOS
vector_swi
	FDB BIOS
vector_nmi
	FDB BIOS
vector_reset
	FDB BIOS
