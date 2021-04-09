EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4500 1050 4700 1050
Wire Wire Line
	4500 1150 4700 1150
Wire Wire Line
	4500 1250 4700 1250
Wire Wire Line
	4500 1350 4700 1350
Wire Wire Line
	4500 1450 4700 1450
Wire Wire Line
	4500 1550 4700 1550
Wire Wire Line
	4500 1650 4700 1650
Wire Wire Line
	4500 1750 4700 1750
Text Label 4500 1050 0    50   ~ 0
D0
Text Label 4500 1150 0    50   ~ 0
D1
Text Label 4500 1250 0    50   ~ 0
D2
Text Label 4500 1350 0    50   ~ 0
D3
Text Label 4500 1450 0    50   ~ 0
D4
Text Label 4500 1550 0    50   ~ 0
D5
Text Label 4500 1650 0    50   ~ 0
D6
Text Label 4500 1750 0    50   ~ 0
D7
Entry Wire Line
	4700 1050 4800 1150
Entry Wire Line
	4700 1150 4800 1250
Entry Wire Line
	4700 1250 4800 1350
Entry Wire Line
	4700 1350 4800 1450
Entry Wire Line
	4700 1450 4800 1550
Entry Wire Line
	4700 1550 4800 1650
Entry Wire Line
	4700 1650 4800 1750
Entry Wire Line
	4700 1750 4800 1850
Wire Wire Line
	6150 1750 5950 1750
Wire Wire Line
	6150 1650 5950 1650
Wire Wire Line
	6150 1550 5950 1550
Wire Wire Line
	6150 1450 5950 1450
Wire Wire Line
	6150 1350 5950 1350
Wire Wire Line
	6150 1250 5950 1250
Wire Wire Line
	6150 1150 5950 1150
Wire Wire Line
	6150 1050 5950 1050
Text Label 6150 1750 2    50   ~ 0
D0
Text Label 6150 1650 2    50   ~ 0
D1
Text Label 6150 1550 2    50   ~ 0
D2
Text Label 6150 1450 2    50   ~ 0
D3
Text Label 6150 1350 2    50   ~ 0
D4
Text Label 6150 1250 2    50   ~ 0
D5
Text Label 6150 1150 2    50   ~ 0
D6
Text Label 6150 1050 2    50   ~ 0
D7
Entry Wire Line
	5950 1750 5850 1650
Entry Wire Line
	5950 1650 5850 1550
Entry Wire Line
	5950 1550 5850 1450
Entry Wire Line
	5950 1450 5850 1350
Entry Wire Line
	5950 1350 5850 1250
Entry Wire Line
	5950 1250 5850 1150
Entry Wire Line
	5950 1150 5850 1050
Entry Wire Line
	5950 1050 5850 950 
Text GLabel 6150 1850 0    50   Input ~ 0
GND
Text GLabel 7550 950  2    50   Input ~ 0
GND
Text GLabel 7550 1950 2    50   Input ~ 0
GND
Text GLabel 7550 2350 2    50   Input ~ 0
GND
Text GLabel 7550 2850 2    50   Input ~ 0
GND
NoConn ~ 2550 2250
NoConn ~ 2550 2350
NoConn ~ 2550 2450
NoConn ~ 2550 2550
NoConn ~ 2550 2650
NoConn ~ 2550 2750
NoConn ~ 2550 2850
NoConn ~ 2550 2950
NoConn ~ 2550 3050
NoConn ~ 2550 3150
NoConn ~ 2550 3250
NoConn ~ 2550 3350
NoConn ~ 2550 3450
NoConn ~ 2550 3550
NoConn ~ 2550 3650
NoConn ~ 2550 3750
NoConn ~ 2550 3850
NoConn ~ 2550 3950
Wire Wire Line
	4500 3100 4700 3100
Wire Wire Line
	4500 3200 4700 3200
Wire Wire Line
	4500 3300 4700 3300
Entry Wire Line
	4700 3100 4800 3200
Entry Wire Line
	4700 3200 4800 3300
Entry Wire Line
	4700 3300 4800 3400
Text Label 4500 3100 0    50   ~ 0
A0
Text Label 4500 3200 0    50   ~ 0
A1
Text Label 4500 3300 0    50   ~ 0
A2
Wire Wire Line
	6150 2650 5950 2650
Wire Wire Line
	6150 2550 5950 2550
Entry Wire Line
	5950 2650 5850 2550
Entry Wire Line
	5950 2550 5850 2450
Text Label 6150 2650 2    50   ~ 0
A0
Text Label 6150 2550 2    50   ~ 0
A1
Wire Wire Line
	7550 2650 7750 2650
Entry Wire Line
	7750 2650 7850 2750
Text Label 7550 2650 0    50   ~ 0
A2
Wire Bus Line
	5850 2550 5850 2450
Text GLabel 1150 1350 0    50   Output ~ 0
~Reset
Text GLabel 6150 950  0    50   Input ~ 0
~Reset
NoConn ~ 6150 1950
NoConn ~ 6150 2250
NoConn ~ 7550 2250
NoConn ~ 6150 2450
NoConn ~ 7550 2550
$Comp
L Device:LED D1
U 1 1 6076F985
P 5800 2850
F 0 "D1" H 5900 2950 50  0000 C CNN
F 1 "LED" H 5750 2950 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 5800 2850 50  0001 C CNN
F 3 "~" H 5800 2850 50  0001 C CNN
	1    5800 2850
	-1   0    0    1   
$EndComp
Text GLabel 5650 2850 0    50   Input ~ 0
+5v
$Comp
L Device:R_Small_US R1
U 1 1 60772D02
P 6050 2850
F 0 "R1" V 6150 2750 50  0000 L CNN
F 1 "220" V 6150 2900 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6050 2850 50  0001 C CNN
F 3 "~" H 6050 2850 50  0001 C CNN
	1    6050 2850
	0    1    1    0   
$EndComp
NoConn ~ 1150 3000
NoConn ~ 1150 2900
NoConn ~ 1150 2800
NoConn ~ 1150 2450
NoConn ~ 1150 2350
NoConn ~ 1150 3650
NoConn ~ 1150 3950
Text GLabel 1000 3850 0    50   Output ~ 0
+5v
Text GLabel 1000 3750 0    50   Output ~ 0
GND
NoConn ~ 1150 1450
NoConn ~ 1150 1550
NoConn ~ 1150 1250
NoConn ~ 1150 1650
NoConn ~ 1150 1750
NoConn ~ 1150 1850
NoConn ~ 1150 3350
NoConn ~ 1150 3250
NoConn ~ 6150 2350
NoConn ~ 7550 1050
NoConn ~ 7550 1150
NoConn ~ 7550 1250
NoConn ~ 7550 1350
NoConn ~ 7550 1450
NoConn ~ 7550 1550
NoConn ~ 7550 1650
NoConn ~ 7550 1750
NoConn ~ 7550 1850
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 607CF687
P 2050 6700
F 0 "J2" H 2130 6742 50  0000 L CNN
F 1 "Mem Addr" H 2130 6651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2050 6700 50  0001 C CNN
F 3 "~" H 2050 6700 50  0001 C CNN
	1    2050 6700
	1    0    0    -1  
$EndComp
Text GLabel 1850 6700 0    50   Output ~ 0
~FDD-Select
Text GLabel 6150 2750 0    50   Input ~ 0
~FDD-Select
Text GLabel 7550 2750 2    50   Input ~ 0
+5v
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 607D3B88
P 1050 3750
F 0 "#FLG0101" H 1050 3825 50  0001 C CNN
F 1 "PWR_FLAG" H 1050 3923 50  0001 C CNN
F 2 "" H 1050 3750 50  0001 C CNN
F 3 "~" H 1050 3750 50  0001 C CNN
	1    1050 3750
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 607D4271
P 1050 3850
F 0 "#FLG0102" H 1050 3925 50  0001 C CNN
F 1 "PWR_FLAG" H 1050 4023 50  0001 C CNN
F 2 "" H 1050 3850 50  0001 C CNN
F 3 "~" H 1050 3850 50  0001 C CNN
	1    1050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3850 1050 3850
Connection ~ 1050 3850
Wire Wire Line
	1050 3850 1150 3850
$Comp
L 74xx:74HC245 U1
U 1 1 606AD6AC
P 4000 1550
F 0 "U1" H 4000 1350 50  0000 C CNN
F 1 "74HC245" H 4000 1250 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 4000 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 4000 1550 50  0001 C CNN
	1    4000 1550
	1    0    0    -1  
$EndComp
Text GLabel 3500 2050 0    50   Input ~ 0
~FDD-Select
Text GLabel 4000 750  1    50   Input ~ 0
+5v
Text GLabel 4000 2350 3    50   Input ~ 0
GND
Wire Wire Line
	2550 1050 3500 1050
Wire Wire Line
	2550 1150 3500 1150
Wire Wire Line
	2550 1250 3500 1250
Wire Wire Line
	2550 1350 3500 1350
Wire Wire Line
	2550 1450 3500 1450
Wire Wire Line
	2550 1550 3500 1550
Wire Wire Line
	2550 1650 3500 1650
Wire Wire Line
	2550 1750 3500 1750
$Comp
L 74xx:74HC245 U2
U 1 1 606EA4EE
P 4000 3600
F 0 "U2" H 4000 3400 50  0000 C CNN
F 1 "74HC245" H 4000 3300 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 4000 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 4000 3600 50  0001 C CNN
	1    4000 3600
	1    0    0    -1  
$EndComp
Text GLabel 3500 4100 0    50   Input ~ 0
~FDD-Select
Text GLabel 4000 2800 1    50   Input ~ 0
+5v
Text GLabel 4000 4400 3    50   Input ~ 0
GND
Text GLabel 3500 4000 0    50   Input ~ 0
+5v
Wire Wire Line
	2550 1950 2950 1950
Wire Wire Line
	2950 1950 2950 3100
Wire Wire Line
	2550 2050 2900 2050
Wire Wire Line
	2900 2050 2900 3200
Wire Wire Line
	2550 2150 2850 2150
Wire Wire Line
	2850 2150 2850 3300
Text GLabel 6150 2050 0    50   Input ~ 0
~W
Text GLabel 6150 2150 0    50   Input ~ 0
~R
Wire Wire Line
	2850 3300 3500 3300
Wire Wire Line
	2900 3200 3500 3200
Wire Wire Line
	2950 3100 3500 3100
$Comp
L aspt:SS50-LIKE J1
U 1 1 60682DAF
P 1850 2450
F 0 "J1" H 1850 4104 45  0000 C CNN
F 1 "SS50-LIKE" H 1850 4020 45  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x25_P2.54mm_Vertical" H 1880 2600 20  0001 C CNN
F 3 "" H 1850 2450 50  0001 C CNN
	1    1850 2450
	1    0    0    -1  
$EndComp
Text GLabel 4500 3500 2    50   Output ~ 0
~W
Text GLabel 4500 3400 2    50   Output ~ 0
~R
Wire Wire Line
	3500 3400 3000 3400
Wire Wire Line
	2650 3400 2650 4150
Wire Wire Line
	2650 4150 750  4150
Wire Wire Line
	750  4150 750  1950
Wire Wire Line
	750  1950 1150 1950
Wire Wire Line
	1150 2050 700  2050
Wire Wire Line
	700  2050 700  4200
Wire Wire Line
	700  4200 2700 4200
Wire Wire Line
	2700 4200 2700 3500
Wire Wire Line
	2700 3500 3500 3500
Wire Wire Line
	3500 1950 3000 1950
Wire Wire Line
	3000 1950 3000 3400
Connection ~ 3000 3400
Wire Wire Line
	3000 3400 2650 3400
NoConn ~ 4500 3600
NoConn ~ 4500 3700
NoConn ~ 4500 3800
Wire Wire Line
	8900 1750 8700 1750
Wire Wire Line
	8900 1650 8700 1650
Wire Wire Line
	8900 1550 8700 1550
Wire Wire Line
	8900 1450 8700 1450
Wire Wire Line
	8900 1350 8700 1350
Wire Wire Line
	8900 1250 8700 1250
Wire Wire Line
	8900 1150 8700 1150
Wire Wire Line
	8900 1050 8700 1050
Text Label 8900 1750 2    50   ~ 0
D0
Text Label 8900 1650 2    50   ~ 0
D1
Text Label 8900 1550 2    50   ~ 0
D2
Text Label 8900 1450 2    50   ~ 0
D3
Text Label 8900 1350 2    50   ~ 0
D4
Text Label 8900 1250 2    50   ~ 0
D5
Text Label 8900 1150 2    50   ~ 0
D6
Text Label 8900 1050 2    50   ~ 0
D7
Entry Wire Line
	8700 1750 8600 1650
Entry Wire Line
	8700 1650 8600 1550
Entry Wire Line
	8700 1550 8600 1450
Entry Wire Line
	8700 1450 8600 1350
Entry Wire Line
	8700 1350 8600 1250
Entry Wire Line
	8700 1250 8600 1150
Entry Wire Line
	8700 1150 8600 1050
Entry Wire Line
	8700 1050 8600 950 
Text GLabel 8900 1850 0    50   Input ~ 0
GND
Text GLabel 10300 950  2    50   Input ~ 0
GND
Text GLabel 10300 1950 2    50   Input ~ 0
GND
Text GLabel 10300 2350 2    50   Input ~ 0
GND
Text GLabel 10300 2850 2    50   Input ~ 0
GND
Wire Wire Line
	8900 2650 8700 2650
Wire Wire Line
	8900 2550 8700 2550
Entry Wire Line
	8700 2650 8600 2550
Entry Wire Line
	8700 2550 8600 2450
Text Label 8900 2650 2    50   ~ 0
A0
Text Label 8900 2550 2    50   ~ 0
A1
Wire Wire Line
	10300 2650 10500 2650
Entry Wire Line
	10500 2650 10600 2750
Text Label 10300 2650 0    50   ~ 0
A2
Wire Bus Line
	8600 2550 8600 2450
Text GLabel 8900 950  0    50   Input ~ 0
~Reset
NoConn ~ 8900 1950
NoConn ~ 8900 2250
NoConn ~ 10300 2250
NoConn ~ 8900 2450
NoConn ~ 10300 2550
$Comp
L Device:LED D2
U 1 1 6071DA2A
P 8550 2850
F 0 "D2" H 8650 2950 50  0000 C CNN
F 1 "LED" H 8500 2950 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 8550 2850 50  0001 C CNN
F 3 "~" H 8550 2850 50  0001 C CNN
	1    8550 2850
	-1   0    0    1   
$EndComp
Text GLabel 8400 2850 0    50   Input ~ 0
+5v
$Comp
L Device:R_Small_US R2
U 1 1 6071DA31
P 8800 2850
F 0 "R2" V 8900 2750 50  0000 L CNN
F 1 "220" V 8900 2900 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 8800 2850 50  0001 C CNN
F 3 "~" H 8800 2850 50  0001 C CNN
	1    8800 2850
	0    1    1    0   
$EndComp
NoConn ~ 8900 2350
NoConn ~ 10300 1050
NoConn ~ 10300 1150
NoConn ~ 10300 1250
NoConn ~ 10300 1350
NoConn ~ 10300 1450
NoConn ~ 10300 1550
NoConn ~ 10300 1650
NoConn ~ 10300 1750
NoConn ~ 10300 1850
Text GLabel 8900 2750 0    50   Input ~ 0
~FDD-Select
Text GLabel 10300 2750 2    50   Input ~ 0
+5v
Text GLabel 8900 2050 0    50   Input ~ 0
~W
Text GLabel 8900 2150 0    50   Input ~ 0
~R
Wire Wire Line
	6150 4750 5950 4750
Wire Wire Line
	6150 4650 5950 4650
Wire Wire Line
	6150 4550 5950 4550
Wire Wire Line
	6150 4450 5950 4450
Wire Wire Line
	6150 4350 5950 4350
Wire Wire Line
	6150 4250 5950 4250
Wire Wire Line
	6150 4150 5950 4150
Wire Wire Line
	6150 4050 5950 4050
Text Label 6150 4750 2    50   ~ 0
D0
Text Label 6150 4650 2    50   ~ 0
D1
Text Label 6150 4550 2    50   ~ 0
D2
Text Label 6150 4450 2    50   ~ 0
D3
Text Label 6150 4350 2    50   ~ 0
D4
Text Label 6150 4250 2    50   ~ 0
D5
Text Label 6150 4150 2    50   ~ 0
D6
Text Label 6150 4050 2    50   ~ 0
D7
Entry Wire Line
	5950 4750 5850 4650
Entry Wire Line
	5950 4650 5850 4550
Entry Wire Line
	5950 4550 5850 4450
Entry Wire Line
	5950 4450 5850 4350
Entry Wire Line
	5950 4350 5850 4250
Entry Wire Line
	5950 4250 5850 4150
Entry Wire Line
	5950 4150 5850 4050
Entry Wire Line
	5950 4050 5850 3950
Text GLabel 6150 4850 0    50   Input ~ 0
GND
Text GLabel 7550 3950 2    50   Input ~ 0
GND
Text GLabel 7550 4950 2    50   Input ~ 0
GND
Text GLabel 7550 5350 2    50   Input ~ 0
GND
Text GLabel 7550 5850 2    50   Input ~ 0
GND
Wire Wire Line
	6150 5650 5950 5650
Wire Wire Line
	6150 5550 5950 5550
Entry Wire Line
	5950 5650 5850 5550
Entry Wire Line
	5950 5550 5850 5450
Text Label 6150 5650 2    50   ~ 0
A0
Text Label 6150 5550 2    50   ~ 0
A1
Wire Wire Line
	7550 5650 7750 5650
Entry Wire Line
	7750 5650 7850 5750
Text Label 7550 5650 0    50   ~ 0
A2
Wire Bus Line
	5850 5550 5850 5450
Text GLabel 6150 3950 0    50   Input ~ 0
~Reset
NoConn ~ 6150 4950
NoConn ~ 6150 5250
NoConn ~ 7550 5250
NoConn ~ 6150 5450
NoConn ~ 7550 5550
$Comp
L Device:LED D3
U 1 1 60723AEB
P 5800 5850
F 0 "D3" H 5900 5950 50  0000 C CNN
F 1 "LED" H 5750 5950 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 5800 5850 50  0001 C CNN
F 3 "~" H 5800 5850 50  0001 C CNN
	1    5800 5850
	-1   0    0    1   
$EndComp
Text GLabel 5650 5850 0    50   Input ~ 0
+5v
$Comp
L Device:R_Small_US R3
U 1 1 60723AF2
P 6050 5850
F 0 "R3" V 6150 5750 50  0000 L CNN
F 1 "220" V 6150 5900 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6050 5850 50  0001 C CNN
F 3 "~" H 6050 5850 50  0001 C CNN
	1    6050 5850
	0    1    1    0   
$EndComp
NoConn ~ 6150 5350
NoConn ~ 7550 4050
NoConn ~ 7550 4150
NoConn ~ 7550 4250
NoConn ~ 7550 4350
NoConn ~ 7550 4450
NoConn ~ 7550 4550
NoConn ~ 7550 4650
NoConn ~ 7550 4750
NoConn ~ 7550 4850
Text GLabel 6150 5750 0    50   Input ~ 0
~FDD-Select
Text GLabel 7550 5750 2    50   Input ~ 0
+5v
Text GLabel 6150 5050 0    50   Input ~ 0
~W
Text GLabel 6150 5150 0    50   Input ~ 0
~R
Text GLabel 6150 6050 0    50   Input ~ 0
+5v
Text GLabel 6150 6150 0    50   Input ~ 0
GND
Text GLabel 7550 6050 2    50   Input ~ 0
+5v
Text GLabel 7550 6150 2    50   Input ~ 0
GND
Wire Wire Line
	8900 4750 8700 4750
Wire Wire Line
	8900 4650 8700 4650
Wire Wire Line
	8900 4550 8700 4550
Wire Wire Line
	8900 4450 8700 4450
Wire Wire Line
	8900 4350 8700 4350
Wire Wire Line
	8900 4250 8700 4250
Wire Wire Line
	8900 4150 8700 4150
Wire Wire Line
	8900 4050 8700 4050
Text Label 8900 4750 2    50   ~ 0
D0
Text Label 8900 4650 2    50   ~ 0
D1
Text Label 8900 4550 2    50   ~ 0
D2
Text Label 8900 4450 2    50   ~ 0
D3
Text Label 8900 4350 2    50   ~ 0
D4
Text Label 8900 4250 2    50   ~ 0
D5
Text Label 8900 4150 2    50   ~ 0
D6
Text Label 8900 4050 2    50   ~ 0
D7
Entry Wire Line
	8700 4750 8600 4650
Entry Wire Line
	8700 4650 8600 4550
Entry Wire Line
	8700 4550 8600 4450
Entry Wire Line
	8700 4450 8600 4350
Entry Wire Line
	8700 4350 8600 4250
Entry Wire Line
	8700 4250 8600 4150
Entry Wire Line
	8700 4150 8600 4050
Entry Wire Line
	8700 4050 8600 3950
Text GLabel 8900 4850 0    50   Input ~ 0
GND
Text GLabel 10300 3950 2    50   Input ~ 0
GND
Text GLabel 10300 4950 2    50   Input ~ 0
GND
Text GLabel 10300 5350 2    50   Input ~ 0
GND
Text GLabel 10300 5850 2    50   Input ~ 0
GND
Wire Wire Line
	8900 5650 8700 5650
Wire Wire Line
	8900 5550 8700 5550
Entry Wire Line
	8700 5650 8600 5550
Entry Wire Line
	8700 5550 8600 5450
Text Label 8900 5650 2    50   ~ 0
A0
Text Label 8900 5550 2    50   ~ 0
A1
Wire Wire Line
	10300 5650 10500 5650
Entry Wire Line
	10500 5650 10600 5750
Text Label 10300 5650 0    50   ~ 0
A2
Wire Bus Line
	8600 5550 8600 5450
Text GLabel 8900 3950 0    50   Input ~ 0
~Reset
NoConn ~ 8900 4950
NoConn ~ 8900 5250
NoConn ~ 10300 5250
NoConn ~ 8900 5450
NoConn ~ 10300 5550
$Comp
L Device:LED D4
U 1 1 6074D3D1
P 8550 5850
F 0 "D4" H 8650 5950 50  0000 C CNN
F 1 "LED" H 8500 5950 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 8550 5850 50  0001 C CNN
F 3 "~" H 8550 5850 50  0001 C CNN
	1    8550 5850
	-1   0    0    1   
$EndComp
Text GLabel 8400 5850 0    50   Input ~ 0
+5v
$Comp
L Device:R_Small_US R4
U 1 1 6074D3D8
P 8800 5850
F 0 "R4" V 8900 5750 50  0000 L CNN
F 1 "220" V 8900 5900 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 8800 5850 50  0001 C CNN
F 3 "~" H 8800 5850 50  0001 C CNN
	1    8800 5850
	0    1    1    0   
$EndComp
NoConn ~ 8900 5350
NoConn ~ 10300 4050
NoConn ~ 10300 4150
NoConn ~ 10300 4250
NoConn ~ 10300 4350
NoConn ~ 10300 4450
NoConn ~ 10300 4550
NoConn ~ 10300 4650
NoConn ~ 10300 4750
NoConn ~ 10300 4850
Text GLabel 8900 5750 0    50   Input ~ 0
~FDD-Select
Text GLabel 10300 5750 2    50   Input ~ 0
+5v
Text GLabel 8900 5050 0    50   Input ~ 0
~W
Text GLabel 8900 5150 0    50   Input ~ 0
~R
Text GLabel 8900 6050 0    50   Input ~ 0
+5v
Text GLabel 8900 6150 0    50   Input ~ 0
GND
Text GLabel 10300 6050 2    50   Input ~ 0
+5v
Text GLabel 10300 6150 2    50   Input ~ 0
GND
Wire Wire Line
	1000 3750 1050 3750
Connection ~ 1050 3750
Wire Wire Line
	1050 3750 1150 3750
$Comp
L aspt:ATA-IDE J3
U 1 1 607EEC75
P 6850 700
F 0 "J3" H 6850 675 50  0000 C CNN
F 1 "Drive 1" H 6850 584 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 6850 700 50  0001 C CNN
F 3 "" H 6850 700 50  0001 C CNN
	1    6850 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2050 7550 2150
$Comp
L aspt:ATA-IDE J4
U 1 1 607F3256
P 9600 700
F 0 "J4" H 9600 675 50  0000 C CNN
F 1 "Drive 2" H 9600 584 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 9600 700 50  0001 C CNN
F 3 "" H 9600 700 50  0001 C CNN
	1    9600 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 2050 10300 2150
$Comp
L aspt:ATA-IDE-44 J5
U 1 1 607FEA4F
P 6850 3800
F 0 "J5" H 6850 3875 50  0000 C CNN
F 1 "Drive 2" H 6850 3784 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x22_P2.00mm_Vertical" H 6850 3800 50  0001 C CNN
F 3 "" H 6850 3800 50  0001 C CNN
	1    6850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5050 7550 5150
$Comp
L aspt:ATA-IDE-44 J6
U 1 1 6080182B
P 9600 3800
F 0 "J6" H 9600 3875 50  0000 C CNN
F 1 "Drive 1" H 9600 3784 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x22_P2.00mm_Vertical" H 9600 3800 50  0001 C CNN
F 3 "" H 9600 3800 50  0001 C CNN
	1    9600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 5050 10300 5150
Wire Wire Line
	7550 4950 7550 5050
Connection ~ 7550 5050
Wire Wire Line
	10300 4950 10300 5050
Connection ~ 10300 5050
Wire Wire Line
	10300 1950 10300 2050
Connection ~ 10300 2050
Wire Wire Line
	7550 1950 7550 2050
Connection ~ 7550 2050
NoConn ~ 3500 3600
NoConn ~ 3500 3700
NoConn ~ 3500 3800
$Comp
L Device:C C2
U 1 1 608560E1
P 2350 7200
F 0 "C2" H 2465 7246 50  0000 L CNN
F 1 "0.1uF" H 2465 7155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 2388 7050 50  0001 C CNN
F 3 "~" H 2350 7200 50  0001 C CNN
	1    2350 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 7050 1600 7050
Wire Wire Line
	1900 7350 1600 7350
Text GLabel 1600 7350 0    50   Input ~ 0
+5v
Text GLabel 1600 7050 0    50   Input ~ 0
GND
Wire Wire Line
	1900 7050 2350 7050
Connection ~ 1900 7050
Wire Wire Line
	1900 7350 2350 7350
Connection ~ 1900 7350
$Comp
L Mechanical:MountingHole H1
U 1 1 60906F4A
P 3000 6700
F 0 "H1" H 3100 6746 50  0000 L CNN
F 1 "MountingHole" H 3100 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 3000 6700 50  0001 C CNN
F 3 "~" H 3000 6700 50  0001 C CNN
	1    3000 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60907FDC
P 3000 6900
F 0 "H2" H 3100 6946 50  0000 L CNN
F 1 "MountingHole" H 3100 6855 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 3000 6900 50  0001 C CNN
F 3 "~" H 3000 6900 50  0001 C CNN
	1    3000 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 6090CAA1
P 3000 7100
F 0 "H3" H 3100 7146 50  0000 L CNN
F 1 "MountingHole" H 3100 7055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 3000 7100 50  0001 C CNN
F 3 "~" H 3000 7100 50  0001 C CNN
	1    3000 7100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6091619F
P 3000 7300
F 0 "H4" H 3100 7346 50  0000 L CNN
F 1 "MountingHole" H 3100 7255 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 3000 7300 50  0001 C CNN
F 3 "~" H 3000 7300 50  0001 C CNN
	1    3000 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 608559EF
P 1900 7200
F 0 "C1" H 2015 7246 50  0000 L CNN
F 1 "0.1uF" H 2015 7155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 1938 7050 50  0001 C CNN
F 3 "~" H 1900 7200 50  0001 C CNN
	1    1900 7200
	1    0    0    -1  
$EndComp
Wire Bus Line
	10600 5700 10600 5800
Wire Bus Line
	7850 5700 7850 5800
Wire Bus Line
	10600 2700 10600 2800
Wire Bus Line
	7850 2700 7850 2800
Wire Bus Line
	4800 3200 4800 3400
Wire Bus Line
	4800 1150 4800 1850
Wire Bus Line
	5850 950  5850 1650
Wire Bus Line
	8600 950  8600 1650
Wire Bus Line
	5850 3950 5850 4650
Wire Bus Line
	8600 3950 8600 4650
$Comp
L aspt:Pinnated Logo1
U 1 1 6073DEE8
P 1450 6400
F 0 "Logo1" H 1475 6446 50  0000 L CNN
F 1 "Pinnated" H 1475 6355 50  0000 L CNN
F 2 "Pinnated:Pinnule" H 1450 6400 50  0001 C CNN
F 3 "" H 1450 6400 50  0001 C CNN
	1    1450 6400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
