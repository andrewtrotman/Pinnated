;
;	LCD.ASM
;	-------
;	Methods to control an Ampire 162B 16x2 LCD
;	display based on the KS0066U controller
;

lcd_command	EQU $E090
lcd_status	EQU $E090
lcd_data	EQU $E091

;
;	LCD_INIT
;	--------
;	Initialise the LCD display
;
lcd_init
	PSHS A
	BSR lcd_wait

	LDA #%00111100			; Function set
	STA lcd_command
	BSR lcd_wait

	LDA #%00001110			; Display on
	STA lcd_command
	BSR lcd_wait

	LDA #%00000001			; Display clear
	STA lcd_command
	BSR lcd_wait

	LDA #%00000110			; Entry mode set
	STA lcd_command
	BSR lcd_wait

	LDA #%10000000			; set DDRAM address (next operation is write to display)
	STA lcd_command
	BSR lcd_wait

	PULS A
	RTS

;
;	LCD_PUTCHAR
;	-----------
;	Print the character in A
;
lcd_putchar
	STA lcd_data
	BSR lcd_wait
	RTS

;
;	LCD_PUTS
;	--------
;	Print the '\0' terminated string pointed to by X
;
lcd_puts
	PSHS A,X
lcd_putchar_next
	LDA ,X+
	BEQ lcd_puts_done
	BSR lcd_putchar
	BRA lcd_putchar_next
lcd_puts_done
	PULS A,X
	RTS

;
;	LCD_WAIT
;	--------
;	Wait until LCD status register indicates ready
;	That is, check the top bit of the status register
;
lcd_wait
	PSHS A
lcd_wait_longer
	LDA lcd_status
	BMI lcd_wait_longer
	PULS A
	RTS
