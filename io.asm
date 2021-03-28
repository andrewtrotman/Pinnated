;
;	IO.ASM
;	------
;	IO methods via a jump table
;

;
; Branch Table
;
io_initialise	EQU	serial_init
io_getchar EQU serial_getchar
io_putchar EQU serial_putchar

;
;	IO_INIT
;	-------
;	Initialise the I/O console subsystem
;
io_init
	BRA io_initialise
	RTS

;
;	IO_PUTS
;	-------
;	Print the '\0' terminated string pointed to by X
;
io_puts
	PSHS A,X
io_putchar_next
	LDA ,X+
	BEQ io_puts_done
	BSR serial_putchar
	BRA io_putchar_next
io_puts_done
	PULS A,X
	RTS
