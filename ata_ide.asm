;
;	ATA_IDE.ASM
;	-----------
;	Methods to fread and write via ATA/IDE interface (8-bit)
;

;
;	Registers
;
ata_ide_data		EQU	$E010
ata_ide_feature	EQU	ata_ide_data+1
ata_ide_error		EQU	ata_ide_data+1
ata_ide_disk_head	EQU	ata_ide_data+6
ata_ide_status		EQU	ata_ide_data+7
ata_ide_command	EQU	ata_ide_data+7

ata_ide_command_reset			EQU	$04	;REALLY? - check this, should be $08?
ata_ide_command_identfy			EQU	$EC
ata_ide_command_set_feature	EQU	$EF	; set feature

ata_ide_feature_8_bit			EQU	$01	; 8-bit transfers

ata_ide_status_busy		EQU $80
ata_ide_status_drdy		EQU $40
ata_ide_status_drq		EQU $08
ata_ide_status_err		EQU $01

;
;	ATA_IDE_INIT
;	------------
;
ata_ide_init
	PSHS	A
	BSR	ata_ide_wait_for_not_busy
	BSR	ata_ide_wait_for_drdy

	LDA	#ata_ide_command_reset
	STA	ata_ide_command
	BSR	ata_ide_wait_for_not_busy
;	BSR	ata_ide_wait_for_drdy

;	CLR	ata_ide_disk_head
	LDA	#$E0		; LBA3=0, MASTER, MODE=LBA
	STA	ata_ide_disk_head

	LDA	#ata_ide_feature_8_bit
	STA	ata_ide_feature
	LDA	#ata_ide_command_set_feature
	STA	ata_ide_command
	BSR	ata_ide_wait_for_not_busy
;	BSR	ata_ide_wait_for_drdy

	LBSR	ata_ide_report_errors
	PULS	A
	RTS

;
;	ATA_IDE_WAIT_FOR_NOT_BUSY
;	-------------------------
;	Spinlock until the BSY flag is clear
;
ata_ide_wait_for_not_busy
	PSHS	A
ata_ide_wait_for_not_busy_loop
	LDA	ata_ide_status
	BITA	#ata_ide_status_busy
	BNE	ata_ide_wait_for_not_busy_loop
	PULS	A
	RTS

;
;	ATA_IDE_WAIT_FOR_DRDY
;	---------------------
;	Spinlock until the DRDY flag is set
;
ata_ide_wait_for_drdy
	PSHS	A
ata_ide_wait_for_drdy_loop
	LDA	ata_ide_status
	BITA	#ata_ide_status_drdy
	BEQ	ata_ide_wait_for_drdy_loop
	PULS	A
	RTS

;
;	ATA_IDE_WAIT_FOR_DRQ
;	--------------------
;	Spinlock until the DRQ flag is set
;
ata_ide_wait_for_drq
	PSHS	A
ata_ide_wait_for_drq_wait
	LDA	ata_ide_status
	BITA	#ata_ide_status_drq
	BEQ	ata_ide_wait_for_drq_wait
	PULS	A
	RTS

;
;	ATA_IDE_REPORT_ERRORS
;	---------------------
;	Report any error on the device
;
ata_ide_report_errors
	PSHS	A
	LDA	ata_ide_status
	BITA	#ata_ide_status_err
	BEQ	ata_ide_report_errors_done
	LDA	#'!'
	LBSR	io_putchar
	LDA	ata_ide_error
	LBSR	io_put_byte
ata_ide_report_errors_done
	PULS	A
	RTS

;
;	ATA_IDE_READ
;	------------
;	Read a sector of 512 bytes from the device into were X points
;	Return the number of bytes read in Y
;
ata_ide_read
	PSHS	X,A
	LDY	#$0000
ata_ide_read_more
	LDA	ata_ide_status
	BITA	#ata_ide_status_drq
	BEQ	ata_ide_read_done
	LDA	ata_ide_data
	STA	,X+
	LEAY	1,Y
	BRA	ata_ide_read_more
ata_ide_read_done
	PULS	A,X
	RTS

;
;	ATA_IDE_IDENTIFY
;	----------------
;	Load the device identify information into a 512-byte block pointed to by X
;	Return the number of bytes read in Y
;
ata_ide_identify
	PSHS	A
	BSR	ata_ide_wait_for_not_busy
	BSR	ata_ide_wait_for_drdy
;	CLR	ata_ide_disk_head
	LDA	#ata_ide_command_identfy
	STA	ata_ide_command
	BSR	ata_ide_wait_for_not_busy
;	BSR	ata_ide_wait_for_drq
	BSR	ata_ide_read
	PULS	A
	RTS
