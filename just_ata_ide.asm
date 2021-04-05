;
;	JUST_ATA_IDE.ASM
;	----------------
;

	org $F000
;
;	BOOT
;	----
;
BOOT
	;
	;	Initialise the stack and start
	;
BUFFER	EQU	$8000
BUFFER2	EQU	BUFFER+$100

	LDU #$A000
	LDS #$B000
	LBRA main

	;
	;	Include drivers for everything
	;
	INCLUDE serial.asm
	INCLUDE io.asm
	INCLUDE ata_ide.asm

	;
	;	Strings and constants
	;
	PRAGMA cescapes
bios_startup_message
	FCN "Pinnated 6809\n"
init_message
	FCN "Initialise\n"
info_message
	FCN "Getinfo\n"
done_message
	FCN "Done\n"
TCRLF
	FCN "\n"


********************************
* PRINT BIG ENDIAN STRING OF N CHARS
* IN: X=ADDR, B=NCHARS
********************************
PRTRN
	LDA	1,X
	LBSR	io_putchar
	LDA	0,X
	LBSR	io_putchar
	DECB
	CMPB	#0
	BEQ	PRTRNE
	DECB
	CMPB	#0
	BEQ	PRTRNE
	LEAX	2,X
	BRA	PRTRN
PRTRNE
	RTS

********************************
* PRINT CF INFORMATION
********************************
CFINFO

; PRINT MODEL NUMBER
	LDX	#BUFFER+54
	LDB	#40
	BSR	PRTRN
	LDX	#TCRLF
	LBSR	io_puts

; dump the buffer
	LDX	#BUFFER
	LBSR	io_dump_memory

	LDX	#BUFFER2
	LBSR	io_dump_memory
	RTS



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

	LBSR io_init

	;
	;	Print the power-on message
	;
finish
	LEAX bios_startup_message,pcr
	LBSR io_puts

	LEAX init_message,pcr
	LBSR io_puts

	LBSR ata_ide_init

	LEAX info_message,pcr
	LBSR io_puts

	LDX #BUFFER
	LBSR ata_ide_identify
	TFR Y,X
	LBSR io_put_word

	LEAX done_message,pcr
	LBSR io_puts

	LBSR CFINFO

	LEAX TCRLF,pcr
	LBSR io_puts

spin_lock
	LDA	ata_ide_data
	LBRA spin_lock

;	LBRA finish


;
;	6809 INTERRUPT VECTORS
;	----------------------
;
	org $FFF0

vector_reserved
	FDB BOOT
vector_swi3
	FDB BOOT
vector_swi2
	FDB BOOT
vector_firq
	FDB BOOT
vector_irq
	FDB BOOT
vector_swi
	FDB BOOT
vector_nmi
	FDB BOOT
vector_reset
	FDB BOOT
