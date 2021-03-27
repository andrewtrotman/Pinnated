;
;	IO.ASM
;	------
;	IO methods via a jump table
;

;
; Branch Table
;
io_init	FDB	serial_init
io_getchar FDB serial_getchar
io_putchar FDB serial_putchar

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
	BSR [io_putchar]
	BRA io_putchar_next
io_puts_done
	PULS A,X
	RTS
