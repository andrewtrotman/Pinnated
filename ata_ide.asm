;
;	ATA_IDE.ASM
;	-----------
;	Methods to fread and write via ATA/IDE interface (8-bit)
;


;
; Page 50 of the FLEX Adaptatopn Guide states:
;		Track numbers always begin with #0 and sector numbers always begin with #1.
; So there are at most 256 tracks each with 255 sectors on them!
;


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

ata_ide_command_read_sector	EQU	$20	; read a single sector
ata_ide_command_write_sector	EQU	$30	; write a single sector
ata_ide_command_identfy			EQU	$EC
ata_ide_command_set_feature	EQU	$EF	; set feature

ata_ide_feature_8_bit			EQU	$01	; 8-bit transfers

ata_ide_status_busy				EQU $80
ata_ide_status_drdy				EQU $40
ata_ide_status_drq				EQU $08
ata_ide_status_err				EQU $01

;
;	FLEX_disk_driver_routine_jump_table
;	-----------------------------------
;	This table is copied to $DE00 on startup and becomes the FLEX disk driver jump table
;
FLEX_disk_driver_routine_jump_table_address EQU $DE00
FLEX_disk_driver_routine_jump_table
	JMP	FLEX_READ
	JMP	FLEX_WRITE
	JMP	FLEX_VERIFY
	JMP	FLEX_RESTORE
	JMP	FLEX_DRIVE
	JMP	FLEX_CHKRDY
	JMP	FLEX_QUICK
	JMP	FLEX_INIT
	JMP	FLEX_WARM
	JMP	FLEX_SEEK
FLEX_disk_driver_routine_jump_table_end

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
;
ata_ide_identify
	PSHS	A
	BSR	ata_ide_wait_for_not_busy
	BSR	ata_ide_wait_for_drdy
	LDA	#ata_ide_command_identfy
	STA	ata_ide_command
	BSR	ata_ide_wait_for_not_busy
	LBSR	FLEX_READ_256
	LBSR	FLEX_READ_256
	PULS	A
	RTS

;
;	FLEX_SECTOR_TO_LBA
;	------------------
;	FLEX track and sector numbers are one byte.
;	FLEX track numbers count from 00-FF.
;	FLEX sector numbers count from 01-FF.
;  FLEX sectors are 256 bytes.
;	So the largest FLEX volume is 16MB (well, 256*255*256 = 15.9375MB)
;	The smallest Compact Flash card I could find is 32MB.
;	So we'll use a disk geometory of 256 tracks of 255 sectors
;
;	On Entry:
;		(A) = Track Number
;		(B) = Sector Number
;	On Exit:
;		LBA registers loaded
;		(C) = 0 even numbered sector (use first 256 bytes of IDE sector)
;		    = 1 odd numbered sector (use second 256 bytes of sector)
;
FLEX_SECTOR_TO_LBA
	DECB				; because FLEX sectors count from 1, but ata/ide counts from 0
	PSHS	B			; save B
	CLRB				; push 16-bit sector number onto the stack
	PSHS	B
	LDB	#254		; convert track number into LBA
	MUL
	ADDD	,S			; add the sector number, resulting in LBA being in D (A high byte, B low byte)

	STB	ata_ide_sector_number	; write to the LBA registers
	STA	ata_ide_cylinder_low
	LDA	#$00
	STA	ata_ide_cylinder_high

	LDA	#$01							; read / write one sector
	STA	ata_ide_sector_count

	PULS	B
	PULS	B
	RTS

;
;	FLEX_READ_256
;	-------------
;	Read 256 bytes from the ATA/IDE controller into the memory pointed to by X
;
FLEX_READ_256
	CLRB
FLEX_READ_256_MORE
	LDA	ata_ide_data
	STA	,X+
	DECB
	BNE	FLEX_READ_256_MORE
	RTS

;
;	FLEX_WRITE_256
;	--------------
;	Write 256 bytes to the ATA/IDE controller from the memory pointed to by X
;
FLEX_WRITE_256
	CLRB
FLEX_WRITE_256_MORE
	LDA	,X+
	STA	ata_ide_data
	DECB
	BNE	FLEX_WRITE_256_MORE
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
;	FLEX track numbers count from 00-FF.
;	FLEX sector numbers count from 01-FF.
;
FLEX_READ
	LBSR	ata_ide_wait_for_not_busy		; wait until not busy
	LBSR	ata_ide_wait_for_drdy			; wait until drive ready
	LBSR	FLEX_SECTOR_TO_LBA				; write the track and sector numbers to the LBA regisgers

	LDA	#ata_ide_command_read_sector	; issue the command
	STA	ata_ide_command

	LBSR	ata_ide_wait_for_not_busy		; wait until not busy
	LBSR	FLEX_READ_256						; read the first 256 bytes
	LDX	#$F000								; discard second half of IDE sector by writing it to ROM
	LBSR	FLEX_READ_256						; read the second 256 bytes
	CLRB											; set the FLEX success condition state
	RTS

;
;	FLEX_WRITE_256
;	--------------
;	Write 256 bytes to the ATA/IDE controller from the memory pointed to by X
;
FLEX_WRITE_256_B
	CLRB
FLEX_WRITE_256_B_MORE
	LDA	,X+
	STA	ata_ide_data
	DECB
	BNE	FLEX_WRITE_256_B_MORE
	RTS

;
;	FLEX_WRITE
;	----------
;
;	On Entry:
;		(X) = Address of 256 memory buffer containing data to be written to disk
;		(A) = Track Number
;		(B) = Sector Number
;	On Exit:
;		(X) May be destroyed
;		(A) May be destroyed
;		(B) = Error condition
;		(Z) = 1 if no error
;		    = 0 if an error
;
FLEX_WRITE
	LBSR	ata_ide_wait_for_not_busy		; wait until not busy
	LBSR	ata_ide_wait_for_drdy			; wait until drive ready
	LBSR	FLEX_SECTOR_TO_LBA				; write the track and sector numbers to the LBA regisgers

	LDA	#ata_ide_command_write_sector	; issue the command
	STA	ata_ide_command

	LBSR	ata_ide_wait_for_not_busy		; wait until not busy

	PSHS	X
	LBSR	FLEX_WRITE_256_B					; read the first 256 bytes
	PULS	X
	LBSR	FLEX_WRITE_256_B					; read the second 256 bytes
	CLRB											; set the FLEX success condition state
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
	BEQ	FLEX_DRIVE_ZERO
	CMPA	#$01
	BEQ	FLEX_DRIVE_ONE
	LDB	#$1F						; load with fail state before we set the flags (next line)
	ASRB								; set B=$0F, Z=0, and C=1
	RTS
FLEX_DRIVE_ZERO
	LDA	#$E0						; LBA mode, drive 0
	STA	ata_ide_disk_head
	CLRB								; set B=$00, Z=1, and C=0
	RTS
FLEX_DRIVE_ONE
	LDA	#$F0						; LBA mode, drive 1
	STA	ata_ide_disk_head
	CLRB								; set B=$00, Z=1, and C=0
	RTS

;
;	FLEX_INIT
;	---------
;	Driver initialize (cold start)
;
FLEX_INIT
	;
	;	Copy the FLEX disk driver jump table into RAM
	;
	LDX	#FLEX_disk_driver_routine_jump_table
	LDY	#FLEX_disk_driver_routine_jump_table_address
FLEX_INIT_COPY
	LDA	,X+
	STA	,Y+
	CMPX	#FLEX_disk_driver_routine_jump_table_end
	BNE	FLEX_INIT_COPY

	;
	;	Initialise the IDE interface
	;
	LDA	#$E0		; LBA3=0, MASTER, MODE=LBA
	STA	ata_ide_disk_head

	LBSR	ata_ide_wait_for_not_busy		; wait until not busy
	LBSR	ata_ide_wait_for_drdy			; wait until drive ready

	LDA	#$E0		; LBA3=0, MASTER, MODE=LBA
	STA	ata_ide_disk_head

	LDA	#ata_ide_feature_8_bit			; 8-bit I/O
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
	CLRB
	RTS

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
;
;	Read the disk head register and make sure the compulsory set bits are set
;	if they are then the device must be connected - and is therefore ready.
;
FLEX_CHKRDY
	LDA	ata_ide_disk_head
	ANDA	#$E0
	CMPA	#$E0
	BEQ	FLEX_CHKRDY_READY
	LDA	#%00000001			; EFHINZVC
	TFR	A,CC
	RTS
FLEX_CHKRDY_READY
	CLRB
	RTS
	
