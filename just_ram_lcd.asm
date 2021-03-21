	ORG $1000

ram_dat_table_start EQU $E050
ram_dat_table_end	EQU $E060
ram_map1_select EQU $E060
ram_map2_select EQU $E070

main
ram_init
	LDA #$FF
	STA ram_map1_select
	LEAX ram_page_table_1,pcr
	LDY #ram_dat_table_start
ram_init_more
	LDA ,X+
	COMA
	STA ,Y+
	CMPY #ram_dat_table_end
	BLO ram_init_more
ram_init_done

stack_init
	LDU #$1000
	LDS #$2000
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
	FCN "RamTst:"

ram_page_table_1
	FCB $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0C,$0D,$0E,$0F


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
