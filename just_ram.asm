	ORG $1000

ram_dat_table_start EQU $E050
ram_dat_table_end	EQU $E060
ram_map1_select EQU $E060
ram_map2_select EQU $E070

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

loop
	LDA $0000
	STA $0001
	BRA loop
	
ram_page_table_1
	FCB $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0C,$0D,$0E,$0F


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


