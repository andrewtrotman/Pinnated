	ORG $1000

	LDU #$B000
	LDS #$C000

	INCLUDE ram.asm
	
	LBSR main
	
end
	BRA end

	INCLUDE lcd.asm

main
	LBSR lcd_init

again
	LEAX string_boot,pcr
	LBSR lcd_puts
	LBSR wait
	BRA again

string_boot
	FCN "RAM Test"



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


