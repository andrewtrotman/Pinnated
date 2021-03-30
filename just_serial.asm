serial_status 	EQU $E004
serial_control EQU $E004
serial_data		EQU $E005

serial_status_tdre		EQU %00000010

; 115200 N81
serial_baud_rate_115200 EQU %00010110
serial_reset EQU %00010111

start
	ORG $F400
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
	org $FFF0

vector_reserved
	FDB start
vector_swi3
	FDB start
vector_swi2
	FDB start
vector_firq
	FDB start
vector_irq
	FDB start
vector_swi
	FDB start
vector_nmi
	FDB start
vector_reset
	FDB start
