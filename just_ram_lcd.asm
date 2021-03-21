	ORG $1000

main
	INCLUDE ram.asm

stack_init
	LDU #$A000
	LDS #$B000
stack_init_done

	LBSR lcd_init

print_message
	LEAX string_boot,pcr
	LBSR lcd_puts
	LBSR wait

memcheck
	LDA #$FF
	STA $1000
	LDA #$FE
	STA $0FFF
	LDA #$FD
	STA $0FFE
	LDA #$FC
	STA $0FFD
	LDA #$FB
	STA $0FFC
	LDA #$FA
	STA $0FFB

	LDB #'Y'
	LDA $1000
	CMPA #$FF
	BEQ print_yes_1
	LDB #'N'
print_yes_1
	STB lcd_data
	LBSR lcd_wait

	LDB #'Y'
	LDA $0FFF
	CMPA #$FE
	BEQ print_yes_20
	LDB #'N'
print_yes_20
	STB lcd_data
	LBSR lcd_wait

	LDB #'Y'
	LDA $0FFE
	CMPA #$FD
	BEQ print_yes_21
	LDB #'N'
print_yes_21
	STB lcd_data
	LBSR lcd_wait

	LDB #'Y'
	LDA $0FFD
	CMPA #$FC
	BEQ print_yes_22
	LDB #'N'
print_yes_22
	STB lcd_data
	LBSR lcd_wait

	LDB #'Y'
	LDA $0FFC
	CMPA #$FB
	BEQ print_yes_23
	LDB #'N'
print_yes_23
	STB lcd_data
	LBSR lcd_wait

	LDB #'Y'
	LDA $0FFB
	CMPA #$FA
	BEQ print_yes_24
	LDB #'N'
print_yes_24
	STB lcd_data
	LBSR lcd_wait


	LBSR wait
	LBRA print_message



string_boot
	FCN "RamTest:"

;
;	WAIT
;	----
;	Wait a bit
;
wait
	PSHS X
	LDX #$FFFF
wait_next
	LEAX -1,X
	CMPX #$0000
	BNE wait_next
	PULS X
	RTS


	INCLUDE lcd.asm

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
