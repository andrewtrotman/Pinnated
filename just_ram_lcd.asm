	ORG $1000

main
	INCLUDE ram.asm

stack_init
	LDU #$A000
	LDS #$B000

	LBSR lcd_init

print_message
	LEAX string_boot,pcr
	LBSR lcd_puts
	LBSR wait

	LEAX ram_page_table_1,pcr
	LDY #ram_dat_table_start
ram_init_more_1
	LDA ,X+
	COMA
	STA ,Y+
	CMPY #ram_dat_table_end
	BLO ram_init_more_1


	LBSR memcheck
	LBSR wait


	LEAX ram_page_table_repeat,pcr
	LDY #ram_dat_table_start
ram_init_more_2
	LDA ,X+
	COMA
	STA ,Y+
	CMPY #ram_dat_table_end
	BLO ram_init_more_2

	LBSR memcheck
	LBSR wait

	LBRA print_message

memcheck
	PSHS D

	LDA #$5A
	STA $1000

	LDA $1000
	LBSR check_one
	LDA $3000
	LBSR check_one
	LDA $5000
	LBSR check_one
	LDA $7000
	LBSR check_one
	LDA $9000
	LBSR check_one
	LDA $B000
	LBSR check_one
	LDA $D000
	LBSR check_one

	PULS D
	RTS


check_one
	LDB #'Y'
	CMPA #$5A
	BEQ check_one_yes
	LDB #'N'
check_one_yes
	STB lcd_data
	LBSR lcd_wait
	RTS


string_boot
	FCN "RT:"

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


ram_page_table_repeat
	FCB $01,$02,$01,$02,$01,$02,$01,$02,$01,$02,$01,$02,$01,$02,$01,$02


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
