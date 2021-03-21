;
;	SERIAL.ASM
;	----------
;	Control of MC68B50 serial port
;

serial_status 	EQU $E004
serial_control EQU $E004
serial_data		EQU $E005

;
; bit 1 is the transmit data register empty bit (1 = clear to send, 0 = busy)
;
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
serial_init
	LDA #serial_reset
	STA serial_control
	LDA #serial_baud_rate_115200
	STA serial_control
	RTS

;
;	SERIAL_PUTCHAR
;	--------------
;	Print the character in A
;
serial_putchar
	STA serial_data
	BSR serial_wait
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

;
;	SERIAL_WAIT
;	-----------
;	Wait until status register indicates ready
;
serial_wait
	PSHS A
serial_wait_longer
	LDA serial_status
	BITA #serial_status_tdre
	BEQ serial_wait_longer
	PULS A
	RTS
