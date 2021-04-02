EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "My6809"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Entry Wire Line
	2850 8400 2950 8500
Entry Wire Line
	2850 8500 2950 8600
Entry Wire Line
	2850 8600 2950 8700
Entry Wire Line
	2850 8700 2950 8800
Entry Wire Line
	2850 8800 2950 8900
Entry Wire Line
	2850 8900 2950 9000
Entry Wire Line
	2850 9000 2950 9100
Entry Wire Line
	2850 9100 2950 9200
Entry Wire Line
	2850 9200 2950 9300
Entry Wire Line
	2850 9300 2950 9400
Entry Wire Line
	2850 9400 2950 9500
Entry Wire Line
	2850 9500 2950 9600
Entry Wire Line
	2850 9600 2950 9700
Entry Wire Line
	2850 9700 2950 9800
Entry Wire Line
	2850 9800 2950 9900
Entry Wire Line
	2850 9900 2950 10000
Wire Wire Line
	2950 8500 3100 8500
Wire Wire Line
	2950 8600 3100 8600
Wire Wire Line
	2950 8700 3100 8700
Wire Wire Line
	2950 8800 3100 8800
Wire Wire Line
	2950 8900 3100 8900
Wire Wire Line
	2950 9000 3100 9000
Wire Wire Line
	2950 9100 3100 9100
Wire Wire Line
	2950 9200 3100 9200
Wire Wire Line
	2950 9300 3100 9300
Wire Wire Line
	2950 9400 3100 9400
Wire Wire Line
	2950 9500 3100 9500
Wire Wire Line
	2950 9600 3100 9600
Wire Wire Line
	2950 9700 3100 9700
Wire Wire Line
	2950 9800 3100 9800
Wire Wire Line
	2950 9900 3100 9900
Wire Wire Line
	2950 10000 3100 10000
Text Label 3000 8500 0    60   ~ 0
A0
Text Label 3000 8600 0    60   ~ 0
A1
Text Label 3000 8700 0    60   ~ 0
A2
Text Label 3000 8800 0    60   ~ 0
A3
Text Label 3000 8900 0    60   ~ 0
A4
Text Label 3000 9000 0    60   ~ 0
A5
Text Label 3000 9100 0    60   ~ 0
A6
Text Label 3000 9200 0    60   ~ 0
A7
Text Label 3000 9300 0    60   ~ 0
A8
Text Label 3000 9400 0    60   ~ 0
A9
Text Label 3000 9500 0    60   ~ 0
A10
Text Label 3000 9600 0    60   ~ 0
A11
Text Label 3000 9700 0    60   ~ 0
A12
Text Label 3000 9800 0    60   ~ 0
A13
Text Label 3000 9900 0    60   ~ 0
A14
Text Label 3000 10000 0    60   ~ 0
A15
Text GLabel 3800 11000 3    39   Input ~ 0
GND
Text GLabel 3800 8100 1    39   Input ~ 0
+5v
Text GLabel 3100 10300 0    39   Input ~ 0
~RAM-SELECT
Text GLabel 3100 10500 0    39   Input ~ 0
~READ-ENABLE
Text GLabel 3100 10600 0    39   Input ~ 0
~WRITE-ENABLE
Text Notes 4050 7900 2    60   ~ 0
128KB RAM
Text Notes 15450 750  2    60   ~ 0
Reset Circuit
Text GLabel 1550 9600 3    39   Input ~ 0
GND
Entry Wire Line
	750  7700 850  7800
Entry Wire Line
	750  7800 850  7900
Entry Wire Line
	750  7900 850  8000
Entry Wire Line
	750  8000 850  8100
Entry Wire Line
	750  8100 850  8200
Entry Wire Line
	750  8200 850  8300
Entry Wire Line
	750  8300 850  8400
Entry Wire Line
	750  8400 850  8500
$Comp
L Memory_EPROM:27C64 U9
U 1 1 5F332018
P 1550 8500
F 0 "U9" H 1650 8100 39  0000 C CNN
F 1 "27C64" H 1650 8000 39  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket_LongPads" H 1550 8500 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/11107M.pdf" H 1550 8500 50  0001 C CNN
	1    1550 8500
	1    0    0    -1  
$EndComp
Text Notes 1700 7250 2    60   ~ 0
4KB ROM
Text GLabel 1150 9400 0    39   Input ~ 0
~READ-ENABLE
Text GLabel 1150 9300 0    39   Input ~ 0
~ROM-SELECT
Text GLabel 1550 7500 1    39   Input ~ 0
+5v
Entry Wire Line
	750  8700 850  8800
Entry Wire Line
	750  8600 850  8700
Entry Wire Line
	750  8500 850  8600
Entry Wire Line
	750  7600 850  7700
Text Label 1000 8800 0    60   ~ 0
A11
Text Label 1000 8700 0    60   ~ 0
A10
Text Label 1000 8600 0    60   ~ 0
A9
Text Label 1000 8500 0    60   ~ 0
A8
Text Label 1000 8400 0    60   ~ 0
A7
Text Label 1000 8300 0    60   ~ 0
A6
Text Label 1000 8200 0    60   ~ 0
A5
Text Label 1000 8100 0    60   ~ 0
A4
Text Label 1000 8000 0    60   ~ 0
A3
Text Label 1000 7900 0    60   ~ 0
A2
Text Label 1000 7800 0    60   ~ 0
A1
Text Label 1000 7700 0    60   ~ 0
A0
Wire Wire Line
	1150 8800 850  8800
Wire Wire Line
	1150 8700 850  8700
Wire Wire Line
	1150 8600 850  8600
Wire Wire Line
	1150 8500 850  8500
Wire Wire Line
	1150 8400 850  8400
Wire Wire Line
	1150 8300 850  8300
Wire Wire Line
	1150 8200 850  8200
Wire Wire Line
	1150 8100 850  8100
Wire Wire Line
	1150 8000 850  8000
Wire Wire Line
	1150 7900 850  7900
Wire Wire Line
	1150 7800 850  7800
Wire Wire Line
	850  7700 1150 7700
Text Label 2000 7900 0    60   ~ 0
D2
Text Label 2000 8400 0    60   ~ 0
D7
Text Label 2000 8300 0    60   ~ 0
D6
Text Label 2000 8200 0    60   ~ 0
D5
Text Label 2000 8100 0    60   ~ 0
D4
Text Label 2000 8000 0    60   ~ 0
D3
Text Label 2000 7800 0    60   ~ 0
D1
Text Label 2000 7700 0    60   ~ 0
D0
Wire Wire Line
	1950 8400 2100 8400
Wire Wire Line
	1950 8300 2100 8300
Wire Wire Line
	1950 8200 2100 8200
Wire Wire Line
	1950 8100 2100 8100
Wire Wire Line
	1950 8000 2100 8000
Wire Wire Line
	1950 7700 2100 7700
Wire Wire Line
	1950 7900 2100 7900
Wire Wire Line
	1950 7800 2100 7800
Entry Wire Line
	2100 8400 2200 8500
Entry Wire Line
	2100 8300 2200 8400
Entry Wire Line
	2100 8200 2200 8300
Entry Wire Line
	2100 8100 2200 8200
Entry Wire Line
	2100 8000 2200 8100
Entry Wire Line
	2100 7900 2200 8000
Entry Wire Line
	2100 7800 2200 7900
Entry Wire Line
	2100 7700 2200 7800
Text GLabel 1150 9100 0    39   Input ~ 0
+5v
$Comp
L 74xx:74LS00 U5
U 4 1 5F7346D0
P 15150 3300
F 0 "U5" H 15150 3350 39  0000 C CNN
F 1 "74HC00" H 15150 3250 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 15150 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 15150 3300 50  0001 C CNN
	4    15150 3300
	1    0    0    -1  
$EndComp
Text GLabel 15450 3300 2    39   Output ~ 0
~WRITE-ENABLE
Text GLabel 15450 2900 2    39   Output ~ 0
~READ-ENABLE
Text GLabel 15050 1250 3    39   Output ~ 0
~RESET
Text GLabel 14800 1150 0    39   Input ~ 0
+5v
Text GLabel 15800 1150 2    39   Input ~ 0
GND
$Comp
L Device:R_Small_US R1
U 1 1 5FC265C8
P 14900 1150
F 0 "R1" V 14695 1150 50  0000 C CNN
F 1 "10k" V 14786 1150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 14900 1150 50  0001 C CNN
F 3 "~" H 14900 1150 50  0001 C CNN
	1    14900 1150
	0    -1   1    0   
$EndComp
Wire Wire Line
	15000 1150 15050 1150
Wire Wire Line
	15050 1250 15050 1150
Wire Wire Line
	15550 1150 15800 1150
$Comp
L Switch:SW_Push SW1
U 1 1 5FC9E7EB
P 15350 1150
F 0 "SW1" H 15350 1435 50  0000 C CNN
F 1 "Reset" H 15350 1344 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical" H 15350 1350 50  0001 C CNN
F 3 "~" H 15350 1350 50  0001 C CNN
	1    15350 1150
	1    0    0    -1  
$EndComp
Connection ~ 15050 1150
Wire Wire Line
	15050 1150 15150 1150
$Comp
L Device:C C18
U 1 1 5F60A8E4
P 15350 1400
F 0 "C18" V 15200 1350 50  0000 L CNN
F 1 "0.1uF" V 15100 1300 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 15388 1250 50  0001 C CNN
F 3 "~" H 15350 1400 50  0001 C CNN
	1    15350 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15150 1150 15150 1400
Wire Wire Line
	15150 1400 15200 1400
Connection ~ 15150 1150
Wire Wire Line
	15550 1150 15550 1400
Wire Wire Line
	15550 1400 15500 1400
Connection ~ 15550 1150
Text GLabel 1150 8900 0    39   Input ~ 0
+5v
Wire Wire Line
	14100 2800 14100 3200
Wire Wire Line
	14100 2800 14000 2800
Connection ~ 14100 2800
Wire Wire Line
	14850 3200 14100 3200
Text GLabel 14000 2800 0    39   Input ~ 0
E
Wire Wire Line
	14250 2800 14100 2800
Text GLabel 14000 3400 0    39   Input ~ 0
R|~W
$Comp
L 74xx:74LS00 U5
U 3 1 5F73D829
P 14550 2900
F 0 "U5" H 14550 2950 39  0000 C CNN
F 1 "74HC00" H 14550 2850 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 14550 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 14550 2900 50  0001 C CNN
	3    14550 2900
	1    0    0    -1  
$EndComp
Text Notes 15300 2600 2    60   ~ 0
R/~W~ decoding logic
Text Notes 11200 1200 0    60   ~ 0
Address Decoding With Protection logic\nWith PROT\n  4KB ROM\n  4KB Peripherals\n  56KB RAM\nWithout PROT\n  64K RAM
Text Notes 12200 1050 0    50   ~ 0
FLEX NEEDS:\n8K from C000 to DFFF\n12K from 0000 to 2FFF
$Comp
L 74xx:74LS08 U4
U 4 1 5FCF7AAE
P 11650 1600
F 0 "U4" H 11600 1650 39  0000 C CNN
F 1 "74HC08" H 11650 1550 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 11650 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 11650 1600 50  0001 C CNN
	4    11650 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	11950 1600 12000 1600
Entry Wire Line
	10400 1600 10500 1700
Entry Wire Line
	10400 1500 10500 1600
Wire Wire Line
	10500 1400 10750 1400
Wire Wire Line
	10500 1600 10750 1600
Wire Wire Line
	10500 1700 11350 1700
Entry Wire Line
	10400 1300 10500 1400
$Comp
L 74xx:74LS08 U4
U 3 1 5FCF7AC3
P 11050 1500
F 0 "U4" H 11000 1550 39  0000 C CNN
F 1 "74HC08" H 11050 1450 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 11050 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 11050 1500 50  0001 C CNN
	3    11050 1500
	1    0    0    -1  
$EndComp
Text Label 10550 1400 0    50   ~ 0
A15
Text Label 10550 1600 0    50   ~ 0
A14
Text Label 10550 1700 0    50   ~ 0
A13
Text Label 10550 1900 0    50   ~ 0
A12
Wire Wire Line
	13350 1700 13350 1800
Wire Wire Line
	13350 1800 13450 1800
Connection ~ 13350 1800
Wire Wire Line
	13350 1700 14050 1700
Wire Wire Line
	13300 1800 13350 1800
Wire Wire Line
	12600 1700 12700 1700
Text GLabel 14050 1700 2    39   Output ~ 0
~ROM-SELECT
$Comp
L 74xx:74LS08 U4
U 2 1 5FDFA4E6
P 12300 1700
F 0 "U4" H 12250 1750 39  0000 C CNN
F 1 "74HC08" H 12300 1650 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 12300 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 12300 1700 50  0001 C CNN
	2    12300 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1900 12700 1900
Wire Wire Line
	12600 2000 12600 2100
Connection ~ 12600 2000
Wire Wire Line
	12600 1700 12600 2000
Text GLabel 14050 2100 2    39   Output ~ 0
~RAM-SELECT
Text GLabel 14050 1900 2    39   Output ~ 0
~SLOT-SELECT
$Comp
L 74xx:74LS08 U4
U 1 1 5FCF7AA8
P 7750 9650
F 0 "U4" H 7750 9700 39  0000 C CNN
F 1 "74HC08" H 7750 9600 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7750 9650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 7750 9650 50  0001 C CNN
	1    7750 9650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U5
U 1 1 5FCF7AB4
P 13000 1800
F 0 "U5" H 12950 1850 39  0000 C CNN
F 1 "74HC00" H 13000 1750 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 13000 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 13000 1800 50  0001 C CNN
	1    13000 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 2000 12600 2000
Wire Wire Line
	12600 2100 14050 2100
Connection ~ 12600 1700
Text GLabel 1200 6200 0    39   Input ~ 0
~SLOT-SELECT
Entry Wire Line
	700  5600 800  5700
Entry Wire Line
	700  5700 800  5800
Entry Wire Line
	700  5800 800  5900
Text Label 850  5700 0    50   ~ 0
A9
Text Label 850  5800 0    50   ~ 0
A10
Text Label 850  5900 0    50   ~ 0
A11
$Comp
L 74xx:74LS32 U12
U 1 1 608BAE98
P 1500 5700
F 0 "U12" H 1500 5750 39  0000 C CNN
F 1 "74HC32" H 1500 5650 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1500 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 1500 5700 50  0001 C CNN
	1    1500 5700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U7
U 1 1 611E98F5
P 12300 2750
F 0 "U7" H 12300 2800 39  0000 C CNN
F 1 "74HC74" H 12300 2700 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 12300 2750 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 12300 2750 50  0001 C CNN
	1    12300 2750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U7
U 2 1 611EB890
P 13150 2750
F 0 "U7" H 13150 2800 39  0000 C CNN
F 1 "74HC74" H 13150 2700 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 13150 2750 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 13150 2750 50  0001 C CNN
	2    13150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	12850 2750 12850 3200
Wire Wire Line
	12850 3200 12000 3200
Wire Wire Line
	12000 3200 12000 2750
Wire Wire Line
	12000 2750 11800 2750
Connection ~ 12000 2750
Text GLabel 11800 2750 0    39   Input ~ 0
E
Wire Wire Line
	12300 3050 13150 3050
$Comp
L 74xx:74LS04 U6
U 4 1 614AD870
P 10900 3150
F 0 "U6" H 10850 3200 39  0000 C CNN
F 1 "74HC04" H 10900 3100 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 10900 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 10900 3150 50  0001 C CNN
	4    10900 3150
	1    0    0    -1  
$EndComp
Text GLabel 10600 3150 0    39   Input ~ 0
BA
Text GLabel 11200 2950 0    39   Input ~ 0
BS
$Comp
L 74xx:74LS00 U5
U 2 1 6152C999
P 11500 3050
F 0 "U5" H 11500 3100 39  0000 C CNN
F 1 "74HC00" H 11500 3000 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 11500 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 11500 3050 50  0001 C CNN
	2    11500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	11800 3050 12300 3050
Connection ~ 12300 3050
Text GLabel 13450 2850 2    39   Output ~ 0
PROT
Text GLabel 12000 1800 0    39   Input ~ 0
PROT
Text GLabel 12000 2650 0    39   Input ~ 0
~LEAVE-PROT
$Comp
L 74xx:74LS04 U6
U 3 1 61C18356
P 2450 10400
F 0 "U6" H 2400 10450 39  0000 C CNN
F 1 "74HC04" H 2450 10350 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2450 10400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 2450 10400 50  0001 C CNN
	3    2450 10400
	1    0    0    -1  
$EndComp
Text GLabel 12300 2450 1    39   Input ~ 0
+5v
Text GLabel 13150 2450 1    39   Input ~ 0
+5v
Wire Wire Line
	14850 2900 15450 2900
Wire Wire Line
	8800 2150 9050 2150
Wire Wire Line
	8800 2250 9050 2250
Wire Wire Line
	8800 2350 9050 2350
Wire Wire Line
	8800 2450 9050 2450
Entry Wire Line
	9050 2150 9150 2250
Entry Wire Line
	9050 2250 9150 2350
Entry Wire Line
	9050 2350 9150 2450
Entry Wire Line
	9050 2450 9150 2550
Text Label 8850 2450 0    50   ~ 0
A16
Text Label 8850 2350 0    50   ~ 0
A15
Text Label 8850 2250 0    50   ~ 0
A14
Text Label 8850 2150 0    50   ~ 0
A13
Text GLabel 8300 1050 1    39   Input ~ 0
+5v
Text Label 7700 2450 0    60   ~ 0
D3
Text Label 7700 2350 0    60   ~ 0
D2
Text Label 7700 2250 0    60   ~ 0
D1
Text Label 7700 2150 0    60   ~ 0
D0
Wire Wire Line
	7650 2450 7800 2450
Wire Wire Line
	7650 2350 7800 2350
Wire Wire Line
	7650 2250 7800 2250
Wire Wire Line
	7650 2150 7800 2150
Entry Wire Line
	7550 2350 7650 2450
Entry Wire Line
	7550 2250 7650 2350
Entry Wire Line
	7550 2150 7650 2250
Entry Wire Line
	7550 2050 7650 2150
$Comp
L 74xx:74LS157 U2
U 1 1 6085A92B
P 6200 1850
F 0 "U2" H 6200 1750 39  0000 C CNN
F 1 "74HC157" H 6200 1650 39  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 6200 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 6200 1850 50  0001 C CNN
	1    6200 1850
	1    0    0    -1  
$EndComp
Text GLabel 6200 950  1    39   Input ~ 0
+5v
Wire Wire Line
	6700 1950 6700 2150
Wire Wire Line
	6700 1550 6700 1750
Wire Wire Line
	6700 1250 6800 1250
Wire Wire Line
	6800 1250 6800 1650
Entry Wire Line
	5400 1150 5500 1250
Entry Wire Line
	5400 1250 5500 1350
Entry Wire Line
	5400 1450 5500 1550
Entry Wire Line
	5400 1550 5500 1650
Entry Wire Line
	5400 1750 5500 1850
Entry Wire Line
	5400 1850 5500 1950
Entry Wire Line
	5400 2050 5500 2150
Text GLabel 7800 1350 0    39   Input ~ 0
GND
Text GLabel 5700 2550 0    39   Input ~ 0
GND
Text GLabel 6200 2850 3    39   Input ~ 0
GND
Text Label 5550 1250 0    50   ~ 0
A0
Text Label 5550 1550 0    50   ~ 0
A1
Text Label 5550 1850 0    50   ~ 0
A2
Text Label 5550 2150 0    50   ~ 0
A3
Text Label 5550 1350 0    50   ~ 0
AA13
Text Label 5550 1650 0    50   ~ 0
AA14
Text Label 5550 1950 0    50   ~ 0
AA15
Wire Wire Line
	6700 1950 7050 1950
Wire Wire Line
	6700 1850 7150 1850
Wire Wire Line
	6700 1750 7250 1750
Wire Wire Line
	6800 1650 7350 1650
Wire Wire Line
	5500 1250 5700 1250
Wire Wire Line
	5500 1350 5700 1350
Wire Wire Line
	5500 1550 5700 1550
Wire Wire Line
	5500 1650 5700 1650
Wire Wire Line
	5500 1850 5700 1850
Wire Wire Line
	5500 1950 5700 1950
Wire Wire Line
	5500 2150 5700 2150
Text Notes 6350 700  0    50   ~ 0
Dynamic Address Translation (DAT)
Entry Wire Line
	2850 10000 2950 10100
Wire Wire Line
	2950 10100 3100 10100
Text Label 3000 10100 0    60   ~ 0
A16
Wire Wire Line
	5350 3050 5350 2450
Wire Wire Line
	5350 2450 5700 2450
$Comp
L 74xx:74LS04 U6
U 1 1 62FC8838
P 11300 8450
F 0 "U6" H 11250 8500 39  0000 C CNN
F 1 "74HC04" H 11250 8400 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 11300 8450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 11300 8450 50  0001 C CNN
	1    11300 8450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U12
U 2 1 642A6ABF
P 1500 6100
F 0 "U12" H 1500 6150 39  0000 C CNN
F 1 "74HC32" H 1500 6050 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1500 6100 39  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 1500 6100 39  0001 C CNN
	2    1500 6100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U6
U 2 1 5FE8866C
P 14550 3400
F 0 "U6" H 14500 3450 39  0000 C CNN
F 1 "74HC04" H 14500 3350 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 14550 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 14550 3400 50  0001 C CNN
	2    14550 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 3400 14250 3400
Connection ~ 14250 3400
Wire Wire Line
	14250 3000 14250 3400
$Comp
L 74xx:74LS08 U4
U 5 1 5FF561E9
P 8800 10150
F 0 "U4" H 8700 10200 39  0000 L CNN
F 1 "74HC08" H 8650 10100 39  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8800 10150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 8800 10150 50  0001 C CNN
	5    8800 10150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U5
U 5 1 5FF5AE29
P 9250 10150
F 0 "U5" H 9150 10200 39  0000 L CNN
F 1 "74HC00" H 9100 10100 39  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 9250 10150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 9250 10150 50  0001 C CNN
	5    9250 10150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U7
U 3 1 5FF79DED
P 10150 10150
F 0 "U7" H 10050 10200 39  0000 L CNN
F 1 "74HC74" H 10000 10100 39  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 10150 10150 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 10150 10150 50  0001 C CNN
	3    10150 10150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U6
U 7 1 5FF788D5
P 9700 10150
F 0 "U6" H 9600 10200 39  0000 L CNN
F 1 "74HC04" H 9550 10100 39  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 9700 10150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 9700 10150 50  0001 C CNN
	7    9700 10150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U12
U 5 1 5FFA7DEC
P 10600 10150
F 0 "U12" H 10500 10200 39  0000 L CNN
F 1 "74HC32" H 10450 10100 39  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 10600 10150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 10600 10150 50  0001 C CNN
	5    10600 10150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 9650 9250 9650
Connection ~ 9250 9650
Wire Wire Line
	9250 9650 9700 9650
Connection ~ 9700 9650
Wire Wire Line
	10150 9750 10150 9650
Wire Wire Line
	9700 9650 10150 9650
Connection ~ 10150 9650
Wire Wire Line
	10150 9650 10600 9650
Wire Wire Line
	8800 10650 9250 10650
Connection ~ 9250 10650
Wire Wire Line
	9250 10650 9700 10650
Connection ~ 9700 10650
Wire Wire Line
	9700 10650 10150 10650
Wire Wire Line
	10150 10550 10150 10650
Text GLabel 8550 10650 0    39   Input ~ 0
GND
Text GLabel 8550 9650 0    39   Input ~ 0
+5v
Wire Wire Line
	8800 10650 8550 10650
Connection ~ 8800 10650
Wire Wire Line
	8800 9650 8550 9650
Connection ~ 8800 9650
$Comp
L Device:C C4
U 1 1 5FE3EF74
P 8250 10900
F 0 "C4" H 8150 11000 39  0000 L CNN
F 1 "0.1uF" H 8250 11000 39  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 8288 10750 50  0001 C CNN
F 3 "~" H 8250 10900 50  0001 C CNN
	1    8250 10900
	1    0    0    1   
$EndComp
$Comp
L Device:C C8
U 1 1 5FE5B6EB
P 9450 10900
F 0 "C8" H 9350 11000 39  0000 L CNN
F 1 "0.1uF" H 9450 11000 39  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 9488 10750 50  0001 C CNN
F 3 "~" H 9450 10900 50  0001 C CNN
	1    9450 10900
	1    0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 5FE85BA0
P 9750 10900
F 0 "C9" H 9650 11000 39  0000 L CNN
F 1 "0.1uF" H 9750 11000 39  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 9788 10750 50  0001 C CNN
F 3 "~" H 9750 10900 50  0001 C CNN
	1    9750 10900
	1    0    0    1   
$EndComp
$Comp
L Device:C C13
U 1 1 5FE9A67D
P 10950 10900
F 0 "C13" H 10850 11000 39  0000 L CNN
F 1 "0.1uF" H 10950 11000 39  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 10988 10750 50  0001 C CNN
F 3 "~" H 10950 10900 50  0001 C CNN
	1    10950 10900
	1    0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 5FED84DC
P 9150 10900
F 0 "C7" H 9050 11000 39  0000 L CNN
F 1 "0.1uF" H 9150 11000 39  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 9188 10750 50  0001 C CNN
F 3 "~" H 9150 10900 50  0001 C CNN
	1    9150 10900
	1    0    0    1   
$EndComp
$Comp
L Device:C C3
U 1 1 5FED84E2
P 7950 10900
F 0 "C3" H 7850 11000 39  0000 L CNN
F 1 "0.1uF" H 7950 11000 39  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 7988 10750 50  0001 C CNN
F 3 "~" H 7950 10900 50  0001 C CNN
	1    7950 10900
	1    0    0    1   
$EndComp
$Comp
L Device:C C15
U 1 1 5FED84E8
P 11550 10900
F 0 "C15" H 11450 11000 39  0000 L CNN
F 1 "0.1uF" H 11550 11000 39  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 11588 10750 50  0001 C CNN
F 3 "~" H 11550 10900 50  0001 C CNN
	1    11550 10900
	1    0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 5FED84EE
P 8550 10900
F 0 "C5" H 8450 11000 39  0000 L CNN
F 1 "0.1uF" H 8550 11000 39  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 8588 10750 50  0001 C CNN
F 3 "~" H 8550 10900 50  0001 C CNN
	1    8550 10900
	1    0    0    1   
$EndComp
$Comp
L Device:C C12
U 1 1 5FF04139
P 10650 10900
F 0 "C12" H 10550 11000 39  0000 L CNN
F 1 "0.1uF" H 10650 11000 39  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 10688 10750 50  0001 C CNN
F 3 "~" H 10650 10900 50  0001 C CNN
	1    10650 10900
	1    0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5FF0413F
P 7650 10900
F 0 "C2" H 7550 11000 39  0000 L CNN
F 1 "0.1uF" H 7650 11000 39  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 7688 10750 50  0001 C CNN
F 3 "~" H 7650 10900 50  0001 C CNN
	1    7650 10900
	1    0    0    1   
$EndComp
$Comp
L Device:C C11
U 1 1 5FF04145
P 10350 10900
F 0 "C11" H 10250 11000 39  0000 L CNN
F 1 "0.1uF" H 10350 11000 39  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 10388 10750 50  0001 C CNN
F 3 "~" H 10350 10900 50  0001 C CNN
	1    10350 10900
	1    0    0    1   
$EndComp
$Comp
L Device:C C14
U 1 1 5FF0414B
P 11250 10900
F 0 "C14" H 11150 11000 39  0000 L CNN
F 1 "0.1uF" H 11250 11000 39  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 11288 10750 50  0001 C CNN
F 3 "~" H 11250 10900 50  0001 C CNN
	1    11250 10900
	1    0    0    1   
$EndComp
Text GLabel 7200 11050 0    39   Input ~ 0
GND
Text GLabel 7200 10750 0    39   Input ~ 0
+5v
Text Notes 6650 9400 0    50   ~ 0
Unused 7400 Components
Text GLabel 7450 9750 0    39   Input ~ 0
GND
Text Notes 8800 9550 0    50   ~ 0
Power and Coupling Capacitors
Text GLabel 4700 2350 0    39   Input ~ 0
~MAP1-SELECT
Text GLabel 4700 1650 0    39   Input ~ 0
~MAP2-SELECT
$Comp
L 74xx:74LS00 U13
U 1 1 5FE4B7C7
P 5000 1750
F 0 "U13" H 4950 1800 39  0000 C CNN
F 1 "74HC00" H 5000 1700 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5000 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 5000 1750 50  0001 C CNN
	1    5000 1750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U13
U 2 1 5FE4E5C6
P 5000 2250
F 0 "U13" H 4950 2300 39  0000 C CNN
F 1 "74HC00" H 5000 2200 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5000 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 5000 2250 50  0001 C CNN
	2    5000 2250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U13
U 5 1 5FE58CD6
P 11050 10150
F 0 "U13" H 10950 10200 39  0000 L CNN
F 1 "74HC00" H 10900 10100 39  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 11050 10150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 11050 10150 50  0001 C CNN
	5    11050 10150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2150 4700 2000
Wire Wire Line
	4700 2000 5300 2000
Wire Wire Line
	5300 2000 5300 1750
Wire Wire Line
	4700 1950 5350 1950
Wire Wire Line
	5350 1950 5350 2250
Wire Wire Line
	5350 2250 5300 2250
Wire Wire Line
	4700 1850 4700 1950
Wire Wire Line
	5350 2250 5700 2250
Connection ~ 5350 2250
Wire Wire Line
	10600 9650 11050 9650
Connection ~ 10600 9650
$Comp
L Device:C C10
U 1 1 6008B31C
P 10050 10900
F 0 "C10" H 9950 11000 39  0000 L CNN
F 1 "0.1uF" H 10050 11000 39  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 10088 10750 50  0001 C CNN
F 3 "~" H 10050 10900 50  0001 C CNN
	1    10050 10900
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS00 U13
U 3 1 5FE50220
P 13750 1900
F 0 "U13" H 13750 1950 39  0000 C CNN
F 1 "74HC00" H 13750 1850 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 13750 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 13750 1900 50  0001 C CNN
	3    13750 1900
	1    0    0    -1  
$EndComp
Text GLabel 7450 9550 0    39   Input ~ 0
GND
$Comp
L 74xx:74LS32 U12
U 4 1 5FE996E4
P 2100 5900
F 0 "U12" H 2100 5950 39  0000 C CNN
F 1 "74HC32" H 2100 5850 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2100 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2100 5900 50  0001 C CNN
	4    2100 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	11550 9350 11850 9350
Wire Wire Line
	11550 9250 11850 9250
Wire Wire Line
	11550 9150 11850 9150
Wire Wire Line
	11550 9050 11850 9050
Wire Wire Line
	11550 8950 11850 8950
Wire Wire Line
	11550 8850 11850 8850
Wire Wire Line
	11550 8750 11850 8750
Wire Wire Line
	11550 8650 11850 8650
Entry Wire Line
	11450 8650 11550 8750
Entry Wire Line
	11450 8750 11550 8850
Entry Wire Line
	11450 8850 11550 8950
Entry Wire Line
	11450 8950 11550 9050
Entry Wire Line
	11450 9050 11550 9150
Entry Wire Line
	11450 9150 11550 9250
Entry Wire Line
	11450 9250 11550 9350
Text Label 11600 8650 0    60   ~ 0
D0
Text Label 11600 8750 0    60   ~ 0
D1
Text Label 11600 8850 0    60   ~ 0
D2
Text Label 11600 8950 0    60   ~ 0
D3
Text Label 11600 9050 0    60   ~ 0
D4
Text Label 11600 9150 0    60   ~ 0
D5
Text Label 11600 9250 0    60   ~ 0
D6
Text Label 11600 9350 0    60   ~ 0
D7
Text Notes 12000 7900 0    50   ~ 0
LCD Display
Text GLabel 12250 8150 1    39   Input ~ 0
+5v
Text GLabel 11850 8450 0    39   Input ~ 0
R|~W
Wire Wire Line
	11550 8350 11850 8350
Text Label 11600 8350 0    60   ~ 0
A0
Entry Wire Line
	11450 8250 11550 8350
Text Notes 14600 4550 0    50   ~ 0
External Slots
Text GLabel 12250 9550 3    39   Input ~ 0
GND
Wire Wire Line
	900  2200 2050 2200
Connection ~ 900  2200
Wire Wire Line
	900  2150 900  2200
Wire Wire Line
	1050 2300 800  2300
Connection ~ 1050 2300
Wire Wire Line
	1050 2150 1050 2300
Wire Wire Line
	1200 2400 800  2400
Connection ~ 1200 2400
Wire Wire Line
	1200 2150 1200 2400
Wire Wire Line
	1350 2500 2050 2500
Connection ~ 1350 2500
Wire Wire Line
	800  2500 1350 2500
Wire Wire Line
	1350 2150 1350 2500
Wire Wire Line
	1500 2600 800  2600
Connection ~ 1500 2600
Wire Wire Line
	1500 2150 1500 2600
Wire Wire Line
	1650 2700 800  2700
Connection ~ 1650 2700
Wire Wire Line
	1650 2150 1650 2700
Wire Wire Line
	1500 1950 1650 1950
Connection ~ 1500 1950
Wire Wire Line
	1350 1950 1500 1950
Connection ~ 1350 1950
Wire Wire Line
	1200 1950 1350 1950
Connection ~ 1200 1950
Wire Wire Line
	1050 1950 1200 1950
Connection ~ 1050 1950
Wire Wire Line
	900  1950 1050 1950
Connection ~ 900  1950
Wire Wire Line
	800  1950 900  1950
$Comp
L Device:R_Small_US R8
U 1 1 6020D659
P 1650 2050
F 0 "R8" H 1650 2000 50  0000 C CNN
F 1 "2k2" H 1650 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 1650 2050 50  0001 C CNN
F 3 "~" H 1650 2050 50  0001 C CNN
	1    1650 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 6020D653
P 1500 2050
F 0 "R6" H 1500 2000 50  0000 C CNN
F 1 "2k2" H 1500 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 1500 2050 50  0001 C CNN
F 3 "~" H 1500 2050 50  0001 C CNN
	1    1500 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 601B89A6
P 1350 2050
F 0 "R7" H 1350 2000 50  0000 C CNN
F 1 "2k2" H 1350 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 1350 2050 50  0001 C CNN
F 3 "~" H 1350 2050 50  0001 C CNN
	1    1350 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 601B89A0
P 1200 2050
F 0 "R5" H 1200 2000 50  0000 C CNN
F 1 "2k2" H 1200 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 1200 2050 50  0001 C CNN
F 3 "~" H 1200 2050 50  0001 C CNN
	1    1200 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	800  2200 900  2200
$Comp
L Device:R_Small_US R4
U 1 1 600F364B
P 1050 2050
F 0 "R4" H 1050 2000 50  0000 C CNN
F 1 "2k2" H 1050 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 1050 2050 50  0001 C CNN
F 3 "~" H 1050 2050 50  0001 C CNN
	1    1050 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 600D528A
P 900 2050
F 0 "R3" H 900 2000 50  0000 C CNN
F 1 "2k2" H 900 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 900 2050 50  0001 C CNN
F 3 "~" H 900 2050 50  0001 C CNN
	1    900  2050
	-1   0    0    1   
$EndComp
Text GLabel 800  2700 0    39   Input ~ 0
MRDY
Text GLabel 800  2600 0    39   Input ~ 0
~HALT
Text GLabel 800  2500 0    39   Input ~ 0
~DMA
Text GLabel 800  2400 0    39   Input ~ 0
~FIRQ
Text GLabel 800  2200 0    39   Input ~ 0
~NMI
Wire Wire Line
	1850 2700 1650 2700
Wire Wire Line
	1850 3300 1850 2700
Wire Wire Line
	2050 3300 1850 3300
Wire Wire Line
	1950 2600 1500 2600
Wire Wire Line
	1950 3000 1950 2600
Wire Wire Line
	2050 3000 1950 3000
Wire Wire Line
	2050 2900 2050 2500
Wire Wire Line
	2050 2400 1200 2400
Wire Wire Line
	2050 2300 1050 2300
Wire Wire Line
	2050 3500 2050 3700
Wire Wire Line
	1850 3700 2050 3700
$Comp
L motorola_revised:MC68B09 U1
U 1 1 58F5EF25
P 2750 2400
F 0 "U1" H 2800 2350 39  0000 R CNN
F 1 "MC68B09" H 2900 2250 39  0000 R CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket_LongPads" H 2800 1150 50  0001 L CNN
F 3 "" H 2750 2400 50  0001 C CNN
	1    2750 2400
	1    0    0    -1  
$EndComp
Text GLabel 800  1950 0    39   Input ~ 0
+5v
Wire Wire Line
	3450 2700 3650 2700
Wire Wire Line
	3450 2600 3650 2600
Wire Wire Line
	3450 2500 3650 2500
Wire Wire Line
	3450 2400 3650 2400
Wire Wire Line
	3450 2300 3650 2300
Wire Wire Line
	3450 2200 3650 2200
Wire Wire Line
	3450 2100 3650 2100
Wire Wire Line
	3450 2000 3650 2000
Wire Wire Line
	3450 1900 3650 1900
Wire Wire Line
	3450 1800 3650 1800
Wire Wire Line
	3450 1700 3650 1700
Wire Wire Line
	3450 1600 3650 1600
Wire Wire Line
	3450 1500 3650 1500
Wire Wire Line
	3450 1400 3650 1400
Wire Wire Line
	3450 1300 3650 1300
Wire Wire Line
	3450 1200 3650 1200
Text GLabel 3450 3100 2    39   Output ~ 0
BA
Text GLabel 3450 3000 2    39   Output ~ 0
BS
Text Notes 3950 6550 0    50   ~ 0
MEMORY MAP\n0000-DFFF RAM\nE004-E005 68B50 Serial Port\nE010-E01F WD1771 Floppy Drive (PROTEUS)\nE020-E02F Timer 68B40 (POLY)\nE030-E03F 68B54 Data Link Controller (POLY)\nE040-E04F Leave Protected Mode\nE050-E05F Dynamic Address Translation Table\nE060-E06F Select Memory Map 1\nE070-E07F Select Memory Map 2\nE080-E08F FPU (Floating Point Unit)\nEO90-E09F 16x2 LCD\nE200-E3FF UNUSED\nE400-E5FF UNUSED\nE600-E7FF UNUSED\nE800-EBFF Text Screen 1 (POLY)\nEC00-EFFF Text Screen 2 (POLY)\nF000-FFFF ROM\n
Entry Wire Line
	1750 1100 1850 1200
Entry Wire Line
	1750 1200 1850 1300
Entry Wire Line
	1750 1300 1850 1400
Entry Wire Line
	1750 1400 1850 1500
Entry Wire Line
	1750 1500 1850 1600
Entry Wire Line
	1750 1600 1850 1700
Entry Wire Line
	1750 1700 1850 1800
Entry Wire Line
	1750 1800 1850 1900
Wire Wire Line
	1850 1200 2050 1200
Wire Wire Line
	1850 1300 2050 1300
Wire Wire Line
	1850 1400 2050 1400
Wire Wire Line
	1850 1500 2050 1500
Wire Wire Line
	1850 1600 2050 1600
Wire Wire Line
	1850 1700 2050 1700
Wire Wire Line
	1850 1800 2050 1800
Wire Wire Line
	1850 1900 2050 1900
Entry Wire Line
	3650 1200 3750 1300
Entry Wire Line
	3650 1300 3750 1400
Entry Wire Line
	3650 1400 3750 1500
Entry Wire Line
	3650 1500 3750 1600
Entry Wire Line
	3650 1600 3750 1700
Entry Wire Line
	3650 1700 3750 1800
Entry Wire Line
	3650 1800 3750 1900
Entry Wire Line
	3650 1900 3750 2000
Entry Wire Line
	3650 2000 3750 2100
Entry Wire Line
	3650 2100 3750 2200
Entry Wire Line
	3650 2200 3750 2300
Entry Wire Line
	3650 2300 3750 2400
Entry Wire Line
	3650 2400 3750 2500
Entry Wire Line
	3650 2500 3750 2600
Entry Wire Line
	3650 2600 3750 2700
Entry Wire Line
	3650 2700 3750 2800
Text Label 3450 1200 0    60   ~ 0
A0
Text Label 3450 1300 0    60   ~ 0
A1
Text Label 3450 1400 0    60   ~ 0
A2
Text Label 3450 1500 0    60   ~ 0
A3
Text Label 3450 1600 0    60   ~ 0
A4
Text Label 3450 1700 0    60   ~ 0
A5
Text Label 3450 1800 0    60   ~ 0
A6
Text Label 3450 1900 0    60   ~ 0
A7
Text Label 3450 2000 0    60   ~ 0
A8
Text Label 3450 2100 0    60   ~ 0
A9
Text Label 3450 2200 0    60   ~ 0
A10
Text Label 3450 2300 0    60   ~ 0
A11
Text Label 3450 2400 0    60   ~ 0
A12
Text Label 3450 2500 0    60   ~ 0
AA13
Text Label 3450 2600 0    60   ~ 0
AA14
Text Label 3450 2700 0    60   ~ 0
AA15
Text Label 1900 1200 0    60   ~ 0
D0
Text Label 1900 1300 0    60   ~ 0
D1
Text Label 1900 1400 0    60   ~ 0
D2
Text Label 1900 1500 0    60   ~ 0
D3
Text Label 1900 1600 0    60   ~ 0
D4
Text Label 1900 1700 0    60   ~ 0
D5
Text Label 1900 1800 0    60   ~ 0
D6
Text Label 1900 1900 0    60   ~ 0
D7
Text GLabel 2750 3800 3    39   Input ~ 0
GND
Text GLabel 2750 1000 1    39   Input ~ 0
+5v
Text GLabel 2050 2100 0    39   Input ~ 0
~RESET
Text GLabel 3450 2900 2    39   Output ~ 0
R|~W
Text GLabel 3450 3300 2    39   Output ~ 0
E
Text GLabel 800  2300 0    39   Input ~ 0
~IRQ
$Comp
L Device:Crystal X1
U 1 1 5FA6F1D5
P 1850 3550
F 0 "X1" V 2100 3500 50  0000 L CNN
F 1 "8MHz" V 2200 3450 50  0000 L CNN
F 2 "Crystal:Resonator-2Pin_W7.0mm_H2.5mm" H 1850 3550 50  0001 C CNN
F 3 "~" H 1850 3550 50  0001 C CNN
	1    1850 3550
	0    1    -1   0   
$EndComp
Wire Wire Line
	2050 3400 1850 3400
Text GLabel 1350 3800 3    39   Input ~ 0
GND
Wire Wire Line
	1850 3400 1650 3400
Connection ~ 1850 3400
Wire Wire Line
	1650 3700 1850 3700
Connection ~ 1850 3700
Text Notes 2550 700  0    50   ~ 0
68B09 CPU
Text GLabel 3450 3400 2    39   Output ~ 0
Q
$Comp
L motorola_revised:MC68B50 U11
U 1 1 605EA3A3
P 9900 6550
F 0 "U11" H 9900 6750 39  0000 C CNN
F 1 "MC68B50" H 9900 6650 39  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm_LongPads" H 9950 5400 50  0001 L CNN
F 3 "" H 9900 6550 50  0001 C CNN
	1    9900 6550
	1    0    0    -1  
$EndComp
Text GLabel 10600 5450 2    39   Output ~ 0
~IRQ
Wire Wire Line
	8900 6150 9200 6150
Wire Wire Line
	8900 6050 9200 6050
Wire Wire Line
	8900 5950 9200 5950
Wire Wire Line
	8900 5850 9200 5850
Wire Wire Line
	8900 5750 9200 5750
Wire Wire Line
	8900 5650 9200 5650
Wire Wire Line
	8900 5550 9200 5550
Wire Wire Line
	8900 5450 9200 5450
Entry Wire Line
	8800 5350 8900 5450
Entry Wire Line
	8800 5450 8900 5550
Entry Wire Line
	8800 5550 8900 5650
Entry Wire Line
	8800 5650 8900 5750
Entry Wire Line
	8800 5750 8900 5850
Entry Wire Line
	8800 5850 8900 5950
Entry Wire Line
	8800 5950 8900 6050
Entry Wire Line
	8800 6050 8900 6150
Text Label 8950 5450 0    60   ~ 0
D0
Text Label 8950 5550 0    60   ~ 0
D1
Text Label 8950 5650 0    60   ~ 0
D2
Text Label 8950 5750 0    60   ~ 0
D3
Text Label 8950 5850 0    60   ~ 0
D4
Text Label 8950 5950 0    60   ~ 0
D5
Text Label 8950 6050 0    60   ~ 0
D6
Text Label 8950 6150 0    60   ~ 0
D7
Text GLabel 9200 6850 0    39   Input ~ 0
E
Text GLabel 9200 6350 0    39   Input ~ 0
R|~W
Text GLabel 9200 6750 0    39   Input ~ 0
~SERIAL-SELECT
Wire Wire Line
	9200 7350 9200 7450
Text GLabel 9200 7400 0    39   Input ~ 0
GND
Wire Wire Line
	8900 6450 9200 6450
Text Label 8900 6450 0    60   ~ 0
A0
Entry Wire Line
	8800 6350 8900 6450
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 607F9B7C
P 9900 8050
F 0 "J1" V 9772 8230 50  0000 L CNN
F 1 "Serial Port" V 9863 8230 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 8050 50  0001 C CNN
F 3 "~" H 9900 8050 50  0001 C CNN
	1    9900 8050
	0    -1   1    0   
$EndComp
Wire Wire Line
	10000 7850 10600 7850
Wire Wire Line
	10600 7850 10600 7550
Text GLabel 9900 5250 1    39   Input ~ 0
+5v
$Comp
L 74xx:74LS04 U6
U 5 1 5FEA1764
P 8700 7350
F 0 "U6" H 8650 7400 39  0000 C CNN
F 1 "74HC04" H 8650 7300 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8700 7350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 8700 7350 50  0001 C CNN
	5    8700 7350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U6
U 6 1 5FEC2470
P 8100 7350
F 0 "U6" H 8050 7400 39  0000 C CNN
F 1 "74HC04" H 8050 7300 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8100 7350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 8100 7350 50  0001 C CNN
	6    8100 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 7100 8400 7350
Connection ~ 8400 7100
$Comp
L Device:Crystal X2
U 1 1 60D2DF96
P 8400 6900
F 0 "X2" H 8400 6650 50  0000 C CNN
F 1 "7.3728MHz" H 8400 6750 50  0000 C CNN
F 2 "Crystal:Resonator-2Pin_W7.0mm_H2.5mm" H 8400 6900 50  0001 C CNN
F 3 "~" H 8400 6900 50  0001 C CNN
	1    8400 6900
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 6900 9000 6900
Connection ~ 8400 7350
Wire Wire Line
	7750 6900 8250 6900
Wire Wire Line
	7950 7100 8400 7100
Wire Wire Line
	7800 7350 7750 7350
Text Notes 9450 5000 0    50   ~ 0
68B50 ACIA (Serial Port)
Text Notes 500  1050 0    50   ~ 0
TO DO\nIncoming power connetor\nPower onto header\nRAMselect on header\n6840\n6854\nRS232 to correxct memory location
Entry Wire Line
	2050 5300 2150 5400
Entry Wire Line
	2050 5400 2150 5500
Entry Wire Line
	2050 5500 2150 5600
Text Label 2300 5600 0    60   ~ 0
A7
Text Label 2300 5500 0    60   ~ 0
A6
Text Label 2300 5400 0    60   ~ 0
A5
Text Label 2300 5300 0    60   ~ 0
A4
Wire Wire Line
	2400 5600 2150 5600
Wire Wire Line
	2400 5500 2150 5500
Wire Wire Line
	2400 5400 2150 5400
Wire Wire Line
	2400 5300 2150 5300
Entry Wire Line
	2050 5200 2150 5300
$Comp
L 74xx:74LS154 U10
U 1 1 5FEBD187
P 2900 6000
F 0 "U10" H 2900 5950 39  0000 C CNN
F 1 "74HC154" H 2900 5850 39  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm_Socket_LongPads" H 2900 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS154" H 2900 6000 50  0001 C CNN
	1    2900 6000
	1    0    0    -1  
$EndComp
Text GLabel 3400 5300 2    39   Output ~ 0
~SERIAL-SELECT
Text GLabel 3400 6100 2    39   Output ~ 0
~FPU-SELECT
Text GLabel 3400 6200 2    39   Output ~ 0
~LCD-SELECT
Text GLabel 3400 5700 2    39   Output ~ 0
~LEAVE-PROT
Text GLabel 3400 5800 2    39   Output ~ 0
~DAT-SELECT
Text GLabel 3400 5900 2    39   Output ~ 0
~MAP1-SELECT
Text GLabel 3400 6000 2    39   Output ~ 0
~MAP2-SELECT
Text GLabel 2900 7100 3    39   Input ~ 0
GND
Text GLabel 2900 5000 1    39   Input ~ 0
+5v
Text GLabel 2400 5800 0    39   Input ~ 0
GND
Text GLabel 11000 8450 0    39   Input ~ 0
~LCD-SELECT
Entry Wire Line
	11450 8550 11550 8650
Wire Wire Line
	11850 8550 11600 8550
Wire Wire Line
	11600 8550 11600 8450
Wire Wire Line
	12850 2650 12750 2650
Wire Wire Line
	12750 2650 12750 2850
Wire Wire Line
	12750 2850 12600 2850
Wire Wire Line
	800  5800 1200 5800
Wire Wire Line
	1200 5700 1200 5600
Wire Wire Line
	800  5700 1200 5700
Wire Wire Line
	800  5900 1200 5900
Wire Wire Line
	1200 5900 1200 6000
Wire Wire Line
	1800 6100 1800 6000
Wire Wire Line
	1800 5700 1800 5800
Text GLabel 3400 5500 2    39   Output ~ 0
~TIMER-SELECT
Text GLabel 3400 5600 2    39   Output ~ 0
~NET-SELECT
Text GLabel 3400 5400 2    39   Output ~ 0
~FDD-SELECT
Text Notes 2300 4800 0    50   ~ 0
Peripherals Address Decoding
Entry Wire Line
	15950 4600 15850 4700
Entry Wire Line
	15950 4700 15850 4800
Entry Wire Line
	15950 4800 15850 4900
Entry Wire Line
	15950 4900 15850 5000
Entry Wire Line
	15950 5000 15850 5100
Entry Wire Line
	15950 5100 15850 5200
Entry Wire Line
	15950 5200 15850 5300
Entry Wire Line
	15950 5300 15850 5400
Text Label 15800 4700 2    60   ~ 0
D0
Text Label 15800 4800 2    60   ~ 0
D1
Text Label 15800 4900 2    60   ~ 0
D2
Text Label 15800 5000 2    60   ~ 0
D3
Text Label 15800 5100 2    60   ~ 0
D4
Text Label 15800 5200 2    60   ~ 0
D5
Text Label 15800 5300 2    60   ~ 0
D6
Text Label 15800 5400 2    60   ~ 0
D7
Entry Wire Line
	15950 7000 15850 7100
Entry Wire Line
	15950 6900 15850 7000
Entry Wire Line
	15950 6800 15850 6900
Entry Wire Line
	15950 6700 15850 6800
Entry Wire Line
	15950 6600 15850 6700
Entry Wire Line
	15950 6500 15850 6600
Entry Wire Line
	15950 6400 15850 6500
Entry Wire Line
	15950 6300 15850 6400
Entry Wire Line
	15950 6200 15850 6300
Entry Wire Line
	15950 6100 15850 6200
Entry Wire Line
	15950 6000 15850 6100
Entry Wire Line
	15950 5900 15850 6000
Entry Wire Line
	15950 5800 15850 5900
Entry Wire Line
	15950 5700 15850 5800
Entry Wire Line
	15950 5600 15850 5700
Text Label 15800 5600 2    60   ~ 0
A0
Text Label 15800 5700 2    60   ~ 0
A1
Text Label 15800 5800 2    60   ~ 0
A2
Text Label 15800 5900 2    60   ~ 0
A3
Text Label 15800 6000 2    60   ~ 0
A4
Text Label 15800 6100 2    60   ~ 0
A5
Text Label 15800 6200 2    60   ~ 0
A6
Text Label 15800 6300 2    60   ~ 0
A7
Text Label 15800 6400 2    60   ~ 0
A8
Text Label 15800 6500 2    60   ~ 0
A9
Text Label 15800 6600 2    60   ~ 0
A10
Text Label 15800 6700 2    60   ~ 0
A11
Text Label 15800 6800 2    60   ~ 0
A12
Text Label 15800 6900 2    60   ~ 0
A13
Text Label 15800 7000 2    60   ~ 0
A14
Text Label 15800 7100 2    60   ~ 0
A15
Entry Wire Line
	15950 5500 15850 5600
Text GLabel 14150 7500 0    39   Input ~ 0
+5v
Text GLabel 14150 5000 0    39   Input ~ 0
~RESET
Text GLabel 14150 6650 0    39   Input ~ 0
E
Text GLabel 14150 5500 0    39   Input ~ 0
R|~W
Text GLabel 14150 4900 0    39   Input ~ 0
MRDY
Text GLabel 14150 5300 0    39   Input ~ 0
~HALT
Text GLabel 14150 6450 0    39   Input ~ 0
~DMA
Text GLabel 14150 5400 0    39   Input ~ 0
~FIRQ
Text GLabel 14150 5100 0    39   Input ~ 0
~NMI
Text GLabel 14150 5200 0    39   Input ~ 0
~IRQ
Text GLabel 14150 5700 0    39   Input ~ 0
~WRITE-ENABLE
Text GLabel 14150 5600 0    39   Input ~ 0
~READ-ENABLE
Wire Wire Line
	15550 5400 15850 5400
Wire Wire Line
	15550 5300 15850 5300
Wire Wire Line
	15550 5200 15850 5200
Wire Wire Line
	15550 5100 15850 5100
Wire Wire Line
	15550 5000 15850 5000
Wire Wire Line
	15550 4900 15850 4900
Wire Wire Line
	15550 4800 15850 4800
Wire Wire Line
	15550 4700 15850 4700
Wire Wire Line
	15550 7100 15850 7100
Wire Wire Line
	15550 7000 15850 7000
Wire Wire Line
	15550 6900 15850 6900
Wire Wire Line
	15550 6800 15850 6800
Wire Wire Line
	15550 6700 15850 6700
Wire Wire Line
	15550 6600 15850 6600
Wire Wire Line
	15550 6500 15850 6500
Wire Wire Line
	15550 6400 15850 6400
Wire Wire Line
	15550 6300 15850 6300
Wire Wire Line
	15550 6200 15850 6200
Wire Wire Line
	15550 6100 15850 6100
Wire Wire Line
	15550 6000 15850 6000
Wire Wire Line
	15550 5900 15850 5900
Wire Wire Line
	15550 5800 15850 5800
Wire Wire Line
	15550 5700 15850 5700
Wire Wire Line
	15550 5600 15850 5600
Text GLabel 14150 6550 0    39   Input ~ 0
Q
Entry Wire Line
	15950 7300 15850 7400
Entry Wire Line
	15950 7200 15850 7300
Entry Wire Line
	15950 7100 15850 7200
Text Label 15800 7200 2    60   ~ 0
A16
Text Label 15800 7300 2    60   ~ 0
A17
Text Label 15800 7400 2    60   ~ 0
A18
Wire Wire Line
	15550 7400 15850 7400
Wire Wire Line
	15550 7300 15850 7300
Wire Wire Line
	15550 7200 15850 7200
Entry Wire Line
	15950 7500 15850 7600
Entry Wire Line
	15950 7400 15850 7500
Text Label 15800 7500 2    60   ~ 0
A19
Text Label 15800 7600 2    60   ~ 0
A20
Wire Wire Line
	15550 7600 15850 7600
Wire Wire Line
	15550 7500 15850 7500
Text GLabel 14150 6900 0    39   Input ~ 0
~SLOT-SELECT
Text GLabel 14150 7000 0    39   Input ~ 0
~RAM-SELECT
Text GLabel 14650 9550 0    39   Input ~ 0
~SERIAL-SELECT
Text GLabel 14650 8950 0    39   Input ~ 0
~FPU-SELECT
Text GLabel 14650 9350 0    39   Input ~ 0
~TIMER-SELECT
Text GLabel 14650 9250 0    39   Input ~ 0
~NET-SELECT
Text GLabel 14650 9450 0    39   Input ~ 0
~FDD-SELECT
Text GLabel 3400 6300 2    39   Output ~ 0
DEVA-SELECT
Text GLabel 3400 6400 2    39   Output ~ 0
DEVB-SELECT
Text GLabel 3400 6500 2    39   Output ~ 0
DEVC-SELECT
Text GLabel 3400 6600 2    39   Output ~ 0
DEVD-SELECT
Text GLabel 3400 6700 2    39   Output ~ 0
DEVE-SELECT
Text GLabel 3400 6800 2    39   Output ~ 0
DEVF-SELECT
Text GLabel 14650 8650 0    39   Input ~ 0
DEVA-SELECT
Text GLabel 14650 8550 0    39   Input ~ 0
DEVB-SELECT
Text GLabel 14650 8750 0    39   Input ~ 0
DEVC-SELECT
Text GLabel 14650 8850 0    39   Input ~ 0
DEVD-SELECT
Text GLabel 14650 9050 0    39   Input ~ 0
DEVE-SELECT
Text GLabel 14650 9150 0    39   Input ~ 0
DEVF-SELECT
Text GLabel 14150 6100 0    39   Input ~ 0
BS
Text GLabel 14150 6000 0    39   Input ~ 0
BA
$Comp
L Connector_Generic:Conn_01x11 J5
U 1 1 60E91F14
P 14850 9050
F 0 "J5" H 14930 9092 50  0000 L CNN
F 1 "Conn_01x11" H 14930 9001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x11_P2.54mm_Vertical" H 14850 9050 50  0001 C CNN
F 3 "~" H 14850 9050 50  0001 C CNN
	1    14850 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1450 6900 3050
$Comp
L 74xx:74LS32 U12
U 3 1 630D4CCF
P 6600 3250
F 0 "U12" H 6600 3300 39  0000 C CNN
F 1 "74HC32" H 6600 3200 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 6600 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6600 3250 50  0001 C CNN
	3    6600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3050 5350 3050
Text GLabel 6300 3150 0    39   Input ~ 0
~WRITE-ENABLE
Text GLabel 6300 3350 0    39   Input ~ 0
~DAT-SELECT
Wire Wire Line
	6900 3050 6900 3250
Connection ~ 6900 3050
Wire Wire Line
	7050 1950 7050 3950
Connection ~ 7050 1950
Wire Wire Line
	7050 1950 7800 1950
Wire Wire Line
	7150 1850 7150 3850
Connection ~ 7150 1850
Wire Wire Line
	7150 1850 7800 1850
Wire Wire Line
	7250 1750 7250 3750
Connection ~ 7250 1750
Wire Wire Line
	7250 1750 7800 1750
Wire Wire Line
	7350 1650 7350 3650
Connection ~ 7350 1650
Wire Wire Line
	7350 1650 7800 1650
Text GLabel 8300 2700 3    39   Input ~ 0
GND
$Comp
L aspt:74LS189 U3
U 1 1 601552D3
P 8300 1200
F 0 "U3" H 8300 650 39  0000 C CNN
F 1 "74HC189" H 8350 550 39  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 8300 1200 50  0001 C CNN
F 3 "" H 8300 1200 50  0001 C CNN
	1    8300 1200
	1    0    0    -1  
$EndComp
Connection ~ 7450 1450
Wire Wire Line
	7450 1450 6900 1450
Wire Wire Line
	7800 1450 7450 1450
Wire Wire Line
	7450 1450 7450 3450
Text GLabel 7800 3350 0    39   Input ~ 0
GND
Entry Wire Line
	7550 4050 7650 4150
Entry Wire Line
	7550 4150 7650 4250
Entry Wire Line
	7550 4250 7650 4350
Entry Wire Line
	7550 4350 7650 4450
Wire Wire Line
	7650 4150 7800 4150
Wire Wire Line
	7650 4250 7800 4250
Wire Wire Line
	7650 4350 7800 4350
Wire Wire Line
	7650 4450 7800 4450
Text Label 7700 4150 0    60   ~ 0
D4
Text Label 7700 4250 0    60   ~ 0
D5
Text Label 7700 4350 0    60   ~ 0
D6
Text Label 7700 4450 0    60   ~ 0
D7
Text GLabel 8300 4700 3    39   Input ~ 0
GND
Text GLabel 8300 3050 1    39   Input ~ 0
+5v
Text Label 8850 4150 0    50   ~ 0
A17
Text Label 8850 4250 0    50   ~ 0
A18
Text Label 8850 4350 0    50   ~ 0
A19
Text Label 8850 4450 0    50   ~ 0
A20
Entry Wire Line
	9050 4450 9150 4550
Entry Wire Line
	9050 4350 9150 4450
Entry Wire Line
	9050 4250 9150 4350
Entry Wire Line
	9050 4150 9150 4250
Wire Wire Line
	8800 4450 9050 4450
Wire Wire Line
	8800 4350 9050 4350
Wire Wire Line
	8800 4250 9050 4250
Wire Wire Line
	8800 4150 9050 4150
$Comp
L aspt:74LS189 U15
U 1 1 60F65F63
P 8300 3200
F 0 "U15" H 8300 2650 39  0000 C CNN
F 1 "74HC189" H 8350 2550 39  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 8300 3200 50  0001 C CNN
F 3 "" H 8300 3200 50  0001 C CNN
	1    8300 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3450 7800 3450
Wire Wire Line
	7350 3650 7800 3650
Wire Wire Line
	7250 3750 7800 3750
Wire Wire Line
	7150 3850 7800 3850
Wire Wire Line
	7050 3950 7800 3950
Text Label 900  10250 2    50   ~ 0
A17
Text Label 900  10350 2    50   ~ 0
A18
Text Label 900  10450 2    50   ~ 0
A19
Text Label 900  10550 2    50   ~ 0
A20
Entry Wire Line
	700  10550 600  10650
Entry Wire Line
	700  10450 600  10550
Entry Wire Line
	700  10350 600  10450
Entry Wire Line
	700  10250 600  10350
Wire Wire Line
	950  10550 700  10550
Wire Wire Line
	950  10450 700  10450
Wire Wire Line
	950  10350 700  10350
Wire Wire Line
	950  10250 700  10250
$Comp
L 74xx:74LS32 U14
U 1 1 6178BF96
P 1250 10200
F 0 "U14" H 1250 10250 39  0000 C CNN
F 1 "74HC32" H 1250 10150 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1250 10200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 1250 10200 50  0001 C CNN
	1    1250 10200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U14
U 2 1 6178E692
P 1250 10600
F 0 "U14" H 1250 10650 39  0000 C CNN
F 1 "74HC32" H 1250 10550 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1250 10600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 1250 10600 50  0001 C CNN
	2    1250 10600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U14
U 3 1 61792F40
P 1850 10400
F 0 "U14" H 1850 10450 39  0000 C CNN
F 1 "74HC32" H 1850 10350 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1850 10400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 1850 10400 50  0001 C CNN
	3    1850 10400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U14
U 4 1 617956BB
P 6850 9650
F 0 "U14" H 6850 9700 39  0000 C CNN
F 1 "74HC32" H 6850 9600 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 6850 9650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6850 9650 50  0001 C CNN
	4    6850 9650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U14
U 5 1 6179939A
P 11500 10150
F 0 "U14" H 11400 10200 39  0000 L CNN
F 1 "74HC32" H 11350 10100 39  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 11500 10150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 11500 10150 50  0001 C CNN
	5    11500 10150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 10200 1550 10300
Wire Wire Line
	1550 10500 1550 10600
Text GLabel 6550 9550 0    39   Input ~ 0
GND
Text GLabel 6550 9750 0    39   Input ~ 0
GND
Wire Wire Line
	11050 9650 11500 9650
Connection ~ 11050 9650
Wire Wire Line
	11050 10650 11500 10650
$Comp
L Device:C C6
U 1 1 61A03131
P 8850 10900
F 0 "C6" H 8750 11000 39  0000 L CNN
F 1 "0.1uF" H 8850 11000 39  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 8888 10750 50  0001 C CNN
F 3 "~" H 8850 10900 50  0001 C CNN
	1    8850 10900
	1    0    0    1   
$EndComp
Wire Wire Line
	950  10250 950  10100
Wire Wire Line
	950  10550 950  10700
Wire Wire Line
	950  10450 950  10500
Wire Wire Line
	950  10300 950  10350
Text Label 4500 9200 0    60   ~ 0
D7
Text Label 4500 9100 0    60   ~ 0
D6
Text Label 4500 9000 0    60   ~ 0
D5
Text Label 4500 8900 0    60   ~ 0
D4
Text Label 4500 8800 0    60   ~ 0
D3
Text Label 4500 8700 0    60   ~ 0
D2
Text Label 4500 8600 0    60   ~ 0
D1
Text Label 4500 8500 0    60   ~ 0
D0
Wire Wire Line
	4500 9200 4600 9200
Wire Wire Line
	4500 9100 4600 9100
Wire Wire Line
	4500 9000 4600 9000
Wire Wire Line
	4500 8900 4600 8900
Wire Wire Line
	4500 8800 4600 8800
Wire Wire Line
	4500 8700 4600 8700
Wire Wire Line
	4500 8600 4600 8600
Wire Wire Line
	4500 8500 4600 8500
Entry Wire Line
	4600 9200 4700 9300
Entry Wire Line
	4600 9100 4700 9200
Entry Wire Line
	4600 9000 4700 9100
Entry Wire Line
	4600 8900 4700 9000
Entry Wire Line
	4600 8800 4700 8900
Entry Wire Line
	4600 8700 4700 8800
Entry Wire Line
	4600 8600 4700 8700
Entry Wire Line
	4600 8500 4700 8600
Wire Wire Line
	2750 10400 3100 10400
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 6230DE46
P 5550 10750
F 0 "J3" H 5630 10742 50  0000 L CNN
F 1 "Power Connector" H 5630 10651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5550 10750 50  0001 C CNN
F 3 "~" H 5550 10750 50  0001 C CNN
	1    5550 10750
	1    0    0    -1  
$EndComp
Text Notes 5100 10450 0    50   ~ 0
Power
Text GLabel 5000 10650 0    39   Output ~ 0
GND
Text GLabel 5000 10750 0    39   Output ~ 0
+5v
Text GLabel 5000 10950 0    39   Output ~ 0
-12v
Text GLabel 5000 10850 0    39   Output ~ 0
+12v
Text GLabel 14150 7600 0    39   Input ~ 0
-12v
Text GLabel 14150 7300 0    39   Input ~ 0
+12v
$Comp
L Device:C C17
U 1 1 5FA714A2
P 1500 3400
F 0 "C17" V 1750 3400 50  0000 C CNN
F 1 "15pF" V 1650 3400 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1538 3250 50  0001 C CNN
F 3 "~" H 1500 3400 50  0001 C CNN
	1    1500 3400
	0    1    -1   0   
$EndComp
Wire Wire Line
	8900 6550 9200 6550
Text Label 8900 6550 0    60   ~ 0
A2
Entry Wire Line
	8800 6450 8900 6550
Wire Wire Line
	8050 6400 8050 6500
Connection ~ 8050 6400
Wire Wire Line
	7900 6400 8050 6400
Wire Wire Line
	8050 6300 8050 6400
Entry Wire Line
	7800 6300 7900 6400
Text Label 7900 6400 0    60   ~ 0
A3
$Comp
L 74xx:74LS00 U13
U 4 1 5FE5259E
P 8350 6400
F 0 "U13" H 8350 6450 39  0000 C CNN
F 1 "74HC00" H 8350 6350 39  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8350 6400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 8350 6400 50  0001 C CNN
	4    8350 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 6650 8650 6650
Wire Wire Line
	8650 6650 8650 6400
Wire Wire Line
	8400 7100 8800 7100
$Comp
L Device:R_Small_US R10
U 1 1 60C1BED9
P 7850 7100
F 0 "R10" V 7750 7100 50  0000 C CNN
F 1 "2k2" V 7950 7100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 7850 7100 50  0001 C CNN
F 3 "~" H 7850 7100 50  0001 C CNN
	1    7850 7100
	0    -1   1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 606AAD60
P 7350 10900
F 0 "C1" H 7250 11000 39  0000 L CNN
F 1 "0.1uF" H 7350 11000 39  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 7388 10750 50  0001 C CNN
F 3 "~" H 7350 10900 50  0001 C CNN
	1    7350 10900
	1    0    0    1   
$EndComp
Wire Wire Line
	7750 6900 7750 7100
Connection ~ 7750 7100
Wire Wire Line
	7750 7100 7750 7350
Connection ~ 9200 7100
Wire Wire Line
	9200 7100 9200 7150
Wire Wire Line
	9200 7050 9200 7100
Wire Wire Line
	9000 7100 9200 7100
Connection ~ 9000 7100
Wire Wire Line
	9000 6900 9000 7100
Wire Wire Line
	9000 7100 9000 7350
$Comp
L Device:R_Small_US R9
U 1 1 60C42B84
P 8900 7100
F 0 "R9" V 8800 7100 50  0000 C CNN
F 1 "2k2" V 9000 7100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 8900 7100 50  0001 C CNN
F 3 "~" H 8900 7100 50  0001 C CNN
	1    8900 7100
	0    1    1    0   
$EndComp
$Comp
L Device:C C16
U 1 1 5FA7081D
P 1500 3700
F 0 "C16" V 1250 3700 50  0000 C CNN
F 1 "15pF" V 1350 3700 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1538 3550 50  0001 C CNN
F 3 "~" H 1500 3700 50  0001 C CNN
	1    1500 3700
	0    -1   -1   0   
$EndComp
Entry Wire Line
	13300 4600 13200 4700
Entry Wire Line
	13300 4700 13200 4800
Entry Wire Line
	13300 4800 13200 4900
Entry Wire Line
	13300 4900 13200 5000
Entry Wire Line
	13300 5000 13200 5100
Entry Wire Line
	13300 5100 13200 5200
Entry Wire Line
	13300 5200 13200 5300
Entry Wire Line
	13300 5300 13200 5400
Text Label 13150 4700 2    60   ~ 0
D0
Text Label 13150 4800 2    60   ~ 0
D1
Text Label 13150 4900 2    60   ~ 0
D2
Text Label 13150 5000 2    60   ~ 0
D3
Text Label 13150 5100 2    60   ~ 0
D4
Text Label 13150 5200 2    60   ~ 0
D5
Text Label 13150 5300 2    60   ~ 0
D6
Text Label 13150 5400 2    60   ~ 0
D7
Entry Wire Line
	13300 7000 13200 7100
Entry Wire Line
	13300 6900 13200 7000
Entry Wire Line
	13300 6800 13200 6900
Entry Wire Line
	13300 6700 13200 6800
Entry Wire Line
	13300 6600 13200 6700
Entry Wire Line
	13300 6500 13200 6600
Entry Wire Line
	13300 6400 13200 6500
Entry Wire Line
	13300 6300 13200 6400
Entry Wire Line
	13300 6200 13200 6300
Entry Wire Line
	13300 6100 13200 6200
Entry Wire Line
	13300 6000 13200 6100
Entry Wire Line
	13300 5900 13200 6000
Entry Wire Line
	13300 5800 13200 5900
Entry Wire Line
	13300 5700 13200 5800
Entry Wire Line
	13300 5600 13200 5700
Text Label 13150 5600 2    60   ~ 0
A0
Text Label 13150 5700 2    60   ~ 0
A1
Text Label 13150 5800 2    60   ~ 0
A2
Text Label 13150 5900 2    60   ~ 0
A3
Text Label 13150 6000 2    60   ~ 0
A4
Text Label 13150 6100 2    60   ~ 0
A5
Text Label 13150 6200 2    60   ~ 0
A6
Text Label 13150 6300 2    60   ~ 0
A7
Text Label 13150 6400 2    60   ~ 0
A8
Text Label 13150 6500 2    60   ~ 0
A9
Text Label 13150 6600 2    60   ~ 0
A10
Text Label 13150 6700 2    60   ~ 0
A11
Text Label 13150 6800 2    60   ~ 0
A12
Text Label 13150 6900 2    60   ~ 0
A13
Text Label 13150 7000 2    60   ~ 0
A14
Text Label 13150 7100 2    60   ~ 0
A15
Entry Wire Line
	13300 5500 13200 5600
Text GLabel 11500 7400 0    39   Input ~ 0
GND
Text GLabel 11500 7500 0    39   Input ~ 0
+5v
Text GLabel 11500 5000 0    39   Input ~ 0
~RESET
Text GLabel 11500 6650 0    39   Input ~ 0
E
Text GLabel 11500 5500 0    39   Input ~ 0
R|~W
Text GLabel 11500 4900 0    39   Input ~ 0
MRDY
Text GLabel 11500 5300 0    39   Input ~ 0
~HALT
Text GLabel 11500 6450 0    39   Input ~ 0
~DMA
Text GLabel 11500 5400 0    39   Input ~ 0
~FIRQ
Text GLabel 11500 5100 0    39   Input ~ 0
~NMI
Text GLabel 11500 5200 0    39   Input ~ 0
~IRQ
Text GLabel 11500 5700 0    39   Input ~ 0
~WRITE-ENABLE
Text GLabel 11500 5600 0    39   Input ~ 0
~READ-ENABLE
Wire Wire Line
	12900 5400 13200 5400
Wire Wire Line
	12900 5300 13200 5300
Wire Wire Line
	12900 5200 13200 5200
Wire Wire Line
	12900 5100 13200 5100
Wire Wire Line
	12900 5000 13200 5000
Wire Wire Line
	12900 4900 13200 4900
Wire Wire Line
	12900 4800 13200 4800
Wire Wire Line
	12900 4700 13200 4700
Wire Wire Line
	12900 7100 13200 7100
Wire Wire Line
	12900 7000 13200 7000
Wire Wire Line
	12900 6900 13200 6900
Wire Wire Line
	12900 6800 13200 6800
Wire Wire Line
	12900 6700 13200 6700
Wire Wire Line
	12900 6600 13200 6600
Wire Wire Line
	12900 6500 13200 6500
Wire Wire Line
	12900 6400 13200 6400
Wire Wire Line
	12900 6300 13200 6300
Wire Wire Line
	12900 6200 13200 6200
Wire Wire Line
	12900 6100 13200 6100
Wire Wire Line
	12900 6000 13200 6000
Wire Wire Line
	12900 5900 13200 5900
Wire Wire Line
	12900 5800 13200 5800
Wire Wire Line
	12900 5700 13200 5700
Wire Wire Line
	12900 5600 13200 5600
Text GLabel 11500 6550 0    39   Input ~ 0
Q
Entry Wire Line
	13300 7300 13200 7400
Entry Wire Line
	13300 7200 13200 7300
Entry Wire Line
	13300 7100 13200 7200
Text Label 13150 7200 2    60   ~ 0
A16
Text Label 13150 7300 2    60   ~ 0
A17
Text Label 13150 7400 2    60   ~ 0
A18
Wire Wire Line
	12900 7400 13200 7400
Wire Wire Line
	12900 7300 13200 7300
Wire Wire Line
	12900 7200 13200 7200
Entry Wire Line
	13300 7500 13200 7600
Entry Wire Line
	13300 7400 13200 7500
Text Label 13150 7500 2    60   ~ 0
A19
Text Label 13150 7600 2    60   ~ 0
A20
Wire Wire Line
	12900 7600 13200 7600
Wire Wire Line
	12900 7500 13200 7500
Text GLabel 11500 6900 0    39   Input ~ 0
~SLOT-SELECT
Text GLabel 11500 7000 0    39   Input ~ 0
~RAM-SELECT
Text GLabel 11500 6100 0    39   Input ~ 0
BS
Text GLabel 11500 6000 0    39   Input ~ 0
BA
Text GLabel 11500 7600 0    39   Input ~ 0
-12v
Text GLabel 11500 7300 0    39   Input ~ 0
+12v
Wire Wire Line
	1350 3400 1350 3700
Connection ~ 1350 3700
Wire Wire Line
	1350 3700 1350 3800
$Comp
L Mechanical:MountingHole H3
U 1 1 601C8484
P 7350 10250
F 0 "H3" H 7450 10296 50  0000 L CNN
F 1 "MountingHole" H 7450 10205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 7350 10250 50  0001 C CNN
F 3 "~" H 7350 10250 50  0001 C CNN
	1    7350 10250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 601C8CBA
P 7350 10450
F 0 "H4" H 7450 10496 50  0000 L CNN
F 1 "MountingHole" H 7450 10405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 7350 10450 50  0001 C CNN
F 3 "~" H 7350 10450 50  0001 C CNN
	1    7350 10450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 601CA6EC
P 6600 10250
F 0 "H1" H 6700 10296 50  0000 L CNN
F 1 "MountingHole" H 6700 10205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 6600 10250 50  0001 C CNN
F 3 "~" H 6600 10250 50  0001 C CNN
	1    6600 10250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 601CC1BB
P 6600 10450
F 0 "H2" H 6700 10496 50  0000 L CNN
F 1 "MountingHole" H 6700 10405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 6600 10450 50  0001 C CNN
F 3 "~" H 6600 10450 50  0001 C CNN
	1    6600 10450
	1    0    0    -1  
$EndComp
Text Notes 6750 10100 0    50   ~ 0
PCB Mounting Holes
NoConn ~ 10600 7450
Wire Wire Line
	9900 7850 9900 7800
Wire Wire Line
	9900 7800 9200 7800
Wire Wire Line
	9200 7800 9200 7550
NoConn ~ 1150 9200
NoConn ~ 8050 9650
NoConn ~ 7150 9650
NoConn ~ 12600 2650
NoConn ~ 13450 2650
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60980A82
P 5050 10600
F 0 "#FLG0101" H 5050 10675 50  0001 C CNN
F 1 "PWR_FLAG" H 5050 10765 39  0001 C CNN
F 2 "" H 5050 10600 50  0001 C CNN
F 3 "~" H 5050 10600 50  0001 C CNN
	1    5050 10600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 10650 10600 10650
Connection ~ 10150 10650
Wire Wire Line
	10600 10650 11050 10650
Connection ~ 10600 10650
Connection ~ 11050 10650
Wire Wire Line
	9800 7850 9800 7750
Wire Wire Line
	9800 7750 9900 7750
Wire Wire Line
	9900 7750 9950 7750
Connection ~ 9900 7750
Text GLabel 9950 7750 2    39   Input ~ 0
GND
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60C84D44
P 5150 10600
F 0 "#FLG0102" H 5150 10675 50  0001 C CNN
F 1 "PWR_FLAG" H 5150 10765 39  0001 C CNN
F 2 "" H 5150 10600 50  0001 C CNN
F 3 "~" H 5150 10600 50  0001 C CNN
	1    5150 10600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 60CC09BE
P 5250 10600
F 0 "#FLG0103" H 5250 10675 50  0001 C CNN
F 1 "PWR_FLAG" H 5250 10765 39  0001 C CNN
F 2 "" H 5250 10600 50  0001 C CNN
F 3 "~" H 5250 10600 50  0001 C CNN
	1    5250 10600
	1    0    0    -1  
$EndComp
$Comp
L aspt:SS50-LIKE J6
U 1 1 60CFC64F
P 12200 6100
F 0 "J6" H 12200 6250 39  0000 C CNN
F 1 "SS50-LIKE" H 12200 6150 39  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x25_P2.54mm_Vertical" H 12230 6250 20  0001 C CNN
F 3 "" H 12200 6100 50  0001 C CNN
	1    12200 6100
	1    0    0    -1  
$EndComp
$Comp
L aspt:SS50-LIKE J4
U 1 1 60DCAE60
P 14850 6100
F 0 "J4" H 14850 6200 39  0000 C CNN
F 1 "SS50-LIKE" H 14850 6100 39  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x25_P2.54mm_Vertical" H 14880 6250 20  0001 C CNN
F 3 "" H 14850 6100 50  0001 C CNN
	1    14850 6100
	1    0    0    -1  
$EndComp
Text GLabel 14150 7400 0    39   Input ~ 0
GND
$Comp
L aspt:628128 U8
U 1 1 60ECFAB5
P 3700 8300
F 0 "U8" H 3800 6950 39  0000 C CNN
F 1 "628128" H 3800 6850 39  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm_Socket_LongPads" H 3700 8300 50  0001 C CNN
F 3 "" H 3700 8300 50  0001 C CNN
	1    3700 8300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 611614AF
P 5350 10600
F 0 "#FLG0104" H 5350 10675 50  0001 C CNN
F 1 "PWR_FLAG" H 5350 10765 39  0001 C CNN
F 2 "" H 5350 10600 50  0001 C CNN
F 3 "~" H 5350 10600 50  0001 C CNN
	1    5350 10600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 10750 5250 10750
Wire Wire Line
	5000 10850 5150 10850
Wire Wire Line
	5000 10950 5050 10950
Wire Wire Line
	5350 10650 5000 10650
Wire Wire Line
	5050 10600 5050 10950
Connection ~ 5050 10950
Wire Wire Line
	5050 10950 5350 10950
Wire Wire Line
	5150 10600 5150 10850
Connection ~ 5150 10850
Wire Wire Line
	5150 10850 5350 10850
Wire Wire Line
	5250 10600 5250 10750
Connection ~ 5250 10750
Wire Wire Line
	5250 10750 5350 10750
Wire Wire Line
	5350 10600 5350 10650
Connection ~ 5350 10650
Text GLabel 12850 8650 2    39   Input ~ 0
GND
$Comp
L Device:R_Small_US R2
U 1 1 61BF6D3E
P 12750 8650
F 0 "R2" V 12950 8600 50  0000 L CNN
F 1 "2k2" V 12850 8600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 12750 8650 50  0001 C CNN
F 3 "~" H 12750 8650 50  0001 C CNN
	1    12750 8650
	0    -1   -1   0   
$EndComp
$Comp
L Display_Character:LM16255K J2
U 1 1 5FEF7BE9
P 12250 8850
F 0 "J2" H 12200 8850 39  0000 L CNN
F 1 "AMPIRE 162B LCD" H 12150 8750 39  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 12250 8050 50  0001 C CNN
F 3 "http://pdf.datasheetcatalog.com/datasheet/Sharp/mXvtrzw.pdf" H 12350 8750 50  0001 C CNN
	1    12250 8850
	1    0    0    -1  
$EndComp
Connection ~ 12650 8650
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 61F38D42
P 12650 8650
F 0 "#FLG0105" H 12650 8725 50  0001 C CNN
F 1 "PWR_FLAG" H 12650 8815 39  0001 C CNN
F 2 "" H 12650 8650 50  0001 C CNN
F 3 "~" H 12650 8650 50  0001 C CNN
	1    12650 8650
	-1   0    0    1   
$EndComp
Text Notes 11950 4550 0    50   ~ 0
External Slots
Text Notes 14200 8400 0    50   ~ 0
System Peripheral Select
Wire Wire Line
	7200 10750 7350 10750
Wire Wire Line
	7200 11050 7350 11050
Connection ~ 11250 10750
Wire Wire Line
	11250 10750 11550 10750
Connection ~ 11250 11050
Wire Wire Line
	11250 11050 11550 11050
Connection ~ 10950 10750
Wire Wire Line
	10950 10750 11250 10750
Connection ~ 10950 11050
Wire Wire Line
	10950 11050 11250 11050
Connection ~ 10650 10750
Wire Wire Line
	10650 10750 10950 10750
Connection ~ 10650 11050
Wire Wire Line
	10650 11050 10950 11050
Connection ~ 10350 10750
Wire Wire Line
	10350 10750 10650 10750
Connection ~ 10350 11050
Wire Wire Line
	10350 11050 10650 11050
Connection ~ 10050 10750
Wire Wire Line
	10050 10750 10350 10750
Connection ~ 10050 11050
Wire Wire Line
	10050 11050 10350 11050
Connection ~ 9750 10750
Wire Wire Line
	9750 10750 10050 10750
Connection ~ 9750 11050
Wire Wire Line
	9750 11050 10050 11050
Connection ~ 9450 10750
Wire Wire Line
	9450 10750 9750 10750
Connection ~ 9450 11050
Wire Wire Line
	9450 11050 9750 11050
Connection ~ 9150 10750
Wire Wire Line
	9150 10750 9450 10750
Connection ~ 9150 11050
Wire Wire Line
	9150 11050 9450 11050
Connection ~ 8850 10750
Wire Wire Line
	8850 10750 9150 10750
Connection ~ 8850 11050
Wire Wire Line
	8850 11050 9150 11050
Connection ~ 8550 10750
Wire Wire Line
	8550 10750 8850 10750
Connection ~ 8550 11050
Wire Wire Line
	8550 11050 8850 11050
Connection ~ 8250 10750
Wire Wire Line
	8250 10750 8550 10750
Connection ~ 8250 11050
Wire Wire Line
	8250 11050 8550 11050
Connection ~ 7950 10750
Wire Wire Line
	7950 10750 8250 10750
Connection ~ 7950 11050
Wire Wire Line
	7950 11050 8250 11050
Connection ~ 7650 10750
Wire Wire Line
	7650 10750 7950 10750
Connection ~ 7650 11050
Wire Wire Line
	7650 11050 7950 11050
Connection ~ 7350 10750
Wire Wire Line
	7350 10750 7650 10750
Connection ~ 7350 11050
Wire Wire Line
	7350 11050 7650 11050
Text Notes 9950 1650 0    79   ~ 16
SHOULD BE:\nAA15,\nAA14,\nAA13
Entry Wire Line
	10400 1800 10500 1900
Wire Bus Line
	7800 6250 7800 6350
Wire Bus Line
	11450 8200 11450 8300
Wire Bus Line
	700  5600 700  5800
Wire Bus Line
	10400 1300 10400 1800
Wire Bus Line
	9150 2250 9150 2550
Wire Bus Line
	7550 2050 7550 2350
Wire Bus Line
	2050 5200 2050 5500
Wire Bus Line
	7550 4050 7550 4350
Wire Bus Line
	9150 4250 9150 4550
Wire Bus Line
	600  10350 600  10650
Wire Bus Line
	8800 6300 8800 6500
Wire Bus Line
	2200 7800 2200 8500
Wire Bus Line
	5400 1150 5400 2050
Wire Bus Line
	11450 8550 11450 9250
Wire Bus Line
	1750 1100 1750 1800
Wire Bus Line
	8800 5350 8800 6050
Wire Bus Line
	15950 4600 15950 5300
Wire Bus Line
	4700 8600 4700 9300
Wire Bus Line
	13300 4600 13300 5300
Wire Bus Line
	750  7600 750  8700
Wire Bus Line
	3750 1300 3750 2800
Wire Bus Line
	15950 5500 15950 7500
Wire Bus Line
	13300 5500 13300 7500
Wire Bus Line
	2850 8400 2850 10000
$EndSCHEMATC
