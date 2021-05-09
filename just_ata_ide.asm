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
BUFFER	EQU	$C100

	LDU #$A000
	LDS #$8000
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
	FCN "Pinnated 6809\r\n"
init_message
	FCN "Initialise\r\n"
info_message
	FCN "Getinfo\r\n"
TCRLF
	FCN "\r\n"


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
; PRINT SERIAL
	LDX	#BUFFER+20
	LDB	#20
	JSR	PRTRN
	LDX	#TCRLF
	LBSR	io_puts
; PRINT FIRMWARE REV
	LDX	#BUFFER+46
	LDB	#8
	JSR	PRTRN
	LDX	#TCRLF
	LBSR	io_puts
; PRINT MODEL NUMBER
	LDX	#BUFFER+54
	LDB	#40
	JSR	PRTRN
	LDX	#TCRLF
	LBSR	io_puts
; PRINT LBA SIZE
	LDX	#BUFFER+123
	LDA	,X
	LEAX	-1,X
	JSR	io_put_byte
	LDA	,X
	LEAX	-1,X
	JSR	io_put_byte
	LDA	,X
	LEAX	-1,X
	JSR	io_put_byte
	LDA	,X
	LEAX	-1,X
	JSR	io_put_byte
	LDX	#TCRLF
	LBSR	io_puts

; dump the buffer
	LDX	#BUFFER
	LBSR	io_dump_memory

	LDX	#BUFFER+$100
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

	LBSR FLEX_INIT

	LEAX info_message,pcr
	LBSR io_puts

	LDX #BUFFER
	LBSR ata_ide_identify

	LBSR CFINFO

	LEAX TCRLF,pcr
	LBSR io_puts

;
;	Boot FLEX
;
	LDX #BUFFER
	LDA #$00
	LDB #$01
	LBSR FLEX_READ
	JMP $C100

	LBRA finish			; if we get here then start over (but it can't get here!)


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
