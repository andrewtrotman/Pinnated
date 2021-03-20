serial_status 	EQU $E004
serial_control EQU $E004
serial_data		EQU $E005

serial_status_tdre		EQU %00000010

; 115200 N81
serial_baud_rate_115200 EQU %00010110
serial_reset EQU %00010111

	ORG $1000
	LDU #$B000
	LDS #$C000

wait
	LDX #$4FFF
wait_next
	LEAX -1,X
	CMPX #$0000
	BNE wait_next

init
	LDA #serial_reset
	STA serial_control
	LDA #serial_baud_rate_115200
	STA serial_control

repeat
	LEAX string_boot,pcr

serial_putchar_next
	LDA ,X+
	BEQ serial_puts_done
serial_putchar
	STA serial_data
serial_wait_longer
	LDA serial_status
	BITA #serial_status_tdre
	BEQ serial_wait_longer
	BRA serial_putchar_next

serial_puts_done
	BRA repeat

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
