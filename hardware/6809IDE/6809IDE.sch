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
	4750 1750 4950 1750
Wire Wire Line
	4750 1850 4950 1850
Wire Wire Line
	4750 1950 4950 1950
Wire Wire Line
	4750 2050 4950 2050
Wire Wire Line
	4750 2150 4950 2150
Wire Wire Line
	4750 2250 4950 2250
Wire Wire Line
	4750 2350 4950 2350
Wire Wire Line
	4750 2450 4950 2450
Text Label 4750 1750 0    50   ~ 0
D0
Text Label 4750 1850 0    50   ~ 0
D1
Text Label 4750 1950 0    50   ~ 0
D2
Text Label 4750 2050 0    50   ~ 0
D3
Text Label 4750 2150 0    50   ~ 0
D4
Text Label 4750 2250 0    50   ~ 0
D5
Text Label 4750 2350 0    50   ~ 0
D6
Text Label 4750 2450 0    50   ~ 0
D7
Entry Wire Line
	4950 1750 5050 1850
Entry Wire Line
	4950 1850 5050 1950
Entry Wire Line
	4950 1950 5050 2050
Entry Wire Line
	4950 2050 5050 2150
Entry Wire Line
	4950 2150 5050 2250
Entry Wire Line
	4950 2250 5050 2350
Entry Wire Line
	4950 2350 5050 2450
Entry Wire Line
	4950 2450 5050 2550
Wire Wire Line
	7900 2050 7700 2050
Wire Wire Line
	7900 1950 7700 1950
Wire Wire Line
	7900 1850 7700 1850
Wire Wire Line
	7900 1750 7700 1750
Wire Wire Line
	7900 1650 7700 1650
Wire Wire Line
	7900 1550 7700 1550
Wire Wire Line
	7900 1450 7700 1450
Wire Wire Line
	7900 1350 7700 1350
Text Label 7900 2050 2    50   ~ 0
D0
Text Label 7900 1950 2    50   ~ 0
D1
Text Label 7900 1850 2    50   ~ 0
D2
Text Label 7900 1750 2    50   ~ 0
D3
Text Label 7900 1650 2    50   ~ 0
D4
Text Label 7900 1550 2    50   ~ 0
D5
Text Label 7900 1450 2    50   ~ 0
D6
Text Label 7900 1350 2    50   ~ 0
D7
Entry Wire Line
	7700 2050 7600 1950
Entry Wire Line
	7700 1950 7600 1850
Entry Wire Line
	7700 1850 7600 1750
Entry Wire Line
	7700 1750 7600 1650
Entry Wire Line
	7700 1650 7600 1550
Entry Wire Line
	7700 1550 7600 1450
Entry Wire Line
	7700 1450 7600 1350
Entry Wire Line
	7700 1350 7600 1250
Text GLabel 7900 2150 0    50   Input ~ 0
GND
Text GLabel 9300 1250 2    50   Input ~ 0
GND
Text GLabel 9300 2250 2    50   Input ~ 0
GND
Text GLabel 9300 2650 2    50   Input ~ 0
GND
Text GLabel 9300 3150 2    50   Input ~ 0
GND
NoConn ~ 2800 2950
NoConn ~ 2800 3050
NoConn ~ 2800 3150
NoConn ~ 2800 3250
NoConn ~ 2800 3350
NoConn ~ 2800 3450
NoConn ~ 2800 3550
NoConn ~ 2800 3650
NoConn ~ 2800 3750
NoConn ~ 2800 3850
NoConn ~ 2800 3950
NoConn ~ 2800 4050
NoConn ~ 2800 4150
NoConn ~ 2800 4250
NoConn ~ 2800 4350
NoConn ~ 2800 4450
NoConn ~ 2800 4550
NoConn ~ 2800 4650
Wire Wire Line
	4750 3800 4950 3800
Wire Wire Line
	4750 3900 4800 3900
Wire Wire Line
	4750 4000 4850 4000
Entry Wire Line
	4950 3800 5050 3900
Entry Wire Line
	4950 3900 5050 4000
Entry Wire Line
	4950 4000 5050 4100
Text Label 4750 3800 0    50   ~ 0
A0
Text Label 4750 3900 0    50   ~ 0
A1
Text Label 4750 4000 0    50   ~ 0
A2
Wire Wire Line
	7900 2950 7700 2950
Wire Wire Line
	7900 2850 7700 2850
Entry Wire Line
	7700 2950 7600 2850
Entry Wire Line
	7700 2850 7600 2750
Text Label 7900 2950 2    50   ~ 0
A0
Text Label 7900 2850 2    50   ~ 0
A1
Wire Wire Line
	9300 2950 9500 2950
Entry Wire Line
	9500 2950 9600 3050
Text Label 9300 2950 0    50   ~ 0
A2
Wire Bus Line
	7600 2850 7600 2750
Text GLabel 1400 2050 0    50   Output ~ 0
~Reset
Text GLabel 7900 1250 0    50   Input ~ 0
~Reset
NoConn ~ 7900 2250
NoConn ~ 7900 2550
NoConn ~ 9300 2550
NoConn ~ 7900 2750
NoConn ~ 9300 2850
$Comp
L Device:LED D1
U 1 1 6076F985
P 7550 3150
F 0 "D1" H 7650 3250 50  0000 C CNN
F 1 "LED" H 7500 3250 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7550 3150 50  0001 C CNN
F 3 "~" H 7550 3150 50  0001 C CNN
	1    7550 3150
	-1   0    0    1   
$EndComp
Text GLabel 7400 3150 0    50   Input ~ 0
+5v
$Comp
L Device:R_Small_US R1
U 1 1 60772D02
P 7800 3150
F 0 "R1" V 7900 3050 50  0000 L CNN
F 1 "220" V 7900 3200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 7800 3150 50  0001 C CNN
F 3 "~" H 7800 3150 50  0001 C CNN
	1    7800 3150
	0    1    1    0   
$EndComp
NoConn ~ 1400 3700
NoConn ~ 1400 3600
NoConn ~ 1400 3500
NoConn ~ 1400 3150
NoConn ~ 1400 3050
NoConn ~ 1400 4350
NoConn ~ 1400 4650
Text GLabel 1250 4550 0    50   Output ~ 0
+5v
Text GLabel 1250 4450 0    50   Output ~ 0
GND
NoConn ~ 1400 2150
NoConn ~ 1400 2250
NoConn ~ 1400 1950
NoConn ~ 1400 2350
NoConn ~ 1400 2450
NoConn ~ 1400 2550
NoConn ~ 1400 4050
NoConn ~ 1400 3950
NoConn ~ 7900 2650
NoConn ~ 9300 1350
NoConn ~ 9300 1450
NoConn ~ 9300 1550
NoConn ~ 9300 1650
NoConn ~ 9300 1750
NoConn ~ 9300 1850
NoConn ~ 9300 1950
NoConn ~ 9300 2050
NoConn ~ 9300 2150
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 607CF687
P 1600 5900
F 0 "J2" H 1680 5942 50  0000 L CNN
F 1 "Mem Addr" H 1680 5851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1600 5900 50  0001 C CNN
F 3 "~" H 1600 5900 50  0001 C CNN
	1    1600 5900
	1    0    0    -1  
$EndComp
Text GLabel 1400 5900 0    50   Output ~ 0
~FDD-Select
Text GLabel 9300 3050 2    50   Input ~ 0
+5v
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 607D3B88
P 1300 4450
F 0 "#FLG0101" H 1300 4525 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 4623 50  0001 C CNN
F 2 "" H 1300 4450 50  0001 C CNN
F 3 "~" H 1300 4450 50  0001 C CNN
	1    1300 4450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 607D4271
P 1300 4550
F 0 "#FLG0102" H 1300 4625 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 4723 50  0001 C CNN
F 2 "" H 1300 4550 50  0001 C CNN
F 3 "~" H 1300 4550 50  0001 C CNN
	1    1300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4550 1300 4550
Connection ~ 1300 4550
Wire Wire Line
	1300 4550 1400 4550
$Comp
L 74xx:74HC245 U1
U 1 1 606AD6AC
P 4250 2250
F 0 "U1" H 4250 2050 50  0000 C CNN
F 1 "74HC245" H 4250 1950 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 4250 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 4250 2250 50  0001 C CNN
	1    4250 2250
	1    0    0    -1  
$EndComp
Text GLabel 3750 2750 0    50   Input ~ 0
~FDD-Select
Text GLabel 4250 1450 1    50   Input ~ 0
+5v
Text GLabel 4250 3050 3    50   Input ~ 0
GND
Wire Wire Line
	2800 1750 3750 1750
Wire Wire Line
	2800 1850 3750 1850
Wire Wire Line
	2800 1950 3750 1950
Wire Wire Line
	2800 2050 3750 2050
Wire Wire Line
	2800 2150 3750 2150
Wire Wire Line
	2800 2250 3750 2250
Wire Wire Line
	2800 2350 3750 2350
Wire Wire Line
	2800 2450 3750 2450
Text GLabel 3750 4800 0    50   Input ~ 0
~FDD-Select
Text GLabel 4250 3500 1    50   Input ~ 0
+5v
Text GLabel 4250 5100 3    50   Input ~ 0
GND
Text GLabel 3750 4700 0    50   Input ~ 0
+5v
Wire Wire Line
	2800 2650 3200 2650
Wire Wire Line
	3200 2650 3200 3800
Wire Wire Line
	2800 2750 3150 2750
Wire Wire Line
	3150 2750 3150 3900
Wire Wire Line
	2800 2850 3100 2850
Wire Wire Line
	3100 2850 3100 4000
Text GLabel 7900 2350 0    50   Input ~ 0
~W
Text GLabel 7900 2450 0    50   Input ~ 0
~R
Wire Wire Line
	3100 4000 3750 4000
Wire Wire Line
	3150 3900 3750 3900
Wire Wire Line
	3200 3800 3750 3800
$Comp
L aspt:SS50-LIKE J1
U 1 1 60682DAF
P 2100 3150
F 0 "J1" H 2100 4804 45  0000 C CNN
F 1 "SS50-LIKE" H 2100 4720 45  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x25_P2.54mm_Vertical" H 2130 3300 20  0001 C CNN
F 3 "" H 2100 3150 50  0001 C CNN
	1    2100 3150
	1    0    0    -1  
$EndComp
Text GLabel 4750 4200 2    50   Output ~ 0
~W
Text GLabel 4750 4100 2    50   Output ~ 0
~R
Wire Wire Line
	3750 4100 3250 4100
Wire Wire Line
	2900 4100 2900 4450
Wire Wire Line
	2900 4850 1000 4850
Wire Wire Line
	1000 4850 1000 2650
Wire Wire Line
	1000 2650 1400 2650
Wire Wire Line
	1400 2750 950  2750
Wire Wire Line
	950  2750 950  4900
Wire Wire Line
	950  4900 2950 4900
Wire Wire Line
	2950 4900 2950 4600
Wire Wire Line
	2950 4200 3750 4200
Wire Wire Line
	3750 2650 3250 2650
Wire Wire Line
	3250 2650 3250 4100
Connection ~ 3250 4100
Wire Wire Line
	3250 4100 2900 4100
NoConn ~ 4750 4300
NoConn ~ 4750 4400
NoConn ~ 4750 4500
Wire Wire Line
	7900 4800 7700 4800
Wire Wire Line
	7900 4700 7700 4700
Wire Wire Line
	7900 4600 7700 4600
Wire Wire Line
	7900 4500 7700 4500
Wire Wire Line
	7900 4400 7700 4400
Wire Wire Line
	7900 4300 7700 4300
Wire Wire Line
	7900 4200 7700 4200
Wire Wire Line
	7900 4100 7700 4100
Text Label 7900 4800 2    50   ~ 0
D0
Text Label 7900 4700 2    50   ~ 0
D1
Text Label 7900 4600 2    50   ~ 0
D2
Text Label 7900 4500 2    50   ~ 0
D3
Text Label 7900 4400 2    50   ~ 0
D4
Text Label 7900 4300 2    50   ~ 0
D5
Text Label 7900 4200 2    50   ~ 0
D6
Text Label 7900 4100 2    50   ~ 0
D7
Entry Wire Line
	7700 4800 7600 4700
Entry Wire Line
	7700 4700 7600 4600
Entry Wire Line
	7700 4600 7600 4500
Entry Wire Line
	7700 4500 7600 4400
Entry Wire Line
	7700 4400 7600 4300
Entry Wire Line
	7700 4300 7600 4200
Entry Wire Line
	7700 4200 7600 4100
Entry Wire Line
	7700 4100 7600 4000
Text GLabel 7900 4900 0    50   Input ~ 0
GND
Text GLabel 9300 4000 2    50   Input ~ 0
GND
Text GLabel 9300 5000 2    50   Input ~ 0
GND
Text GLabel 9300 5400 2    50   Input ~ 0
GND
Text GLabel 9300 5900 2    50   Input ~ 0
GND
Wire Wire Line
	7900 5700 7700 5700
Wire Wire Line
	7900 5600 7700 5600
Entry Wire Line
	7700 5700 7600 5600
Entry Wire Line
	7700 5600 7600 5500
Text Label 7900 5700 2    50   ~ 0
A0
Text Label 7900 5600 2    50   ~ 0
A1
Wire Wire Line
	9300 5700 9500 5700
Entry Wire Line
	9500 5700 9600 5800
Text Label 9300 5700 0    50   ~ 0
A2
Wire Bus Line
	7600 5600 7600 5500
Text GLabel 7900 4000 0    50   Input ~ 0
~Reset
NoConn ~ 7900 5000
NoConn ~ 7900 5300
NoConn ~ 9300 5300
NoConn ~ 7900 5500
NoConn ~ 9300 5600
$Comp
L Device:LED D4
U 1 1 6074D3D1
P 7550 5900
F 0 "D4" H 7650 6000 50  0000 C CNN
F 1 "LED" H 7500 6000 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7550 5900 50  0001 C CNN
F 3 "~" H 7550 5900 50  0001 C CNN
	1    7550 5900
	-1   0    0    1   
$EndComp
Text GLabel 7400 5900 0    50   Input ~ 0
+5v
$Comp
L Device:R_Small_US R4
U 1 1 6074D3D8
P 7800 5900
F 0 "R4" V 7900 5800 50  0000 L CNN
F 1 "220" V 7900 5950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 7800 5900 50  0001 C CNN
F 3 "~" H 7800 5900 50  0001 C CNN
	1    7800 5900
	0    1    1    0   
$EndComp
NoConn ~ 7900 5400
NoConn ~ 9300 4100
NoConn ~ 9300 4200
NoConn ~ 9300 4300
NoConn ~ 9300 4400
NoConn ~ 9300 4500
NoConn ~ 9300 4600
NoConn ~ 9300 4700
NoConn ~ 9300 4800
NoConn ~ 9300 4900
Text GLabel 9300 5800 2    50   Input ~ 0
+5v
Text GLabel 7900 5100 0    50   Input ~ 0
~W
Text GLabel 7900 5200 0    50   Input ~ 0
~R
Text GLabel 7900 6100 0    50   Input ~ 0
+5v
Text GLabel 7900 6200 0    50   Input ~ 0
GND
Text GLabel 9300 6100 2    50   Input ~ 0
+5v
Text GLabel 9300 6200 2    50   Input ~ 0
GND
Wire Wire Line
	1250 4450 1300 4450
Connection ~ 1300 4450
Wire Wire Line
	1300 4450 1400 4450
$Comp
L aspt:ATA-IDE J3
U 1 1 607EEC75
P 8600 1000
F 0 "J3" H 8600 975 50  0000 C CNN
F 1 "Drive 0" H 8600 884 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 8600 1000 50  0001 C CNN
F 3 "" H 8600 1000 50  0001 C CNN
	1    8600 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2350 9300 2450
$Comp
L aspt:ATA-IDE-44 J4
U 1 1 6080182B
P 8600 3850
F 0 "J4" H 8600 3925 50  0000 C CNN
F 1 "Drive 0" H 8600 3834 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x22_P2.00mm_Vertical" H 8600 3850 50  0001 C CNN
F 3 "" H 8600 3850 50  0001 C CNN
	1    8600 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5100 9300 5200
Wire Wire Line
	9300 5000 9300 5100
Connection ~ 9300 5100
Wire Wire Line
	9300 2250 9300 2350
Connection ~ 9300 2350
NoConn ~ 3750 4300
NoConn ~ 3750 4400
NoConn ~ 3750 4500
$Comp
L Device:C C2
U 1 1 608560E1
P 1850 6900
F 0 "C2" H 1965 6946 50  0000 L CNN
F 1 "0.1uF" H 1965 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 1888 6750 50  0001 C CNN
F 3 "~" H 1850 6900 50  0001 C CNN
	1    1850 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6750 1100 6750
Wire Wire Line
	1400 7050 1100 7050
Text GLabel 1100 7050 0    50   Input ~ 0
+5v
Text GLabel 1100 6750 0    50   Input ~ 0
GND
Wire Wire Line
	1400 6750 1850 6750
Connection ~ 1400 6750
Wire Wire Line
	1400 7050 1850 7050
Connection ~ 1400 7050
$Comp
L Mechanical:MountingHole H1
U 1 1 60906F4A
P 2600 6500
F 0 "H1" H 2700 6546 50  0000 L CNN
F 1 "MountingHole" H 2700 6455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 2600 6500 50  0001 C CNN
F 3 "~" H 2600 6500 50  0001 C CNN
	1    2600 6500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60907FDC
P 2600 6700
F 0 "H2" H 2700 6746 50  0000 L CNN
F 1 "MountingHole" H 2700 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 2600 6700 50  0001 C CNN
F 3 "~" H 2600 6700 50  0001 C CNN
	1    2600 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 6090CAA1
P 2600 6900
F 0 "H3" H 2700 6946 50  0000 L CNN
F 1 "MountingHole" H 2700 6855 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 2600 6900 50  0001 C CNN
F 3 "~" H 2600 6900 50  0001 C CNN
	1    2600 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6091619F
P 2600 7100
F 0 "H4" H 2700 7146 50  0000 L CNN
F 1 "MountingHole" H 2700 7055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 2600 7100 50  0001 C CNN
F 3 "~" H 2600 7100 50  0001 C CNN
	1    2600 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 608559EF
P 1400 6900
F 0 "C1" H 1515 6946 50  0000 L CNN
F 1 "0.1uF" H 1515 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 1438 6750 50  0001 C CNN
F 3 "~" H 1400 6900 50  0001 C CNN
	1    1400 6900
	1    0    0    -1  
$EndComp
$Comp
L aspt:Pinnated Logo1
U 1 1 6073DEE8
P 2700 7350
F 0 "Logo1" H 2725 7396 50  0000 L CNN
F 1 "Pinnated" H 2725 7305 50  0000 L CNN
F 2 "Pinnated:Pinnule" H 2700 7350 50  0001 C CNN
F 3 "" H 2700 7350 50  0001 C CNN
	1    2700 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 608450D2
P 4750 3450
F 0 "C3" H 4700 3500 50  0000 L CNN
F 1 "15pF" H 4650 3400 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4750 3450 50  0001 C CNN
F 3 "~" H 4750 3450 50  0001 C CNN
	1    4750 3450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC245 U2
U 1 1 606EA4EE
P 4250 4300
F 0 "U2" H 4250 4100 50  0000 C CNN
F 1 "74HC245" H 4250 4000 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 4250 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 4250 4300 50  0001 C CNN
	1    4250 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 6085D4EC
P 4950 3450
F 0 "C4" H 4900 3500 50  0000 L CNN
F 1 "15pF" H 4850 3400 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4950 3450 50  0001 C CNN
F 3 "~" H 4950 3450 50  0001 C CNN
	1    4950 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 60869705
P 5150 3450
F 0 "C5" H 5100 3500 50  0000 L CNN
F 1 "15pF" H 5050 3400 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 5150 3450 50  0001 C CNN
F 3 "~" H 5150 3450 50  0001 C CNN
	1    5150 3450
	1    0    0    -1  
$EndComp
Text GLabel 5250 3350 2    50   Input ~ 0
GND
Wire Wire Line
	4750 3350 4950 3350
Wire Wire Line
	4950 3350 5150 3350
Connection ~ 4950 3350
Wire Wire Line
	5150 3350 5250 3350
Connection ~ 5150 3350
Wire Wire Line
	4750 3550 4750 3800
Connection ~ 4750 3800
Wire Wire Line
	4950 3550 4800 3550
Wire Wire Line
	4800 3550 4800 3900
Connection ~ 4800 3900
Wire Wire Line
	4800 3900 4950 3900
Wire Wire Line
	5150 3550 5150 3600
Wire Wire Line
	5150 3600 4850 3600
Wire Wire Line
	4850 3600 4850 4000
Connection ~ 4850 4000
Wire Wire Line
	4850 4000 4950 4000
Text GLabel 7900 5800 0    50   Input ~ 0
~IDE-Select
Text GLabel 7900 3050 0    50   Input ~ 0
~IDE-Select
Text GLabel 4600 6900 0    50   Input ~ 0
~FDD-Select
Text GLabel 4600 6800 0    50   Output ~ 0
~IDE-Select
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 607E603C
P 4800 6900
F 0 "J5" H 4880 6892 50  0000 L CNN
F 1 "Debug" H 4880 6801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4800 6900 50  0001 C CNN
F 3 "~" H 4800 6900 50  0001 C CNN
	1    4800 6900
	1    0    0    -1  
$EndComp
Text GLabel 3050 4450 2    50   Output ~ 0
pre~R
Text GLabel 3050 4600 2    50   Output ~ 0
pre~W
Text GLabel 4600 7100 0    50   Input ~ 0
pre~R
Text GLabel 4600 7000 0    50   Input ~ 0
pre~W
Wire Wire Line
	2900 4450 3050 4450
Connection ~ 2900 4450
Wire Wire Line
	2900 4450 2900 4850
Wire Wire Line
	2950 4600 3050 4600
Connection ~ 2950 4600
Wire Wire Line
	2950 4600 2950 4200
Text Notes 3850 6650 0    50   ~ 0
Debugging on ~IDE-select~.  \nNormally a jumper from ~FDD-Select~ \nto ~IDE-select~ is all that is needed
Text Notes 2500 6350 0    50   ~ 0
Mointing holes and Logo
Text Notes 1050 6600 0    50   ~ 0
Caps for 7400 series
Text Notes 7950 900  0    50   ~ 0
Connectors for Compact Flash in IDE\nuse either the 40-pin version or the\n44-pin version, not both
Text Notes 1050 5750 0    50   ~ 0
Connection from address\ndecoding on 6809
Text Notes 2500 1150 0    50   ~ 0
50-pin connector to main board\nand isolation of the two busses
Wire Bus Line
	9600 5750 9600 5850
Wire Bus Line
	9600 3000 9600 3100
Wire Bus Line
	5050 3900 5050 4100
Wire Bus Line
	5050 1850 5050 2550
Wire Bus Line
	7600 1250 7600 1950
Wire Bus Line
	7600 4000 7600 4700
$EndSCHEMATC
