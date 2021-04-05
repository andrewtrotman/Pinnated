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
P 7900 1600
F 0 "J2" H 7900 1575 50  0000 C CNN
F 1 "ATA-IDE" H 7900 1484 50  0000 C CNN
F 2 "" H 7900 1600 50  0001 C CNN
F 3 "" H 7900 1600 50  0001 C CNN
	1    7900 1600
	1    0    0    -1  
$EndComp
$Comp
L aspt:SS50-LIKE J1
U 1 1 60682DAF
P 4900 3300
F 0 "J1" H 4900 4954 45  0000 C CNN
F 1 "SS50-LIKE" H 4900 4870 45  0000 C CNN
F 2 "SS-50_SS-50_BOARD_CONNECTOR" H 4930 3450 20  0001 C CNN
F 3 "" H 4900 3300 50  0001 C CNN
	1    4900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1900 5800 1900
Wire Wire Line
	5600 2000 5800 2000
Wire Wire Line
	5600 2100 5800 2100
Wire Wire Line
	5600 2200 5800 2200
Wire Wire Line
	5600 2300 5800 2300
Wire Wire Line
	5600 2400 5800 2400
Wire Wire Line
	5600 2500 5800 2500
Wire Wire Line
	5600 2600 5800 2600
Text Label 5600 1900 0    50   ~ 0
D0
Text Label 5600 2000 0    50   ~ 0
D1
Text Label 5600 2100 0    50   ~ 0
D2
Text Label 5600 2200 0    50   ~ 0
D3
Text Label 5600 2300 0    50   ~ 0
D4
Text Label 5600 2400 0    50   ~ 0
D5
Text Label 5600 2500 0    50   ~ 0
D6
Text Label 5600 2600 0    50   ~ 0
D7
Entry Wire Line
	5800 1900 5900 2000
Entry Wire Line
	5800 2000 5900 2100
Entry Wire Line
	5800 2100 5900 2200
Entry Wire Line
	5800 2200 5900 2300
Entry Wire Line
	5800 2300 5900 2400
Entry Wire Line
	5800 2400 5900 2500
Entry Wire Line
	5800 2500 5900 2600
Entry Wire Line
	5800 2600 5900 2700
Wire Wire Line
	7200 2650 7000 2650
Wire Wire Line
	7200 2550 7000 2550
Wire Wire Line
	7200 2450 7000 2450
Wire Wire Line
	7200 2350 7000 2350
Wire Wire Line
	7200 2250 7000 2250
Wire Wire Line
	7200 2150 7000 2150
Wire Wire Line
	7200 2050 7000 2050
Wire Wire Line
	7200 1950 7000 1950
Text Label 7200 2650 2    50   ~ 0
D0
Text Label 7200 2550 2    50   ~ 0
D1
Text Label 7200 2450 2    50   ~ 0
D2
Text Label 7200 2350 2    50   ~ 0
D3
Text Label 7200 2250 2    50   ~ 0
D4
Text Label 7200 2150 2    50   ~ 0
D5
Text Label 7200 2050 2    50   ~ 0
D6
Text Label 7200 1950 2    50   ~ 0
D7
Entry Wire Line
	7000 2650 6900 2550
Entry Wire Line
	7000 2550 6900 2450
Entry Wire Line
	7000 2450 6900 2350
Entry Wire Line
	7000 2350 6900 2250
Entry Wire Line
	7000 2250 6900 2150
Entry Wire Line
	7000 2150 6900 2050
Entry Wire Line
	7000 2050 6900 1950
Entry Wire Line
	7000 1950 6900 1850
Wire Wire Line
	8600 2850 8600 2950
Wire Wire Line
	8600 2950 8600 3050
Connection ~ 8600 2950
Text GLabel 7200 2750 0    50   Input ~ 0
GND
Text GLabel 8600 1850 2    50   Input ~ 0
GND
Text GLabel 8600 2850 2    50   Input ~ 0
GND
Text GLabel 8600 3250 2    50   Input ~ 0
GND
Text GLabel 8600 3750 2    50   Input ~ 0
GND
NoConn ~ 5600 3100
NoConn ~ 5600 3200
NoConn ~ 5600 3300
NoConn ~ 5600 3400
NoConn ~ 5600 3500
NoConn ~ 5600 3600
NoConn ~ 5600 3700
NoConn ~ 5600 3800
NoConn ~ 5600 3900
NoConn ~ 5600 4000
NoConn ~ 5600 4100
NoConn ~ 5600 4200
NoConn ~ 5600 4300
NoConn ~ 5600 4400
NoConn ~ 5600 4500
NoConn ~ 5600 4600
NoConn ~ 5600 4700
NoConn ~ 5600 4800
Wire Wire Line
	5600 2800 5800 2800
Wire Wire Line
	5600 2900 5800 2900
Wire Wire Line
	5600 3000 5800 3000
Entry Wire Line
	5800 2800 5900 2900
Entry Wire Line
	5800 2900 5900 3000
Entry Wire Line
	5800 3000 5900 3100
Text Label 5600 2800 0    50   ~ 0
A0
Text Label 5600 2900 0    50   ~ 0
A1
Text Label 5600 3000 0    50   ~ 0
A2
Wire Wire Line
	7200 3550 7000 3550
Wire Wire Line
	7200 3450 7000 3450
Entry Wire Line
	7000 3550 6900 3450
Entry Wire Line
	7000 3450 6900 3350
Text Label 7200 3550 2    50   ~ 0
A0
Text Label 7200 3450 2    50   ~ 0
A1
Wire Wire Line
	8600 3550 8800 3550
Entry Wire Line
	8800 3550 8900 3650
Text Label 8600 3550 0    50   ~ 0
A2
Wire Bus Line
	6900 3450 6900 3350
Text GLabel 4200 2800 0    50   Output ~ 0
~R
Text GLabel 4200 2900 0    50   Output ~ 0
~W
Text GLabel 7200 3050 0    50   Input ~ 0
~R
Text GLabel 7200 2950 0    50   Input ~ 0
~W
Text GLabel 4200 2200 0    50   Output ~ 0
~Reset
Text GLabel 7200 1850 0    50   Input ~ 0
~Reset
NoConn ~ 7200 2850
NoConn ~ 7200 3150
NoConn ~ 8600 3150
NoConn ~ 7200 3350
NoConn ~ 8600 3450
$Comp
L Device:LED D1
U 1 1 6076F985
P 6850 3750
F 0 "D1" H 6950 3850 50  0000 C CNN
F 1 "LED" H 6800 3850 50  0000 C CNN
F 2 "" H 6850 3750 50  0001 C CNN
F 3 "~" H 6850 3750 50  0001 C CNN
	1    6850 3750
	-1   0    0    1   
$EndComp
Text GLabel 6700 3750 0    50   Input ~ 0
+5v
$Comp
L Device:R_Small_US R1
U 1 1 60772D02
P 7100 3750
F 0 "R1" V 7200 3650 50  0000 L CNN
F 1 "220" V 7200 3750 50  0000 L CNN
F 2 "" H 7100 3750 50  0001 C CNN
F 3 "~" H 7100 3750 50  0001 C CNN
	1    7100 3750
	0    1    1    0   
$EndComp
NoConn ~ 4200 3850
NoConn ~ 4200 3750
NoConn ~ 4200 3650
NoConn ~ 4200 3300
NoConn ~ 4200 3200
NoConn ~ 4200 4500
NoConn ~ 4200 4800
Text GLabel 4050 4700 0    50   Output ~ 0
+5v
Text GLabel 4050 4600 0    50   Output ~ 0
GND
NoConn ~ 4200 2300
NoConn ~ 4200 2400
NoConn ~ 4200 2100
NoConn ~ 4200 2500
NoConn ~ 4200 2600
NoConn ~ 4200 2700
NoConn ~ 4200 4200
NoConn ~ 4200 4100
NoConn ~ 7200 3250
NoConn ~ 8600 1950
NoConn ~ 8600 2050
NoConn ~ 8600 2150
NoConn ~ 8600 2250
NoConn ~ 8600 2350
NoConn ~ 8600 2450
NoConn ~ 8600 2550
NoConn ~ 8600 2650
NoConn ~ 8600 2750
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 607CF687
P 8000 4250
F 0 "J3" H 8080 4292 50  0000 L CNN
F 1 "Conn_01x01" H 8080 4201 50  0000 L CNN
F 2 "" H 8000 4250 50  0001 C CNN
F 3 "~" H 8000 4250 50  0001 C CNN
	1    8000 4250
	1    0    0    -1  
$EndComp
Text GLabel 7800 4250 0    50   Output ~ 0
~FDD-Select
Text GLabel 7200 3650 0    50   Input ~ 0
~FDD-Select
Text GLabel 8600 3650 2    50   Input ~ 0
+5v
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 607D3B88
P 4100 4600
F 0 "#FLG0101" H 4100 4675 50  0001 C CNN
F 1 "PWR_FLAG" H 4100 4773 50  0001 C CNN
F 2 "" H 4100 4600 50  0001 C CNN
F 3 "~" H 4100 4600 50  0001 C CNN
	1    4100 4600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 607D4271
P 4100 4700
F 0 "#FLG0102" H 4100 4775 50  0001 C CNN
F 1 "PWR_FLAG" H 4100 4873 50  0001 C CNN
F 2 "" H 4100 4700 50  0001 C CNN
F 3 "~" H 4100 4700 50  0001 C CNN
	1    4100 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4600 4100 4600
Wire Wire Line
	4050 4700 4100 4700
Connection ~ 4100 4600
Wire Wire Line
	4100 4600 4200 4600
Connection ~ 4100 4700
Wire Wire Line
	4100 4700 4200 4700
Wire Bus Line
	5900 2900 5900 3100
Wire Bus Line
	8900 3600 8900 3700
Wire Bus Line
	5900 2000 5900 2700
Wire Bus Line
	6900 1850 6900 2550
$EndSCHEMATC
