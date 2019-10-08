EESchema Schematic File Version 4
LIBS:AcuarioSambilSoloDC-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 "doenec@gmail.com"
Comment2 "Esteban Corredor"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L device:R_Small R5
U 1 1 5DB1B0B5
P 4000 950
F 0 "R5" H 4059 996 50  0000 L CNN
F 1 "1KΩ" V 4000 900 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 4000 950 50  0001 C CNN
F 3 "~" H 4000 950 50  0001 C CNN
	1    4000 950 
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D4
U 1 1 5DB1B24B
P 4000 1250
F 0 "D4" V 4100 1200 50  0000 R CNN
F 1 "VALVE 1" H 4150 1350 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 4000 1250 50  0001 C CNN
F 3 "~" H 4000 1250 50  0001 C CNN
	1    4000 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0120
U 1 1 5DB1B51D
P 4000 800
F 0 "#PWR0120" H 4000 650 50  0001 C CNN
F 1 "+12V" H 4150 850 50  0000 C CNN
F 2 "" H 4000 800 50  0001 C CNN
F 3 "" H 4000 800 50  0001 C CNN
	1    4000 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 800  4000 850 
Wire Wire Line
	4000 1050 4000 1100
Wire Wire Line
	4000 1500 4000 1400
$Comp
L device:R_Small R6
U 1 1 5DB2D42D
P 900 1000
F 0 "R6" H 750 1050 50  0000 L CNN
F 1 "1KΩ" V 900 950 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 900 1000 50  0001 C CNN
F 3 "~" H 900 1000 50  0001 C CNN
	1    900  1000
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D5
U 1 1 5DB2D433
P 900 1300
F 0 "D5" V 700 1500 50  0000 R CNN
F 1 "STOP" H 1000 1400 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 900 1300 50  0001 C CNN
F 3 "~" H 900 1300 50  0001 C CNN
	1    900  1300
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0122
U 1 1 5DB2D439
P 900 850
F 0 "#PWR0122" H 900 700 50  0001 C CNN
F 1 "+12V" H 1050 900 50  0000 C CNN
F 2 "" H 900 850 50  0001 C CNN
F 3 "" H 900 850 50  0001 C CNN
	1    900  850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  850  900  900 
Wire Wire Line
	900  1100 900  1150
$Comp
L device:R_Small R7
U 1 1 5DB2F63A
P 1500 1000
F 0 "R7" H 1559 1046 50  0000 L CNN
F 1 "1KΩ" V 1500 950 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 1500 1000 50  0001 C CNN
F 3 "~" H 1500 1000 50  0001 C CNN
	1    1500 1000
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D6
U 1 1 5DB2F640
P 1500 1300
F 0 "D6" V 1600 1250 50  0000 R CNN
F 1 "START" H 1600 1400 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 1500 1300 50  0001 C CNN
F 3 "~" H 1500 1300 50  0001 C CNN
	1    1500 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 850  1500 900 
Wire Wire Line
	1500 1100 1500 1150
Wire Wire Line
	900  1450 900  1600
Wire Wire Line
	1500 1450 1500 1600
$Comp
L device:R_Small R9
U 1 1 5DB4C4F9
P 900 2100
F 0 "R9" H 750 2150 50  0000 L CNN
F 1 "1KΩ" V 900 2050 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 900 2100 50  0001 C CNN
F 3 "~" H 900 2100 50  0001 C CNN
	1    900  2100
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D8
U 1 1 5DB4C500
P 900 2400
F 0 "D8" V 700 2600 50  0000 R CNN
F 1 "STOP" H 1000 2500 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 900 2400 50  0001 C CNN
F 3 "~" H 900 2400 50  0001 C CNN
	1    900  2400
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0127
U 1 1 5DB4C507
P 900 1950
F 0 "#PWR0127" H 900 1800 50  0001 C CNN
F 1 "+12V" H 1050 2000 50  0000 C CNN
F 2 "" H 900 1950 50  0001 C CNN
F 3 "" H 900 1950 50  0001 C CNN
	1    900  1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1950 900  2000
Wire Wire Line
	900  2200 900  2250
$Comp
L device:R_Small R10
U 1 1 5DB4C514
P 1500 2100
F 0 "R10" H 1559 2146 50  0000 L CNN
F 1 "1KΩ" V 1500 2050 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 1500 2100 50  0001 C CNN
F 3 "~" H 1500 2100 50  0001 C CNN
	1    1500 2100
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D9
U 1 1 5DB4C51B
P 1500 2400
F 0 "D9" V 1600 2350 50  0000 R CNN
F 1 "START" H 1600 2500 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 1500 2400 50  0001 C CNN
F 3 "~" H 1500 2400 50  0001 C CNN
	1    1500 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0128
U 1 1 5DB4C522
P 1500 1950
F 0 "#PWR0128" H 1500 1800 50  0001 C CNN
F 1 "+12V" H 1650 2000 50  0000 C CNN
F 2 "" H 1500 1950 50  0001 C CNN
F 3 "" H 1500 1950 50  0001 C CNN
	1    1500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1950 1500 2000
Wire Wire Line
	1500 2200 1500 2250
Wire Wire Line
	900  2550 900  2700
Wire Wire Line
	1500 2550 1500 2700
$Comp
L device:R_Small R12
U 1 1 5DB4DC73
P 900 3200
F 0 "R12" H 750 3250 50  0000 L CNN
F 1 "1KΩ" V 900 3150 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 900 3200 50  0001 C CNN
F 3 "~" H 900 3200 50  0001 C CNN
	1    900  3200
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D11
U 1 1 5DB4DC7A
P 900 3500
F 0 "D11" V 700 3700 50  0000 R CNN
F 1 "STOP" H 1000 3600 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 900 3500 50  0001 C CNN
F 3 "~" H 900 3500 50  0001 C CNN
	1    900  3500
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0132
U 1 1 5DB4DC81
P 900 3050
F 0 "#PWR0132" H 900 2900 50  0001 C CNN
F 1 "+12V" H 1050 3100 50  0000 C CNN
F 2 "" H 900 3050 50  0001 C CNN
F 3 "" H 900 3050 50  0001 C CNN
	1    900  3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3050 900  3100
Wire Wire Line
	900  3300 900  3350
$Comp
L device:R_Small R13
U 1 1 5DB4DC8E
P 1500 3200
F 0 "R13" H 1559 3246 50  0000 L CNN
F 1 "1KΩ" V 1500 3150 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 1500 3200 50  0001 C CNN
F 3 "~" H 1500 3200 50  0001 C CNN
	1    1500 3200
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D12
U 1 1 5DB4DC95
P 1500 3500
F 0 "D12" V 1600 3450 50  0000 R CNN
F 1 "START" H 1600 3600 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 1500 3500 50  0001 C CNN
F 3 "~" H 1500 3500 50  0001 C CNN
	1    1500 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 3050 1500 3100
Wire Wire Line
	1500 3300 1500 3350
Wire Wire Line
	900  3650 900  3800
Wire Wire Line
	1500 3650 1500 3800
$Comp
L device:R_Small R15
U 1 1 5DB4DD00
P 900 4300
F 0 "R15" H 750 4350 50  0000 L CNN
F 1 "1KΩ" V 900 4250 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 900 4300 50  0001 C CNN
F 3 "~" H 900 4300 50  0001 C CNN
	1    900  4300
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D14
U 1 1 5DB4DD07
P 900 4600
F 0 "D14" V 700 4800 50  0000 R CNN
F 1 "STOP" H 1000 4700 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 900 4600 50  0001 C CNN
F 3 "~" H 900 4600 50  0001 C CNN
	1    900  4600
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0137
U 1 1 5DB4DD0E
P 900 4150
F 0 "#PWR0137" H 900 4000 50  0001 C CNN
F 1 "+12V" H 1050 4200 50  0000 C CNN
F 2 "" H 900 4150 50  0001 C CNN
F 3 "" H 900 4150 50  0001 C CNN
	1    900  4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  4150 900  4200
Wire Wire Line
	900  4400 900  4450
$Comp
L device:R_Small R16
U 1 1 5DB4DD1B
P 1500 4300
F 0 "R16" H 1559 4346 50  0000 L CNN
F 1 "1KΩ" V 1500 4250 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 1500 4300 50  0001 C CNN
F 3 "~" H 1500 4300 50  0001 C CNN
	1    1500 4300
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D15
U 1 1 5DB4DD22
P 1500 4600
F 0 "D15" V 1600 4550 50  0000 R CNN
F 1 "START" H 1600 4700 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 1500 4600 50  0001 C CNN
F 3 "~" H 1500 4600 50  0001 C CNN
	1    1500 4600
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0138
U 1 1 5DB4DD29
P 1500 4150
F 0 "#PWR0138" H 1500 4000 50  0001 C CNN
F 1 "+12V" H 1650 4200 50  0000 C CNN
F 2 "" H 1500 4150 50  0001 C CNN
F 3 "" H 1500 4150 50  0001 C CNN
	1    1500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4150 1500 4200
Wire Wire Line
	1500 4400 1500 4450
Wire Wire Line
	900  4750 900  4900
Wire Wire Line
	1500 4750 1500 4900
$Comp
L device:R_Small R18
U 1 1 5DB51F6D
P 900 5400
F 0 "R18" H 750 5450 50  0000 L CNN
F 1 "1KΩ" V 900 5350 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 900 5400 50  0001 C CNN
F 3 "~" H 900 5400 50  0001 C CNN
	1    900  5400
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D17
U 1 1 5DB51F74
P 900 5700
F 0 "D17" V 700 5900 50  0000 R CNN
F 1 "STOP" H 1000 5800 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 900 5700 50  0001 C CNN
F 3 "~" H 900 5700 50  0001 C CNN
	1    900  5700
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0142
U 1 1 5DB51F7B
P 900 5250
F 0 "#PWR0142" H 900 5100 50  0001 C CNN
F 1 "+12V" H 1050 5300 50  0000 C CNN
F 2 "" H 900 5250 50  0001 C CNN
F 3 "" H 900 5250 50  0001 C CNN
	1    900  5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5250 900  5300
Wire Wire Line
	900  5500 900  5550
$Comp
L device:R_Small R19
U 1 1 5DB51F88
P 1500 5400
F 0 "R19" H 1559 5446 50  0000 L CNN
F 1 "1KΩ" V 1500 5350 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 1500 5400 50  0001 C CNN
F 3 "~" H 1500 5400 50  0001 C CNN
	1    1500 5400
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D18
U 1 1 5DB51F8F
P 1500 5700
F 0 "D18" V 1600 5650 50  0000 R CNN
F 1 "START" H 1600 5800 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 1500 5700 50  0001 C CNN
F 3 "~" H 1500 5700 50  0001 C CNN
	1    1500 5700
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0143
U 1 1 5DB51F96
P 1500 5250
F 0 "#PWR0143" H 1500 5100 50  0001 C CNN
F 1 "+12V" H 1650 5300 50  0000 C CNN
F 2 "" H 1500 5250 50  0001 C CNN
F 3 "" H 1500 5250 50  0001 C CNN
	1    1500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5250 1500 5300
Wire Wire Line
	1500 5500 1500 5550
Wire Wire Line
	900  5850 900  6000
Wire Wire Line
	1500 5850 1500 6000
Text Notes 850  6450 0    50   ~ 0
PUPMS CONTROL
$Comp
L device:R_Small R8
U 1 1 5DC6457D
P 5150 950
F 0 "R8" H 5209 996 50  0000 L CNN
F 1 "1KΩ" V 5150 900 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 5150 950 50  0001 C CNN
F 3 "~" H 5150 950 50  0001 C CNN
	1    5150 950 
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D7
U 1 1 5DC64584
P 5150 1250
F 0 "D7" V 5250 1200 50  0000 R CNN
F 1 "VALVE 2" H 5300 1350 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 5150 1250 50  0001 C CNN
F 3 "~" H 5150 1250 50  0001 C CNN
	1    5150 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0152
U 1 1 5DC6458B
P 5150 800
F 0 "#PWR0152" H 5150 650 50  0001 C CNN
F 1 "+12V" H 5300 850 50  0000 C CNN
F 2 "" H 5150 800 50  0001 C CNN
F 3 "" H 5150 800 50  0001 C CNN
	1    5150 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 800  5150 850 
Wire Wire Line
	5150 1050 5150 1100
Wire Wire Line
	5150 1500 5150 1400
$Comp
L device:R_Small R11
U 1 1 5DC6EEA8
P 6250 950
F 0 "R11" H 6309 996 50  0000 L CNN
F 1 "1KΩ" V 6250 900 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 6250 950 50  0001 C CNN
F 3 "~" H 6250 950 50  0001 C CNN
	1    6250 950 
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D10
U 1 1 5DC6EEAE
P 6250 1250
F 0 "D10" V 6350 1200 50  0000 R CNN
F 1 "VALVE 3" H 6400 1350 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 6250 1250 50  0001 C CNN
F 3 "~" H 6250 1250 50  0001 C CNN
	1    6250 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0155
U 1 1 5DC6EEB4
P 6250 800
F 0 "#PWR0155" H 6250 650 50  0001 C CNN
F 1 "+12V" H 6400 850 50  0000 C CNN
F 2 "" H 6250 800 50  0001 C CNN
F 3 "" H 6250 800 50  0001 C CNN
	1    6250 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 800  6250 850 
Wire Wire Line
	6250 1050 6250 1100
Wire Wire Line
	6250 1500 6250 1400
$Comp
L device:R_Small R14
U 1 1 5DC6EED4
P 7400 950
F 0 "R14" H 7459 996 50  0000 L CNN
F 1 "1KΩ" V 7400 900 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 7400 950 50  0001 C CNN
F 3 "~" H 7400 950 50  0001 C CNN
	1    7400 950 
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D13
U 1 1 5DC6EEDA
P 7400 1250
F 0 "D13" V 7500 1200 50  0000 R CNN
F 1 "VALVE 4" H 7550 1350 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 7400 1250 50  0001 C CNN
F 3 "~" H 7400 1250 50  0001 C CNN
	1    7400 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0158
U 1 1 5DC6EEE0
P 7400 800
F 0 "#PWR0158" H 7400 650 50  0001 C CNN
F 1 "+12V" H 7550 850 50  0000 C CNN
F 2 "" H 7400 800 50  0001 C CNN
F 3 "" H 7400 800 50  0001 C CNN
	1    7400 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 800  7400 850 
Wire Wire Line
	7400 1050 7400 1100
Wire Wire Line
	7400 1500 7400 1400
$Comp
L device:R_Small R17
U 1 1 5DC878D3
P 4000 2000
F 0 "R17" H 4059 2046 50  0000 L CNN
F 1 "1KΩ" V 4000 1950 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 4000 2000 50  0001 C CNN
F 3 "~" H 4000 2000 50  0001 C CNN
	1    4000 2000
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D16
U 1 1 5DC878D9
P 4000 2300
F 0 "D16" V 4100 2250 50  0000 R CNN
F 1 "VALVE 5" H 4150 2400 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 4000 2300 50  0001 C CNN
F 3 "~" H 4000 2300 50  0001 C CNN
	1    4000 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0161
U 1 1 5DC878DF
P 4000 1850
F 0 "#PWR0161" H 4000 1700 50  0001 C CNN
F 1 "+12V" H 4150 1900 50  0000 C CNN
F 2 "" H 4000 1850 50  0001 C CNN
F 3 "" H 4000 1850 50  0001 C CNN
	1    4000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1850 4000 1900
Wire Wire Line
	4000 2100 4000 2150
Wire Wire Line
	4000 2550 4000 2450
$Comp
L device:R_Small R20
U 1 1 5DC878FF
P 5150 2000
F 0 "R20" H 5209 2046 50  0000 L CNN
F 1 "1KΩ" V 5150 1950 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 5150 2000 50  0001 C CNN
F 3 "~" H 5150 2000 50  0001 C CNN
	1    5150 2000
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D19
U 1 1 5DC87905
P 5150 2300
F 0 "D19" V 5250 2250 50  0000 R CNN
F 1 "VALVE 6" H 5300 2400 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 5150 2300 50  0001 C CNN
F 3 "~" H 5150 2300 50  0001 C CNN
	1    5150 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0164
U 1 1 5DC8790B
P 5150 1850
F 0 "#PWR0164" H 5150 1700 50  0001 C CNN
F 1 "+12V" H 5300 1900 50  0000 C CNN
F 2 "" H 5150 1850 50  0001 C CNN
F 3 "" H 5150 1850 50  0001 C CNN
	1    5150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1850 5150 1900
Wire Wire Line
	5150 2100 5150 2150
Wire Wire Line
	5150 2550 5150 2450
$Comp
L Transistor_Array:ULN2003 U3
U 1 1 5DCA3A07
P 5000 3800
F 0 "U3" H 5000 4467 50  0000 C CNN
F 1 "ULN2003" H 5000 4376 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 5050 3250 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 5100 3600 50  0001 C CNN
	1    5000 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0167
U 1 1 5DCA3A0D
P 5500 3350
F 0 "#PWR0167" H 5500 3200 50  0001 C CNN
F 1 "+12V" H 5650 3400 50  0000 C CNN
F 2 "" H 5500 3350 50  0001 C CNN
F 3 "" H 5500 3350 50  0001 C CNN
	1    5500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3350 5500 3400
Wire Wire Line
	5500 3400 5400 3400
$Comp
L power:GND #PWR0168
U 1 1 5DCA3A15
P 5000 4450
F 0 "#PWR0168" H 5000 4200 50  0001 C CNN
F 1 "GND" H 5005 4277 50  0000 C CNN
F 2 "" H 5000 4450 50  0001 C CNN
F 3 "" H 5000 4450 50  0001 C CNN
	1    5000 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4450 5000 4400
$Comp
L Transistor_Array:ULN2003 U4
U 1 1 5DCC014F
P 6900 3800
F 0 "U4" H 6900 4467 50  0000 C CNN
F 1 "ULN2003" H 6900 4376 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 6950 3250 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 7000 3600 50  0001 C CNN
	1    6900 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0169
U 1 1 5DCC0155
P 7400 3350
F 0 "#PWR0169" H 7400 3200 50  0001 C CNN
F 1 "+12V" H 7550 3400 50  0000 C CNN
F 2 "" H 7400 3350 50  0001 C CNN
F 3 "" H 7400 3350 50  0001 C CNN
	1    7400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3350 7400 3400
Wire Wire Line
	7400 3400 7300 3400
$Comp
L power:GND #PWR0170
U 1 1 5DCC015D
P 6900 4450
F 0 "#PWR0170" H 6900 4200 50  0001 C CNN
F 1 "GND" H 6905 4277 50  0000 C CNN
F 2 "" H 6900 4450 50  0001 C CNN
F 3 "" H 6900 4450 50  0001 C CNN
	1    6900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4450 6900 4400
Text Label 7300 3800 0    50   ~ 0
STP_P5
Text Label 7300 4000 0    50   ~ 0
STP_P4
Text Label 2300 1350 0    50   ~ 0
STP_P1
Text Label 900  2700 0    50   ~ 0
STP_P2
Text Label 900  3800 0    50   ~ 0
STP_P3
Text Label 900  4900 0    50   ~ 0
STP_P4
Text Label 900  6000 0    50   ~ 0
STP_P5
Text Label 1500 1600 0    50   ~ 0
STR1
Text Label 1500 2700 0    50   ~ 0
STR2
Text Label 1500 3800 0    50   ~ 0
STR3
Text Label 1500 4900 0    50   ~ 0
STR4
Text Label 1500 6000 0    50   ~ 0
STR5
Text Label 4000 1500 0    50   ~ 0
VAL1
Text Label 5150 1500 0    50   ~ 0
VAL2
Text Label 6250 1500 0    50   ~ 0
VAL3
Text Label 7400 1500 0    50   ~ 0
VAL4
Text Label 4000 2550 0    50   ~ 0
VAL5
Text Label 5150 2550 0    50   ~ 0
VAL6
Text Label 5400 4200 0    50   ~ 0
STR1
Text Label 5400 3800 0    50   ~ 0
STR3
Text Label 7300 4100 0    50   ~ 0
STR4
Text Label 7300 3900 0    50   ~ 0
STR5
Text Label 7300 4200 0    50   ~ 0
STP_P3
Text Label 5400 3900 0    50   ~ 0
STP_P2
Text Label 5400 4000 0    50   ~ 0
STR2
$Comp
L device:R_Small R21
U 1 1 5E01F4AA
P 6250 2000
F 0 "R21" H 6309 2046 50  0000 L CNN
F 1 "1KΩ" V 6250 1950 39  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 6250 2000 50  0001 C CNN
F 3 "~" H 6250 2000 50  0001 C CNN
	1    6250 2000
	1    0    0    -1  
$EndComp
$Comp
L device:LED_ALT D20
U 1 1 5E01F4B0
P 6250 2300
F 0 "D20" V 6350 2250 50  0000 R CNN
F 1 "VALVE 7" H 6400 2400 50  0000 R CNN
F 2 "LEDs:LED_1206_HandSoldering" H 6250 2300 50  0001 C CNN
F 3 "~" H 6250 2300 50  0001 C CNN
	1    6250 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0144
U 1 1 5E01F4B6
P 6250 1850
F 0 "#PWR0144" H 6250 1700 50  0001 C CNN
F 1 "+12V" H 6400 1900 50  0000 C CNN
F 2 "" H 6250 1850 50  0001 C CNN
F 3 "" H 6250 1850 50  0001 C CNN
	1    6250 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1850 6250 1900
Wire Wire Line
	6250 2100 6250 2150
Wire Wire Line
	6250 2550 6250 2450
Text Label 6250 2550 0    50   ~ 0
VAL7
Wire Wire Line
	5500 3600 5400 3600
Text Label 5400 4100 0    50   ~ 0
STP_P1
Wire Notes Line
	650  600  650  6500
$Comp
L power:+12V #PWR0123
U 1 1 5DB2F646
P 1500 850
F 0 "#PWR0123" H 1500 700 50  0001 C CNN
F 1 "+12V" H 1350 900 50  0000 C CNN
F 2 "" H 1500 850 50  0001 C CNN
F 3 "" H 1500 850 50  0001 C CNN
	1    1500 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0124
U 1 1 5DA93C7A
P 1500 3050
F 0 "#PWR0124" H 1500 2900 50  0001 C CNN
F 1 "+12V" H 1650 3100 50  0000 C CNN
F 2 "" H 1500 3050 50  0001 C CNN
F 3 "" H 1500 3050 50  0001 C CNN
	1    1500 3050
	1    0    0    -1  
$EndComp
$Comp
L conn:Screw_Terminal_01x04 J12
U 1 1 5DA9EF4B
P 2750 1150
F 0 "J12" H 2830 1142 50  0000 L CNN
F 1 "PUMP 1" H 2830 1051 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-4pol" H 2750 1150 50  0001 C CNN
F 3 "~" H 2750 1150 50  0001 C CNN
	1    2750 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0125
U 1 1 5DAA17C3
P 2200 950
F 0 "#PWR0125" H 2200 800 50  0001 C CNN
F 1 "+12V" H 2350 1000 50  0000 C CNN
F 2 "" H 2200 950 50  0001 C CNN
F 3 "" H 2200 950 50  0001 C CNN
	1    2200 950 
	1    0    0    -1  
$EndComp
Text Label 2300 1150 0    50   ~ 0
STR1
Text Label 900  1600 0    50   ~ 0
STP_P1
Wire Wire Line
	2550 1150 2300 1150
Wire Wire Line
	2300 1350 2550 1350
Wire Wire Line
	2550 1050 2200 1050
Wire Wire Line
	2200 1050 2200 950 
Wire Wire Line
	2550 1250 2200 1250
Wire Wire Line
	2200 1250 2200 1050
Connection ~ 2200 1050
Text Label 2300 2350 0    50   ~ 0
STP_P2
$Comp
L conn:Screw_Terminal_01x04 J14
U 1 1 5DAABE03
P 2750 2150
F 0 "J14" H 2830 2142 50  0000 L CNN
F 1 "PUMP 2" H 2830 2051 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-4pol" H 2750 2150 50  0001 C CNN
F 3 "~" H 2750 2150 50  0001 C CNN
	1    2750 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0126
U 1 1 5DAABE0A
P 2200 1950
F 0 "#PWR0126" H 2200 1800 50  0001 C CNN
F 1 "+12V" H 2350 2000 50  0000 C CNN
F 2 "" H 2200 1950 50  0001 C CNN
F 3 "" H 2200 1950 50  0001 C CNN
	1    2200 1950
	1    0    0    -1  
$EndComp
Text Label 2300 2150 0    50   ~ 0
STR2
Wire Wire Line
	2550 2150 2300 2150
Wire Wire Line
	2300 2350 2550 2350
Wire Wire Line
	2550 2050 2200 2050
Wire Wire Line
	2200 2050 2200 1950
Wire Wire Line
	2550 2250 2200 2250
Wire Wire Line
	2200 2250 2200 2050
Connection ~ 2200 2050
Text Label 2300 3450 0    50   ~ 0
STP_P3
$Comp
L conn:Screw_Terminal_01x04 J15
U 1 1 5DAAE27C
P 2750 3250
F 0 "J15" H 2830 3242 50  0000 L CNN
F 1 "PUMP 3" H 2830 3151 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-4pol" H 2750 3250 50  0001 C CNN
F 3 "~" H 2750 3250 50  0001 C CNN
	1    2750 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0129
U 1 1 5DAAE283
P 2200 3050
F 0 "#PWR0129" H 2200 2900 50  0001 C CNN
F 1 "+12V" H 2350 3100 50  0000 C CNN
F 2 "" H 2200 3050 50  0001 C CNN
F 3 "" H 2200 3050 50  0001 C CNN
	1    2200 3050
	1    0    0    -1  
$EndComp
Text Label 2300 3250 0    50   ~ 0
STR3
Wire Wire Line
	2550 3250 2300 3250
Wire Wire Line
	2300 3450 2550 3450
Wire Wire Line
	2550 3150 2200 3150
Wire Wire Line
	2200 3150 2200 3050
Wire Wire Line
	2550 3350 2200 3350
Wire Wire Line
	2200 3350 2200 3150
Connection ~ 2200 3150
Text Label 2300 4550 0    50   ~ 0
STP_P4
$Comp
L conn:Screw_Terminal_01x04 J16
U 1 1 5DAB0C97
P 2750 4350
F 0 "J16" H 2830 4342 50  0000 L CNN
F 1 "PUMP 4" H 2830 4251 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-4pol" H 2750 4350 50  0001 C CNN
F 3 "~" H 2750 4350 50  0001 C CNN
	1    2750 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0130
U 1 1 5DAB0C9E
P 2200 4150
F 0 "#PWR0130" H 2200 4000 50  0001 C CNN
F 1 "+12V" H 2350 4200 50  0000 C CNN
F 2 "" H 2200 4150 50  0001 C CNN
F 3 "" H 2200 4150 50  0001 C CNN
	1    2200 4150
	1    0    0    -1  
$EndComp
Text Label 2300 4350 0    50   ~ 0
STR4
Wire Wire Line
	2550 4350 2300 4350
Wire Wire Line
	2300 4550 2550 4550
Wire Wire Line
	2550 4250 2200 4250
Wire Wire Line
	2200 4250 2200 4150
Wire Wire Line
	2550 4450 2200 4450
Wire Wire Line
	2200 4450 2200 4250
Connection ~ 2200 4250
Text Label 2300 5600 0    50   ~ 0
STP_P5
$Comp
L conn:Screw_Terminal_01x04 J17
U 1 1 5DAB3B3E
P 2750 5400
F 0 "J17" H 2830 5392 50  0000 L CNN
F 1 "PUMP 5" H 2830 5301 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-4pol" H 2750 5400 50  0001 C CNN
F 3 "~" H 2750 5400 50  0001 C CNN
	1    2750 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0131
U 1 1 5DAB3B45
P 2200 5200
F 0 "#PWR0131" H 2200 5050 50  0001 C CNN
F 1 "+12V" H 2350 5250 50  0000 C CNN
F 2 "" H 2200 5200 50  0001 C CNN
F 3 "" H 2200 5200 50  0001 C CNN
	1    2200 5200
	1    0    0    -1  
$EndComp
Text Label 2300 5400 0    50   ~ 0
STR5
Wire Wire Line
	2550 5400 2300 5400
Wire Wire Line
	2300 5600 2550 5600
Wire Wire Line
	2550 5300 2200 5300
Wire Wire Line
	2200 5300 2200 5200
Wire Wire Line
	2550 5500 2200 5500
Wire Wire Line
	2200 5500 2200 5300
Connection ~ 2200 5300
$Comp
L conn:Screw_Terminal_01x02 J13
U 1 1 5DAB9244
P 4700 1000
F 0 "J13" H 4779 992 50  0000 L CNN
F 1 "VALVE" H 4779 901 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 4700 1000 50  0001 C CNN
F 3 "~" H 4700 1000 50  0001 C CNN
	1    4700 1000
	1    0    0    -1  
$EndComp
$Comp
L conn:Screw_Terminal_01x02 J18
U 1 1 5DAB977E
P 5800 1000
F 0 "J18" H 5879 992 50  0000 L CNN
F 1 "VALVE" H 5879 901 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 5800 1000 50  0001 C CNN
F 3 "~" H 5800 1000 50  0001 C CNN
	1    5800 1000
	1    0    0    -1  
$EndComp
$Comp
L conn:Screw_Terminal_01x02 J19
U 1 1 5DAB9966
P 6950 1000
F 0 "J19" H 7029 992 50  0000 L CNN
F 1 "VALVE" H 7029 901 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 6950 1000 50  0001 C CNN
F 3 "~" H 6950 1000 50  0001 C CNN
	1    6950 1000
	1    0    0    -1  
$EndComp
$Comp
L conn:Screw_Terminal_01x02 J20
U 1 1 5DAB9B17
P 8050 1100
F 0 "J20" H 8129 1092 50  0000 L CNN
F 1 "VALVE" H 8129 1001 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 8050 1100 50  0001 C CNN
F 3 "~" H 8050 1100 50  0001 C CNN
	1    8050 1100
	1    0    0    -1  
$EndComp
$Comp
L conn:Screw_Terminal_01x02 J21
U 1 1 5DAB9D07
P 4700 2150
F 0 "J21" H 4779 2142 50  0000 L CNN
F 1 "VALVE" H 4779 2051 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 4700 2150 50  0001 C CNN
F 3 "~" H 4700 2150 50  0001 C CNN
	1    4700 2150
	1    0    0    -1  
$EndComp
$Comp
L conn:Screw_Terminal_01x02 J22
U 1 1 5DAB9F2E
P 5800 2150
F 0 "J22" H 5879 2142 50  0000 L CNN
F 1 "VALVE" H 5879 2051 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 5800 2150 50  0001 C CNN
F 3 "~" H 5800 2150 50  0001 C CNN
	1    5800 2150
	1    0    0    -1  
$EndComp
$Comp
L conn:Screw_Terminal_01x02 J23
U 1 1 5DABA1BE
P 7000 2000
F 0 "J23" H 7079 1992 50  0000 L CNN
F 1 "VALVE" H 7079 1901 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 7000 2000 50  0001 C CNN
F 3 "~" H 7000 2000 50  0001 C CNN
	1    7000 2000
	1    0    0    -1  
$EndComp
Text Label 6600 2000 0    50   ~ 0
+12V
Text Label 6600 2100 0    50   ~ 0
VAL7
Wire Wire Line
	6600 2100 6800 2100
Wire Wire Line
	6800 2000 6600 2000
Text Label 4300 2150 0    50   ~ 0
+12V
Text Label 4300 2250 0    50   ~ 0
VAL5
Wire Wire Line
	4300 2250 4500 2250
Wire Wire Line
	4500 2150 4300 2150
Text Label 7650 1100 0    50   ~ 0
+12V
Text Label 7650 1200 0    50   ~ 0
VAL4
Wire Wire Line
	7650 1200 7850 1200
Wire Wire Line
	7850 1100 7650 1100
Text Label 6550 1000 0    50   ~ 0
+12V
Text Label 6550 1100 0    50   ~ 0
VAL3
Wire Wire Line
	6550 1100 6750 1100
Wire Wire Line
	6750 1000 6550 1000
Text Label 5400 1000 0    50   ~ 0
+12V
Text Label 5400 1100 0    50   ~ 0
VAL2
Wire Wire Line
	5400 1100 5600 1100
Wire Wire Line
	5600 1000 5400 1000
Text Label 4300 1000 0    50   ~ 0
+12V
Text Label 4300 1100 0    50   ~ 0
VAL1
Wire Wire Line
	4300 1100 4500 1100
Wire Wire Line
	4500 1000 4300 1000
Text Label 5400 2150 0    50   ~ 0
+12V
Text Label 5400 2250 0    50   ~ 0
VAL6
Wire Wire Line
	5400 2250 5600 2250
Wire Wire Line
	5600 2150 5400 2150
Text HLabel 6600 1500 2    50   Input ~ 0
VAL3
Wire Wire Line
	6600 1500 6250 1500
Text HLabel 7750 1500 2    50   Input ~ 0
VAL4
Wire Wire Line
	7750 1500 7400 1500
Text HLabel 4350 2550 2    50   Input ~ 0
VAL5
Text HLabel 5500 2550 2    50   Input ~ 0
VAL6
Text HLabel 6600 2550 2    50   Input ~ 0
VAL7
Text HLabel 4250 3600 0    50   Input ~ 0
45
Text HLabel 4250 3700 0    50   Input ~ 0
47
Text HLabel 4250 3800 0    50   Input ~ 0
49
Text HLabel 4250 3900 0    50   Input ~ 0
51(MOSI)
Text HLabel 4250 4000 0    50   Input ~ 0
53(SS)
Wire Wire Line
	4250 4000 4600 4000
Wire Wire Line
	4250 3900 4600 3900
Wire Wire Line
	4250 3800 4600 3800
Wire Wire Line
	4250 3700 4600 3700
Text Label 5500 3700 0    50   ~ 0
VAL1
Text Label 5500 3600 0    50   ~ 0
VAL2
Wire Wire Line
	5500 3700 5400 3700
Wire Wire Line
	4600 3600 4250 3600
Text HLabel 4250 4200 0    50   Input ~ 0
A15
Text HLabel 4250 4100 0    50   Input ~ 0
A14
Text HLabel 6350 3800 0    50   Input ~ 0
A13
Text HLabel 6350 3900 0    50   Input ~ 0
A12
Text HLabel 6350 4000 0    50   Input ~ 0
A11
Wire Wire Line
	6350 4200 6500 4200
Wire Wire Line
	6350 4100 6500 4100
Wire Wire Line
	6500 4000 6350 4000
Wire Wire Line
	6350 3900 6500 3900
Wire Wire Line
	6500 3800 6350 3800
Wire Notes Line
	650  600  3200 600 
Wire Notes Line
	3200 600  3200 6500
Wire Notes Line
	3200 6500 650  6500
Wire Wire Line
	4350 2550 4000 2550
Wire Wire Line
	6600 2550 6250 2550
Wire Wire Line
	5500 2550 5150 2550
Wire Notes Line
	3750 600  8400 600 
Wire Notes Line
	3750 3050 7900 3050
Wire Notes Line
	7900 3050 7900 4750
Wire Notes Line
	7900 4750 3750 4750
Wire Notes Line
	3750 4750 3750 3050
Text Notes 3850 2750 0    50   ~ 0
VALVES CONTROL
Wire Notes Line
	3750 2800 8400 2800
Wire Notes Line
	8400 600  8400 2800
Wire Notes Line
	3750 600  3750 2800
Wire Wire Line
	4600 4100 4250 4100
Wire Wire Line
	4250 4200 4600 4200
Text HLabel 6350 4100 0    50   Input ~ 0
A10
Text HLabel 6350 4200 0    50   Input ~ 0
A9
Text Notes 3950 4700 0    50   ~ 0
DARLINGTON ARRAYS
$EndSCHEMATC
