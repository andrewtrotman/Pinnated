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
$Comp
L aspt:ATA-IDE J2
U 1 1 60681CE6
P 7850 1700
F 0 "J2" H 7850 1675 50  0000 C CNN
F 1 "ATA-IDE" H 7850 1584 50  0000 C CNN
F 2 "" H 7850 1700 50  0001 C CNN
F 3 "" H 7850 1700 50  0001 C CNN
	1    7850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1600 4900 1600
Wire Wire Line
	4700 1700 4900 1700
Wire Wire Line
	4700 1800 4900 1800
Wire Wire Line
	4700 1900 4900 1900
Wire Wire Line
	4700 2000 4900 2000
Wire Wire Line
	4700 2100 4900 2100
Wire Wire Line
	4700 2200 4900 2200
Wire Wire Line
	4700 2300 4900 2300
Text Label 4700 1600 0    50   ~ 0
D0
Text Label 4700 1700 0    50   ~ 0
D1
Text Label 4700 1800 0    50   ~ 0
D2
Text Label 4700 1900 0    50   ~ 0
D3
Text Label 4700 2000 0    50   ~ 0
D4
Text Label 4700 2100 0    50   ~ 0
D5
Text Label 4700 2200 0    50   ~ 0
D6
Text Label 4700 2300 0    50   ~ 0
D7
Entry Wire Line
	4900 1600 5000 1700
Entry Wire Line
	4900 1700 5000 1800
Entry Wire Line
	4900 1800 5000 1900
Entry Wire Line
	4900 1900 5000 2000
Entry Wire Line
	4900 2000 5000 2100
Entry Wire Line
	4900 2100 5000 2200
Entry Wire Line
	4900 2200 5000 2300
Entry Wire Line
	4900 2300 5000 2400
Wire Wire Line
	7150 2750 6950 2750
Wire Wire Line
	7150 2650 6950 2650
Wire Wire Line
	7150 2550 6950 2550
Wire Wire Line
	7150 2450 6950 2450
Wire Wire Line
	7150 2350 6950 2350
Wire Wire Line
	7150 2250 6950 2250
Wire Wire Line
	7150 2150 6950 2150
Wire Wire Line
	7150 2050 6950 2050
Text Label 7150 2750 2    50   ~ 0
D0
Text Label 7150 2650 2    50   ~ 0
D1
Text Label 7150 2550 2    50   ~ 0
D2
Text Label 7150 2450 2    50   ~ 0
D3
Text Label 7150 2350 2    50   ~ 0
D4
Text Label 7150 2250 2    50   ~ 0
D5
Text Label 7150 2150 2    50   ~ 0
D6
Text Label 7150 2050 2    50   ~ 0
D7
Entry Wire Line
	6950 2750 6850 2650
Entry Wire Line
	6950 2650 6850 2550
Entry Wire Line
	6950 2550 6850 2450
Entry Wire Line
	6950 2450 6850 2350
Entry Wire Line
	6950 2350 6850 2250
Entry Wire Line
	6950 2250 6850 2150
Entry Wire Line
	6950 2150 6850 2050
Entry Wire Line
	6950 2050 6850 1950
Wire Wire Line
	8550 2950 8550 3050
Wire Wire Line
	8550 3050 8550 3150
Connection ~ 8550 3050
Text GLabel 7150 2850 0    50   Input ~ 0
GND
Text GLabel 8550 1950 2    50   Input ~ 0
GND
Text GLabel 8550 2950 2    50   Input ~ 0
GND
Text GLabel 8550 3350 2    50   Input ~ 0
GND
Text GLabel 8550 3850 2    50   Input ~ 0
GND
NoConn ~ 2750 2800
NoConn ~ 2750 2900
NoConn ~ 2750 3000
NoConn ~ 2750 3100
NoConn ~ 2750 3200
NoConn ~ 2750 3300
NoConn ~ 2750 3400
NoConn ~ 2750 3500
NoConn ~ 2750 3600
NoConn ~ 2750 3700
NoConn ~ 2750 3800
NoConn ~ 2750 3900
NoConn ~ 2750 4000
NoConn ~ 2750 4100
NoConn ~ 2750 4200
NoConn ~ 2750 4300
NoConn ~ 2750 4400
NoConn ~ 2750 4500
Wire Wire Line
	4700 3650 4900 3650
Wire Wire Line
	4700 3750 4900 3750
Wire Wire Line
	4700 3850 4900 3850
Entry Wire Line
	4900 3650 5000 3750
Entry Wire Line
	4900 3750 5000 3850
Entry Wire Line
	4900 3850 5000 3950
Text Label 4700 3650 0    50   ~ 0
A0
Text Label 4700 3750 0    50   ~ 0
A1
Text Label 4700 3850 0    50   ~ 0
A2
Wire Wire Line
	7150 3650 6950 3650
Wire Wire Line
	7150 3550 6950 3550
Entry Wire Line
	6950 3650 6850 3550
Entry Wire Line
	6950 3550 6850 3450
Text Label 7150 3650 2    50   ~ 0
A0
Text Label 7150 3550 2    50   ~ 0
A1
Wire Wire Line
	8550 3650 8750 3650
Entry Wire Line
	8750 3650 8850 3750
Text Label 8550 3650 0    50   ~ 0
A2
Wire Bus Line
	6850 3550 6850 3450
Text GLabel 1350 1900 0    50   Output ~ 0
~Reset
Text GLabel 7150 1950 0    50   Input ~ 0
~Reset
NoConn ~ 7150 2950
NoConn ~ 7150 3250
NoConn ~ 8550 3250
NoConn ~ 7150 3450
NoConn ~ 8550 3550
$Comp
L Device:LED D1
U 1 1 6076F985
P 6800 3850
F 0 "D1" H 6900 3950 50  0000 C CNN
F 1 "LED" H 6750 3950 50  0000 C CNN
F 2 "" H 6800 3850 50  0001 C CNN
F 3 "~" H 6800 3850 50  0001 C CNN
	1    6800 3850
	-1   0    0    1   
$EndComp
Text GLabel 6650 3850 0    50   Input ~ 0
+5v
$Comp
L Device:R_Small_US R1
U 1 1 60772D02
P 7050 3850
F 0 "R1" V 7150 3750 50  0000 L CNN
F 1 "220" V 7150 3850 50  0000 L CNN
F 2 "" H 7050 3850 50  0001 C CNN
F 3 "~" H 7050 3850 50  0001 C CNN
	1    7050 3850
	0    1    1    0   
$EndComp
NoConn ~ 1350 3550
NoConn ~ 1350 3450
NoConn ~ 1350 3350
NoConn ~ 1350 3000
NoConn ~ 1350 2900
NoConn ~ 1350 4200
NoConn ~ 1350 4500
Text GLabel 1200 4400 0    50   Output ~ 0
+5v
Text GLabel 1200 4300 0    50   Output ~ 0
GND
NoConn ~ 1350 2000
NoConn ~ 1350 2100
NoConn ~ 1350 1800
NoConn ~ 1350 2200
NoConn ~ 1350 2300
NoConn ~ 1350 2400
NoConn ~ 1350 3900
NoConn ~ 1350 3800
NoConn ~ 7150 3350
NoConn ~ 8550 2050
NoConn ~ 8550 2150
NoConn ~ 8550 2250
NoConn ~ 8550 2350
NoConn ~ 8550 2450
NoConn ~ 8550 2550
NoConn ~ 8550 2650
NoConn ~ 8550 2750
NoConn ~ 8550 2850
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 607CF687
P 7950 4350
F 0 "J3" H 8030 4392 50  0000 L CNN
F 1 "Conn_01x01" H 8030 4301 50  0000 L CNN
F 2 "" H 7950 4350 50  0001 C CNN
F 3 "~" H 7950 4350 50  0001 C CNN
	1    7950 4350
	1    0    0    -1  
$EndComp
Text GLabel 7750 4350 0    50   Output ~ 0
~FDD-Select
Text GLabel 7150 3750 0    50   Input ~ 0
~FDD-Select
Text GLabel 8550 3750 2    50   Input ~ 0
+5v
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 607D3B88
P 1250 4300
F 0 "#FLG0101" H 1250 4375 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 4473 50  0001 C CNN
F 2 "" H 1250 4300 50  0001 C CNN
F 3 "~" H 1250 4300 50  0001 C CNN
	1    1250 4300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 607D4271
P 1250 4400
F 0 "#FLG0102" H 1250 4475 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 4573 50  0001 C CNN
F 2 "" H 1250 4400 50  0001 C CNN
F 3 "~" H 1250 4400 50  0001 C CNN
	1    1250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4300 1250 4300
Wire Wire Line
	1200 4400 1250 4400
Connection ~ 1250 4300
Wire Wire Line
	1250 4300 1350 4300
Connection ~ 1250 4400
Wire Wire Line
	1250 4400 1350 4400
$Comp
L 74xx:74HC245 U1
U 1 1 606AD6AC
P 4200 2100
F 0 "U1" H 4200 1900 50  0000 C CNN
F 1 "74HC245" H 4200 1800 50  0000 C CNN
F 2 "" H 4200 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 4200 2100 50  0001 C CNN
	1    4200 2100
	1    0    0    -1  
$EndComp
Text GLabel 3700 2600 0    50   Input ~ 0
~FDD-Select
Text GLabel 4200 1300 1    50   Input ~ 0
+5v
Text GLabel 4200 2900 3    50   Input ~ 0
GND
Wire Wire Line
	2750 1600 3700 1600
Wire Wire Line
	2750 1700 3700 1700
Wire Wire Line
	2750 1800 3700 1800
Wire Wire Line
	2750 1900 3700 1900
Wire Wire Line
	2750 2000 3700 2000
Wire Wire Line
	2750 2100 3700 2100
Wire Wire Line
	2750 2200 3700 2200
Wire Wire Line
	2750 2300 3700 2300
$Comp
L 74xx:74HC245 U2
U 1 1 606EA4EE
P 4200 4150
F 0 "U2" H 4200 3950 50  0000 C CNN
F 1 "74HC245" H 4200 3850 50  0000 C CNN
F 2 "" H 4200 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 4200 4150 50  0001 C CNN
	1    4200 4150
	1    0    0    -1  
$EndComp
Text GLabel 3700 4650 0    50   Input ~ 0
~FDD-Select
Text GLabel 4200 3350 1    50   Input ~ 0
+5v
Text GLabel 4200 4950 3    50   Input ~ 0
GND
Text GLabel 3700 4550 0    50   Input ~ 0
+5v
Wire Wire Line
	2750 2500 3150 2500
Wire Wire Line
	3150 2500 3150 3650
Wire Wire Line
	2750 2600 3100 2600
Wire Wire Line
	3100 2600 3100 3750
Wire Wire Line
	2750 2700 3050 2700
Wire Wire Line
	3050 2700 3050 3850
Text GLabel 7150 3050 0    50   Input ~ 0
~W
Text GLabel 7150 3150 0    50   Input ~ 0
~R
Wire Wire Line
	3050 3850 3700 3850
Wire Wire Line
	3100 3750 3700 3750
Wire Wire Line
	3150 3650 3700 3650
$Comp
L aspt:SS50-LIKE J1
U 1 1 60682DAF
P 2050 3000
F 0 "J1" H 2050 4654 45  0000 C CNN
F 1 "SS50-LIKE" H 2050 4570 45  0000 C CNN
F 2 "SS-50_SS-50_BOARD_CONNECTOR" H 2080 3150 20  0001 C CNN
F 3 "" H 2050 3000 50  0001 C CNN
	1    2050 3000
	1    0    0    -1  
$EndComp
Text GLabel 4700 4050 2    50   Output ~ 0
~W
Text GLabel 4700 3950 2    50   Output ~ 0
~R
Wire Wire Line
	3700 3950 3200 3950
Wire Wire Line
	2850 3950 2850 4700
Wire Wire Line
	2850 4700 950  4700
Wire Wire Line
	950  4700 950  2500
Wire Wire Line
	950  2500 1350 2500
Wire Wire Line
	1350 2600 900  2600
Wire Wire Line
	900  2600 900  4750
Wire Wire Line
	900  4750 2900 4750
Wire Wire Line
	2900 4750 2900 4050
Wire Wire Line
	2900 4050 3700 4050
Wire Wire Line
	3700 2500 3200 2500
Wire Wire Line
	3200 2500 3200 3950
Connection ~ 3200 3950
Wire Wire Line
	3200 3950 2850 3950
NoConn ~ 4700 4150
NoConn ~ 4700 4250
NoConn ~ 4700 4350
Wire Wire Line
	3700 4150 3700 4250
Wire Wire Line
	3700 4250 3700 4350
Connection ~ 3700 4250
Text GLabel 3700 4250 0    50   Input ~ 0
GND
Wire Bus Line
	8850 3700 8850 3800
Wire Bus Line
	5000 3750 5000 3950
Wire Bus Line
	5000 1700 5000 2400
Wire Bus Line
	6850 1950 6850 2650
$EndSCHEMATC
