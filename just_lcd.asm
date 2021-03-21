lcd_command 	EQU $E090
lcd_status	EQU $E090
lcd_data	EQU $E091


main
	ORG $1000
	LDU #$B000
	LDS #$C000

lcd_init_start
lcd_wait_longer_1
	LDA lcd_status
	BMI lcd_wait_longer_1

	LDA #%00111100			; Function set
	STA lcd_command
lcd_wait_longer_2
	LDA lcd_status
	BMI lcd_wait_longer_2

	LDA #%00001110			; Display on
	STA lcd_command
lcd_wait_longer_3
	LDA lcd_status
	BMI lcd_wait_longer_3

	LDA #%00000001			; Display clear
	STA lcd_command
lcd_wait_longer_4
	LDA lcd_status
	BMI lcd_wait_longer_4

	LDA #%00000110			; Entry mode set
	STA lcd_command
lcd_wait_longer_5
	LDA lcd_status
	BMI lcd_wait_longer_5

	LDA #%10000000			; set DDRAM address (next operation is write to dispay)
	STA lcd_command
lcd_wait_longer_6
	LDA lcd_status
	BMI lcd_wait_longer_6
lcd_init_end


again
	LEAX string_boot,pcr

lcd_putchar_next
	LDA ,X+
	BEQ lcd_puts_done

	STA lcd_data
lcd_wait_longer_7
	LDA lcd_status
	BMI lcd_wait_longer_7

	BRA lcd_putchar_next
lcd_puts_done

wait
	LDX #$FFFF
wait_next
	LEAX -1,X
	CMPX #$0000
	BNE wait_next

	BRA again

string_boot
	FCN "Pinnated 6809"



;
;	6809 INTERRUPT VECTORS
;	----------------------
;
	org $1FF0

vector_reserved
	FDB $F000
vector_swi3
	FDB $F000
vector_swi2
	FDB $F000
vector_firq
	FDB $F000
vector_irq
	FDB $F000
vector_swi
	FDB $F000
vector_nmi
	FDB $F000
vector_reset
	FDB $F000

