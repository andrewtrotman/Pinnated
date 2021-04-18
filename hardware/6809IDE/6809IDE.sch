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
	4500 3200 4550 3200
Wire Wire Line
	4500 3300 4600 3300
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
P 1850 4800
F 0 "J2" H 1930 4842 50  0000 L CNN
F 1 "Mem Addr" H 1930 4751 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1850 4800 50  0001 C CNN
F 3 "~" H 1850 4800 50  0001 C CNN
	1    1850 4800
	1    0    0    -1  
$EndComp
Text GLabel 1650 4800 0    50   Output ~ 0
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
	6150 4500 5950 4500
Wire Wire Line
	6150 4400 5950 4400
Wire Wire Line
	6150 4300 5950 4300
Wire Wire Line
	6150 4200 5950 4200
Wire Wire Line
	6150 4100 5950 4100
Wire Wire Line
	6150 4000 5950 4000
Wire Wire Line
	6150 3900 5950 3900
Wire Wire Line
	6150 3800 5950 3800
Text Label 6150 4500 2    50   ~ 0
D0
Text Label 6150 4400 2    50   ~ 0
D1
Text Label 6150 4300 2    50   ~ 0
D2
Text Label 6150 4200 2    50   ~ 0
D3
Text Label 6150 4100 2    50   ~ 0
D4
Text Label 6150 4000 2    50   ~ 0
D5
Text Label 6150 3900 2    50   ~ 0
D6
Text Label 6150 3800 2    50   ~ 0
D7
Entry Wire Line
	5950 4500 5850 4400
Entry Wire Line
	5950 4400 5850 4300
Entry Wire Line
	5950 4300 5850 4200
Entry Wire Line
	5950 4200 5850 4100
Entry Wire Line
	5950 4100 5850 4000
Entry Wire Line
	5950 4000 5850 3900
Entry Wire Line
	5950 3900 5850 3800
Entry Wire Line
	5950 3800 5850 3700
Text GLabel 6150 4600 0    50   Input ~ 0
GND
Text GLabel 7550 3700 2    50   Input ~ 0
GND
Text GLabel 7550 4700 2    50   Input ~ 0
GND
Text GLabel 7550 5100 2    50   Input ~ 0
GND
Text GLabel 7550 5600 2    50   Input ~ 0
GND
Wire Wire Line
	6150 5400 5950 5400
Wire Wire Line
	6150 5300 5950 5300
Entry Wire Line
	5950 5400 5850 5300
Entry Wire Line
	5950 5300 5850 5200
Text Label 6150 5400 2    50   ~ 0
A0
Text Label 6150 5300 2    50   ~ 0
A1
Wire Wire Line
	7550 5400 7750 5400
Entry Wire Line
	7750 5400 7850 5500
Text Label 7550 5400 0    50   ~ 0
A2
Wire Bus Line
	5850 5300 5850 5200
Text GLabel 6150 3700 0    50   Input ~ 0
~Reset
NoConn ~ 6150 4700
NoConn ~ 6150 5000
NoConn ~ 7550 5000
NoConn ~ 6150 5200
NoConn ~ 7550 5300
$Comp
L Device:LED D4
U 1 1 6074D3D1
P 5800 5600
F 0 "D4" H 5900 5700 50  0000 C CNN
F 1 "LED" H 5750 5700 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 5800 5600 50  0001 C CNN
F 3 "~" H 5800 5600 50  0001 C CNN
	1    5800 5600
	-1   0    0    1   
$EndComp
Text GLabel 5650 5600 0    50   Input ~ 0
+5v
$Comp
L Device:R_Small_US R4
U 1 1 6074D3D8
P 6050 5600
F 0 "R4" V 6150 5500 50  0000 L CNN
F 1 "220" V 6150 5650 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6050 5600 50  0001 C CNN
F 3 "~" H 6050 5600 50  0001 C CNN
	1    6050 5600
	0    1    1    0   
$EndComp
NoConn ~ 6150 5100
NoConn ~ 7550 3800
NoConn ~ 7550 3900
NoConn ~ 7550 4000
NoConn ~ 7550 4100
NoConn ~ 7550 4200
NoConn ~ 7550 4300
NoConn ~ 7550 4400
NoConn ~ 7550 4500
NoConn ~ 7550 4600
Text GLabel 7550 5500 2    50   Input ~ 0
+5v
Text GLabel 6150 4800 0    50   Input ~ 0
~W
Text GLabel 6150 4900 0    50   Input ~ 0
~R
Text GLabel 6150 5800 0    50   Input ~ 0
+5v
Text GLabel 6150 5900 0    50   Input ~ 0
GND
Text GLabel 7550 5800 2    50   Input ~ 0
+5v
Text GLabel 7550 5900 2    50   Input ~ 0
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
F 1 "Drive 0" H 6850 584 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 6850 700 50  0001 C CNN
F 3 "" H 6850 700 50  0001 C CNN
	1    6850 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2050 7550 2150
$Comp
L aspt:ATA-IDE-44 J6
U 1 1 6080182B
P 6850 3550
F 0 "J6" H 6850 3625 50  0000 C CNN
F 1 "Drive 0" H 6850 3534 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x22_P2.00mm_Vertical" H 6850 3550 50  0001 C CNN
F 3 "" H 6850 3550 50  0001 C CNN
	1    6850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4800 7550 4900
Wire Wire Line
	7550 4700 7550 4800
Connection ~ 7550 4800
Wire Wire Line
	7550 1950 7550 2050
Connection ~ 7550 2050
NoConn ~ 3500 3600
NoConn ~ 3500 3700
NoConn ~ 3500 3800
$Comp
L Device:C C2
U 1 1 608560E1
P 2150 5300
F 0 "C2" H 2265 5346 50  0000 L CNN
F 1 "0.1uF" H 2265 5255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 2188 5150 50  0001 C CNN
F 3 "~" H 2150 5300 50  0001 C CNN
	1    2150 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5150 1400 5150
Wire Wire Line
	1700 5450 1400 5450
Text GLabel 1400 5450 0    50   Input ~ 0
+5v
Text GLabel 1400 5150 0    50   Input ~ 0
GND
Wire Wire Line
	1700 5150 2150 5150
Connection ~ 1700 5150
Wire Wire Line
	1700 5450 2150 5450
Connection ~ 1700 5450
$Comp
L Mechanical:MountingHole H1
U 1 1 60906F4A
P 2800 4800
F 0 "H1" H 2900 4846 50  0000 L CNN
F 1 "MountingHole" H 2900 4755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 2800 4800 50  0001 C CNN
F 3 "~" H 2800 4800 50  0001 C CNN
	1    2800 4800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60907FDC
P 2800 5000
F 0 "H2" H 2900 5046 50  0000 L CNN
F 1 "MountingHole" H 2900 4955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 2800 5000 50  0001 C CNN
F 3 "~" H 2800 5000 50  0001 C CNN
	1    2800 5000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 6090CAA1
P 2800 5200
F 0 "H3" H 2900 5246 50  0000 L CNN
F 1 "MountingHole" H 2900 5155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 2800 5200 50  0001 C CNN
F 3 "~" H 2800 5200 50  0001 C CNN
	1    2800 5200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6091619F
P 2800 5400
F 0 "H4" H 2900 5446 50  0000 L CNN
F 1 "MountingHole" H 2900 5355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 2800 5400 50  0001 C CNN
F 3 "~" H 2800 5400 50  0001 C CNN
	1    2800 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 608559EF
P 1700 5300
F 0 "C1" H 1815 5346 50  0000 L CNN
F 1 "0.1uF" H 1815 5255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 1738 5150 50  0001 C CNN
F 3 "~" H 1700 5300 50  0001 C CNN
	1    1700 5300
	1    0    0    -1  
$EndComp
$Comp
L aspt:Pinnated Logo1
U 1 1 6073DEE8
P 1250 4500
F 0 "Logo1" H 1275 4546 50  0000 L CNN
F 1 "Pinnated" H 1275 4455 50  0000 L CNN
F 2 "Pinnated:Pinnule" H 1250 4500 50  0001 C CNN
F 3 "" H 1250 4500 50  0001 C CNN
	1    1250 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 608450D2
P 4500 2750
F 0 "C3" H 4450 2800 50  0000 L CNN
F 1 "15pF" H 4400 2700 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4500 2750 50  0001 C CNN
F 3 "~" H 4500 2750 50  0001 C CNN
	1    4500 2750
	1    0    0    -1  
$EndComp
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
$Comp
L Device:C_Small C4
U 1 1 6085D4EC
P 4700 2750
F 0 "C4" H 4650 2800 50  0000 L CNN
F 1 "15pF" H 4600 2700 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4700 2750 50  0001 C CNN
F 3 "~" H 4700 2750 50  0001 C CNN
	1    4700 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 60869705
P 4900 2750
F 0 "C5" H 4850 2800 50  0000 L CNN
F 1 "15pF" H 4800 2700 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4900 2750 50  0001 C CNN
F 3 "~" H 4900 2750 50  0001 C CNN
	1    4900 2750
	1    0    0    -1  
$EndComp
Text GLabel 5000 2650 2    50   Input ~ 0
GND
Wire Wire Line
	4500 2650 4700 2650
Wire Wire Line
	4700 2650 4900 2650
Connection ~ 4700 2650
Wire Wire Line
	4900 2650 5000 2650
Connection ~ 4900 2650
Wire Wire Line
	4500 2850 4500 3100
Connection ~ 4500 3100
Wire Wire Line
	4700 2850 4550 2850
Wire Wire Line
	4550 2850 4550 3200
Connection ~ 4550 3200
Wire Wire Line
	4550 3200 4700 3200
Wire Wire Line
	4900 2850 4900 2900
Wire Wire Line
	4900 2900 4600 2900
Wire Wire Line
	4600 2900 4600 3300
Connection ~ 4600 3300
Wire Wire Line
	4600 3300 4700 3300
Text GLabel 6150 5500 0    50   Input ~ 0
~FDD-Select
Text GLabel 6150 2750 0    50   Input ~ 0
~FDD-Select
Wire Bus Line
	7850 5450 7850 5550
Wire Bus Line
	7850 2700 7850 2800
Wire Bus Line
	4800 3200 4800 3400
Wire Bus Line
	4800 1150 4800 1850
Wire Bus Line
	5850 950  5850 1650
Wire Bus Line
	5850 3700 5850 4400
$EndSCHEMATC
