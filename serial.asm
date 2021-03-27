;
;	SERIAL.ASM
;	----------
;	Control of MC68B50 serial port
;

serial_status 	EQU $E004
serial_control EQU $E004
serial_data		EQU $E005

;
; bit 0 is the receive data register full bit (1 = data ready to be read, 0 = no data)
; bit 1 is the transmit data register empty bit (1 = clear to send, 0 = busy)
;
serial_status_rdrf		EQU %00000001
serial_status_tdre		EQU %00000010

;
;	Using No start bits, 8 bit transmission and 1 stop bit
;	The 68B50 clock is 7,372,800
;	baud rate 115200  = E/64
;
serial_baud_rate_115200 EQU %00010110

;
;	When $03 is send to the control port the decice is reset
;
serial_reset EQU %00000011

;
;	SERIAL_INIT
;	-----------
;
FLEX_TINIT		; TERMINAL INITIALIZATION
serial_init
	LDA #serial_reset
	STA serial_control
	LDA #serial_baud_rate_115200
	STA serial_control
	RTS

;
;	SERIAL_PEEK
;	-----------
;	Check to see if a character is ready to be read, and if so then set
FLEX_STAT		; CHECK TERMINAL STATUS
	PSHS A
	LDA serial_status
	BITA #serial_status_rdrf
	PULS A
	RTS

;
;	SERIAL_GETCHAR
;	--------------
;	Blocking read of a character from the serial port, and return in A
;
FLEX_INCHNE		; INPUT CHARACTER W/O ECHO
serial_getchar
	LDA serial_status					; for a character to arrive
	BITA #serial_status_rdrf
	BEQ serial_getchar

	LDA serial_data					; read the character that has arrived
	RTS

;
;	SERIAL_GETCHAR_ECHO
;	-------------------
;	Blocking read of a character from the serial port, echo, and return in A
;
FLEX_INCH		; INPUT CHARACTER W/ ECHO
serial_getchar_echo
	BSR serial_getchar
	BSR serial_putchar
	RTS

;
;	SERIAL_PUTCHAR
;	--------------
;	Print the character in A
;
FLEX_OUTCH		; OUTPUT CHARACTER
serial_putchar
	PSHS A								; wait for clear to write
serial_putchar_wait
	LDA serial_status
	BITA #serial_status_tdre
	BEQ serial_putchar_wait
	PULS A

	STA serial_data					; write
	RTS

;
;	SERIAL_PUTS
;	-----------
;	Print the '\0' terminated string pointed to by X
;
serial_puts
	PSHS A,X
serial_putchar_next
	LDA ,X+
	BEQ serial_puts_done
	BSR serial_putchar
	BRA serial_putchar_next
serial_puts_done
	PULS A,X
	RTS
