;
;	ATA_IDE.ASM
;	-----------
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
BUFFER2	EQU	$8100

	LDU #$A000
	LDS #$B000
	LBRA main

	;
	;	Include drivers for everything
	;
	INCLUDE serial.asm
	INCLUDE io.asm

	;
	;	Strings and constants
	;
bios_startup_message
	FCN "Pinnated 6809"
init_message
	FCN "Initialise"
info_message
	FCN "Getinfo"
done_message
	FCN "Done"
TCRLF
	FCB $0D,$0A,$00

********************************
* CF REGS
********************************
CFBASE	EQU 	$E010
CFREG0	EQU	CFBASE+0	; DATA PORT
CFREG1	EQU	CFBASE+1	; READ: ERROR CODE, WRITE: FEATURE
CFREG2	EQU	CFBASE+2	; NUMBER OF SECTORS TO TRANSFER
CFREG3	EQU	CFBASE+3	; SECTOR ADDRESS LBA 0 [0:7]
CFREG4	EQU	CFBASE+4	; SECTOR ADDRESS LBA 1 [8:15]
CFREG5	EQU	CFBASE+5	; SECTOR ADDRESS LBA 2 [16:23]
CFREG6	EQU	CFBASE+6	; SECTOR ADDRESS LBA 3 [24:27 (LSB)]
CFREG7	EQU	CFBASE+7	; READ: STATUS, WRITE: COMMAND

********************************
* INITIALIZE CF
********************************
CFINIT
	LDA	#$04		; RESET COMMAND				; REALLY? - check this.
;	LDA	#$08		; RESET COMMAND
	STA	CFREG7
	LBSR	CFWAIT
	LDA	#$E0		; LBA3=0, MASTER, MODE=LBA
	STA	CFREG6
	LDA	#$01		; 8-BIT TRANSFERS
	STA	CFREG1
	LDA	#$EF		; SET FEATURE COMMAND
	STA	CFREG7
	LBSR	CFWAIT
	LBSR	CFCHERR
	RTS

********************************
* WAIT FOR CF READY
********************************
CFWAIT
	LDA	CFREG7
	BITA	#$80		; Check the busy flag
	BNE	CFWAIT
	RTS

CFDRDY
	LDA	CFREG7
	BITA	#%01000000
	BEQ	CFDRDY
	RTS

********************************
* CHECK FOR CF ERROR
********************************
CFCHERR
	LDA	CFREG7
	BITA	#$01		; MASK OUT ERROR BIT
	BEQ	CFNERR
	LDA	#'!'
	LBSR	io_putchar
	LDA	CFREG1
	LBSR	io_put_byte
CFNERR
	RTS

********************************
* READ DATA FROM CF
********************************
CFREAD
	BSR	CFWAIT
	LDA	CFREG7
	ANDA	#%00001000	; FILTER OUT DRQ
	CMPA	#%00001000
	BNE	CFREADE
	LDA	CFREG0		; READ DATA BYTE
	STA	,X+
	BRA	CFREAD
CFREADE
	RTS

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
	BSR	CFWAIT
	
	LDA	#$EC		; DRIVE ID COMMAND
	STA	CFREG7

	LDX	#BUFFER
	BSR	CFREAD


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
;
;
;


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

	LDA #$FF
	LBSR io_put_byte

	LEAX init_message,pcr
	LBSR io_puts

	LBSR CFINIT

	LEAX info_message,pcr
	LBSR io_puts

	LBSR CFINFO

	LEAX done_message,pcr
	LBSR io_puts

spin_lock
	LDA	CFREG0
	LBRA spin_lock
	LBRA finish


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
