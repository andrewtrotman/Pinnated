;
;	ATA_IDE.ASM
;	-----------
;	Methods to fread and write via ATA/IDE interface (8-bit)
;

;
FLEX_DRIVE_LAST					EQU $00

;
;	Registers
;
ata_ide_data						EQU	$E010
ata_ide_feature					EQU	ata_ide_data+1
ata_ide_error						EQU	ata_ide_data+1
ata_ide_sector_count				EQU	ata_ide_data+2
ata_ide_sector_number			EQU	ata_ide_data+3
ata_ide_cylinder_low				EQU	ata_ide_data+4
ata_ide_cylinder_high			EQU	ata_ide_data+5
ata_ide_disk_head					EQU	ata_ide_data+6
ata_ide_status						EQU	ata_ide_data+7
ata_ide_command					EQU	ata_ide_data+7

ata_ide_command_reset			EQU	$04	;REALLY? - check this, should be $08?
ata_ide_command_read_sector	EQU	$20	; read a single sector
ata_ide_command_identfy			EQU	$EC
ata_ide_command_set_feature	EQU	$EF	; set feature

ata_ide_feature_8_bit			EQU	$01	; 8-bit transfers

ata_ide_status_busy				EQU $80
ata_ide_status_drdy				EQU $40
ata_ide_status_drq				EQU $08
ata_ide_status_err				EQU $01

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
;	ATA_IDE_IDENTIFY
;	----------------
;	Load the device identify information into a 512-byte block pointed to by X
;	Return the number of bytes read in Y
;
ata_ide_identify
	BSR	ata_ide_wait_for_not_busy
	BSR	ata_ide_wait_for_drdy
	LDA	#ata_ide_command_identfy
	STA	ata_ide_command
	BSR	ata_ide_wait_for_not_busy
	BSR	FLEX_READ_256
	BSR	FLEX_READ_256
	RTS

;
;	FLEX_SECTOR_TO_LBA
;	------------------
;	FLEX track and sector numbers are one byte.  FLEX sectors are 256 bytes.  So the largest
;	FLEX volume is 16MB.  The smallest Compact Flash card I could find is 32MB.
;	So we can treat the track/sector address as a 16-bit address, divide by 2, then check
;	which half of a 512-byte IDE sector to use.
;
;	On Entry:
;		(A) = Track Number
;		(B) = Sector Number
;	On Exit:
;		LBA registers loaded
;		(C) = 0 even numbered sector (use first 256 bytes of IDE sector)
;		    = 1 odd numbered sector (use secind 256 bytes of sector)
;
FLEX_SECTOR_TO_LBA
	LSRA
	BCC 	FLEX_SECTOR_TO_LBA_EVEN_TRACK
	LSRB
	ORB	#$80			; turn the high bit back on as its the "carry" from A/2
	BRA	FLEX_SECTOR_TO_LBA_LOAD
FLEX_SECTOR_TO_LBA_EVEN_TRACK
	LSRB
FLEX_SECTOR_TO_LBA_LOAD
	STB	ata_ide_sector_number
	STA	ata_ide_cylinder_low
	CLR	ata_ide_cylinder_high
	LDA	#$01
	STA	ata_ide_sector_count
	RTS

;
;
;	FLEX_READ_256
;	-------------
;	Read 256 bytes from the ATA/IDE controller into the memory pointed to by X
;
FLEX_READ_256
	LDB	#$00
FLEX_READ_256_MORE
	LDA	ata_ide_data
	STA	,X+
	DECB
	BEQ	FLEX_READ_256_DONE
	BRA	FLEX_READ_256_MORE
FLEX_READ_256_DONE
	RTS

;
;	FLEX_DISCARD_256
;	----------------
;	Read and discard 256 bytes from the ATA/IDE controller
;
FLEX_DISCARD_256
	LDB	#$00
FLEX_DISCARD_256_MORE
	LDA	ata_ide_data
	DECB
	BEQ	FLEX_DISCARD_256_DONE
	BRA	FLEX_DISCARD_256_MORE
FLEX_DISCARD_256_DONE
	RTS

;
;	FLEX_READ
;	---------
;	Read a single sector
;	On Entry:
;		(X) = Address in memory where sector is to be placed.
;		(A) = Track Number
;		(B) = Sector Number
;	On Exit:
;		(X) May be destroyed
;		(A) May be destroyed
;		(B) = Error condition
;		(Z) = 1 if no error
;		    = 0 if an error
;
FLEX_READ
	BSR	ata_ide_wait_for_not_busy
	BSR	ata_ide_wait_for_drdy
	BSR	FLEX_SECTOR_TO_LBA
	PSHS	CC
	LDA	#ata_ide_command_read_sector
	STA	ata_ide_command
	BSR	ata_ide_wait_for_not_busy
	PULS	CC
	BCC	FLEX_READ_ODD_SECTOR
FLEX_READ_EVEN_SECTOR
	BSR	FLEX_READ_256
	BSR	FLEX_DISCARD_256
	BRA	FLEX_READ_DONE
FLEX_READ_ODD_SECTOR
	BSR	FLEX_DISCARD_256
	BSR	FLEX_READ_256
FLEX_READ_DONE
	CLRB
	RTS

;
;	FLEX_DRIVE
;	----------
;	Select the specified drive
;	On Exit:
;		(B) = $0F if non-existent drive
;		    = Error condition otherwise
;		(Z) = 1 if no error
;		    = 0 if an error
;		(C) = 0 if no error
;		    = 1 if an error
;
FLEX_DRIVE
	LDA	$03,X						; load the drive number from the FCB
	CMPA	#FLEX_DRIVE_LAST
	BGT	FLEX_DRIVE_MISSING
	CLRB								; set B=$00, Z=1, and C=0
	RTS
FLEX_DRIVE_MISSING
	LDB	#$1F
	ASRB								; set B=$0F, Z=0, and C=1
	RTS

;
;	FLEX_INIT
;	---------
;	Driver initialize (cold start)
;
FLEX_INIT
	LBSR	ata_ide_wait_for_not_busy
	LBSR	ata_ide_wait_for_drdy

	LDA	#ata_ide_command_reset
	STA	ata_ide_command
	LBSR	ata_ide_wait_for_not_busy

	LDA	#$E0		; LBA3=0, MASTER, MODE=LBA
	STA	ata_ide_disk_head

	LDA	#ata_ide_feature_8_bit
	STA	ata_ide_feature
	LDA	#ata_ide_command_set_feature
	STA	ata_ide_command
	LBSR	ata_ide_wait_for_not_busy

	RTS

;
;	FLEX_WARM
;	---------
;	Driver initialize (warm start)
;
FLEX_WARM
	;	Fall through

;
;	FLEX_VERIFY
;	-----------
;	Verify last sector written
;	On Exit:
;		(B) = Error condition
;		(Z) = 1 if no error
;		    = 0 if an error
;
FLEX_VERIFY
	;	Fall through

;
;	FLEX_RESTORE
;	------------
;	Restore head to track #0
;	On Exit:
;		(B) = Error condition
;		(Z) = 1 if no error
;		    = 0 if an error
;
FLEX_RESTORE
	;	Fall through

;
;	FLEX_SEEK
;	---------
;	Seek to specified track
;	On Exit:
;		(B) = Error condition
;		(Z) = 1 if no error
;		    = 0 if an error
;
FLEX_SEEK
	;	Fall through

;
;	FLEX_QUICK
;	----------
;	Quick check for drive ready
;	On Exit:
;		(B) = Error condition
;		(Z) = 1 if drive ready
;		    = 0 if not ready
;		(C) = 0 if drive ready
;		    = 1 if not ready
;
FLEX_QUICK
	;	Fall through

;
;	FLEX_CHKRDY
;	-----------
;	Check for drive ready
;	On Exit:
;		(B) = Error condition
;		(Z) = 1 if drive ready
;		    = 0 if not ready
;		(C) = 0 if drive ready
;		    = 1 if not ready
FLEX_CHKRDY
	CLRB
	RTS
