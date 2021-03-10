EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
Title "D-Jetronic ECU Tester"
Date "2021-03-09"
Rev "1.0"
Comp "(C) Britishideas 2021"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4750 2800 0    50   Input ~ 0
VAC1
$Comp
L Device:R R?
U 1 1 604F6EDA
P 5000 2800
AR Path="/604BF505/604F6EDA" Ref="R?"  Part="1" 
AR Path="/604F15FC/604F6EDA" Ref="R25"  Part="1" 
F 0 "R25" V 4793 2800 50  0000 C CNN
F 1 "1k" V 4884 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4930 2800 50  0001 C CNN
F 3 "~" H 5000 2800 50  0001 C CNN
	1    5000 2800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 604F6EE6
P 5650 3350
AR Path="/604F6EE6" Ref="#PWR?"  Part="1" 
AR Path="/604BF505/604F6EE6" Ref="#PWR?"  Part="1" 
AR Path="/604F15FC/604F6EE6" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 5650 3100 50  0001 C CNN
F 1 "GND" H 5655 3177 50  0000 C CNN
F 2 "" H 5650 3350 50  0001 C CNN
F 3 "" H 5650 3350 50  0001 C CNN
	1    5650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2800 4850 2800
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 604F6EEE
P 5550 2800
AR Path="/604BF505/604F6EEE" Ref="Q?"  Part="1" 
AR Path="/604F15FC/604F6EEE" Ref="Q9"  Part="1" 
F 0 "Q9" H 5740 2846 50  0000 L CNN
F 1 "MMBT2222ALT1G" H 5740 2755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5750 2725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5550 2800 50  0001 L CNN
F 4 "MMBT2222ALT1G" H 5550 2800 50  0001 C CNN "manf#"
	1    5550 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 604F6EF4
P 5250 3050
AR Path="/604BF505/604F6EF4" Ref="R?"  Part="1" 
AR Path="/604F15FC/604F6EF4" Ref="R27"  Part="1" 
F 0 "R27" V 5043 3050 50  0000 C CNN
F 1 "10k" V 5134 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5180 3050 50  0001 C CNN
F 3 "~" H 5250 3050 50  0001 C CNN
	1    5250 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2500 5650 2600
Wire Wire Line
	5650 3000 5650 3300
Wire Wire Line
	5150 2800 5250 2800
Wire Wire Line
	5250 2800 5250 2900
Connection ~ 5250 2800
Wire Wire Line
	5250 2800 5350 2800
Wire Wire Line
	5250 3200 5250 3300
Wire Wire Line
	5250 3300 5650 3300
Connection ~ 5650 3300
Wire Wire Line
	5650 3300 5650 3350
$Comp
L Device:R R?
U 1 1 604F6F0F
P 5000 5350
AR Path="/604BF505/604F6F0F" Ref="R?"  Part="1" 
AR Path="/604F15FC/604F6F0F" Ref="R26"  Part="1" 
F 0 "R26" V 4793 5350 50  0000 C CNN
F 1 "1k" V 4884 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4930 5350 50  0001 C CNN
F 3 "~" H 5000 5350 50  0001 C CNN
	1    5000 5350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 604F6F1B
P 5650 5900
AR Path="/604F6F1B" Ref="#PWR?"  Part="1" 
AR Path="/604BF505/604F6F1B" Ref="#PWR?"  Part="1" 
AR Path="/604F15FC/604F6F1B" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 5650 5650 50  0001 C CNN
F 1 "GND" H 5655 5727 50  0000 C CNN
F 2 "" H 5650 5900 50  0001 C CNN
F 3 "" H 5650 5900 50  0001 C CNN
	1    5650 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5350 4850 5350
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 604F6F23
P 5550 5350
AR Path="/604BF505/604F6F23" Ref="Q?"  Part="1" 
AR Path="/604F15FC/604F6F23" Ref="Q10"  Part="1" 
F 0 "Q10" H 5740 5396 50  0000 L CNN
F 1 "MMBT2222ALT1G" H 5740 5305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5750 5275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5550 5350 50  0001 L CNN
F 4 "MMBT2222ALT1G" H 5550 5350 50  0001 C CNN "manf#"
	1    5550 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 604F6F29
P 5250 5600
AR Path="/604BF505/604F6F29" Ref="R?"  Part="1" 
AR Path="/604F15FC/604F6F29" Ref="R28"  Part="1" 
F 0 "R28" V 5043 5600 50  0000 C CNN
F 1 "10k" V 5134 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5180 5600 50  0001 C CNN
F 3 "~" H 5250 5600 50  0001 C CNN
	1    5250 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5050 5650 5150
Wire Wire Line
	5650 5550 5650 5850
Wire Wire Line
	5150 5350 5250 5350
Wire Wire Line
	5250 5350 5250 5450
Connection ~ 5250 5350
Wire Wire Line
	5250 5350 5350 5350
Wire Wire Line
	5250 5750 5250 5850
Wire Wire Line
	5250 5850 5650 5850
Connection ~ 5650 5850
Wire Wire Line
	5650 5850 5650 5900
Text HLabel 4750 5350 0    50   Input ~ 0
VAC2
Wire Wire Line
	6750 2500 6750 3400
Wire Wire Line
	5650 2500 6750 2500
Wire Wire Line
	5650 5050 6750 5050
$Comp
L power:GND #PWR?
U 1 1 6051CD7E
P 7550 3850
AR Path="/6051CD7E" Ref="#PWR?"  Part="1" 
AR Path="/604BF505/6051CD7E" Ref="#PWR?"  Part="1" 
AR Path="/604F15FC/6051CD7E" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 7550 3600 50  0001 C CNN
F 1 "GND" H 7555 3677 50  0000 C CNN
F 2 "" H 7550 3850 50  0001 C CNN
F 3 "" H 7550 3850 50  0001 C CNN
	1    7550 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 6051FDD1
P 7350 2900
AR Path="/6051FDD1" Ref="#PWR?"  Part="1" 
AR Path="/60479334/6051FDD1" Ref="#PWR?"  Part="1" 
AR Path="/604F15FC/6051FDD1" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 7350 2750 50  0001 C CNN
F 1 "+12V" H 7365 3073 50  0000 C CNN
F 2 "" H 7350 2900 50  0001 C CNN
F 3 "" H 7350 2900 50  0001 C CNN
	1    7350 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7350 3300 7350 2900
$Comp
L power:+5V #PWR?
U 1 1 6052044F
P 7550 2900
AR Path="/6052044F" Ref="#PWR?"  Part="1" 
AR Path="/604BF505/6052044F" Ref="#PWR?"  Part="1" 
AR Path="/604F15FC/6052044F" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 7550 2750 50  0001 C CNN
F 1 "+5V" H 7565 3073 50  0000 C CNN
F 2 "" H 7550 2900 50  0001 C CNN
F 3 "" H 7550 2900 50  0001 C CNN
	1    7550 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 JP4
U 1 1 605397C1
P 5650 2100
F 0 "JP4" V 5550 2000 50  0000 R CNN
F 1 "VAC1 VSEL" V 5750 2300 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5650 2100 50  0001 C CNN
F 3 "~" H 5650 2100 50  0001 C CNN
	1    5650 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 2500 5650 2300
Connection ~ 5650 2500
Wire Wire Line
	5550 2300 5550 2400
Wire Wire Line
	5550 2400 5350 2400
Wire Wire Line
	5350 2400 5350 2000
$Comp
L Device:R R?
U 1 1 6053AF8F
P 5350 1850
AR Path="/604BF505/6053AF8F" Ref="R?"  Part="1" 
AR Path="/604F15FC/6053AF8F" Ref="R29"  Part="1" 
F 0 "R29" V 5143 1850 50  0000 C CNN
F 1 "100k" V 5234 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5280 1850 50  0001 C CNN
F 3 "~" H 5350 1850 50  0001 C CNN
	1    5350 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6053B5AA
P 5950 1850
AR Path="/604BF505/6053B5AA" Ref="R?"  Part="1" 
AR Path="/604F15FC/6053B5AA" Ref="R31"  Part="1" 
F 0 "R31" V 5743 1850 50  0000 C CNN
F 1 "100k" V 5834 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5880 1850 50  0001 C CNN
F 3 "~" H 5950 1850 50  0001 C CNN
	1    5950 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2300 5750 2400
Wire Wire Line
	5750 2400 5950 2400
Wire Wire Line
	5950 2400 5950 2000
$Comp
L power:+12V #PWR?
U 1 1 6053D628
P 5350 1600
AR Path="/6053D628" Ref="#PWR?"  Part="1" 
AR Path="/60479334/6053D628" Ref="#PWR?"  Part="1" 
AR Path="/604F15FC/6053D628" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 5350 1450 50  0001 C CNN
F 1 "+12V" H 5365 1773 50  0000 C CNN
F 2 "" H 5350 1600 50  0001 C CNN
F 3 "" H 5350 1600 50  0001 C CNN
	1    5350 1600
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6053D995
P 5950 1600
AR Path="/6053D995" Ref="#PWR?"  Part="1" 
AR Path="/604BF505/6053D995" Ref="#PWR?"  Part="1" 
AR Path="/604F15FC/6053D995" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 5950 1450 50  0001 C CNN
F 1 "+5V" H 5965 1773 50  0000 C CNN
F 2 "" H 5950 1600 50  0001 C CNN
F 3 "" H 5950 1600 50  0001 C CNN
	1    5950 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1600 5950 1700
Wire Wire Line
	5350 1700 5350 1600
$Comp
L Connector_Generic:Conn_01x03 JP5
U 1 1 60542BBE
P 5650 4650
F 0 "JP5" V 5550 4550 50  0000 R CNN
F 1 "VAC2 VSEL" V 5750 4850 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5650 4650 50  0001 C CNN
F 3 "~" H 5650 4650 50  0001 C CNN
	1    5650 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 5050 5650 4850
Wire Wire Line
	5550 4850 5550 4950
Wire Wire Line
	5550 4950 5350 4950
Wire Wire Line
	5350 4950 5350 4550
$Comp
L Device:R R?
U 1 1 60542BC8
P 5350 4400
AR Path="/604BF505/60542BC8" Ref="R?"  Part="1" 
AR Path="/604F15FC/60542BC8" Ref="R30"  Part="1" 
F 0 "R30" V 5143 4400 50  0000 C CNN
F 1 "100k" V 5234 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5280 4400 50  0001 C CNN
F 3 "~" H 5350 4400 50  0001 C CNN
	1    5350 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60542BCE
P 5950 4400
AR Path="/604BF505/60542BCE" Ref="R?"  Part="1" 
AR Path="/604F15FC/60542BCE" Ref="R32"  Part="1" 
F 0 "R32" V 5743 4400 50  0000 C CNN
F 1 "100k" V 5834 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5880 4400 50  0001 C CNN
F 3 "~" H 5950 4400 50  0001 C CNN
	1    5950 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4850 5750 4950
Wire Wire Line
	5750 4950 5950 4950
Wire Wire Line
	5950 4950 5950 4550
$Comp
L power:+12V #PWR?
U 1 1 60542BD7
P 5350 4150
AR Path="/60542BD7" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60542BD7" Ref="#PWR?"  Part="1" 
AR Path="/604F15FC/60542BD7" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 5350 4000 50  0001 C CNN
F 1 "+12V" H 5365 4323 50  0000 C CNN
F 2 "" H 5350 4150 50  0001 C CNN
F 3 "" H 5350 4150 50  0001 C CNN
	1    5350 4150
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60542BDD
P 5950 4150
AR Path="/60542BDD" Ref="#PWR?"  Part="1" 
AR Path="/604BF505/60542BDD" Ref="#PWR?"  Part="1" 
AR Path="/604F15FC/60542BDD" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 5950 4000 50  0001 C CNN
F 1 "+5V" H 5965 4323 50  0000 C CNN
F 2 "" H 5950 4150 50  0001 C CNN
F 3 "" H 5950 4150 50  0001 C CNN
	1    5950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4150 5950 4250
Wire Wire Line
	5350 4250 5350 4150
Wire Wire Line
	6750 3500 6750 5050
Connection ~ 5650 5050
$Comp
L Connector:Screw_Terminal_01x05 J7
U 1 1 604B20C1
P 7850 3400
F 0 "J7" H 7930 3442 50  0000 L CNN
F 1 "VAC" H 7930 3351 50  0000 L CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-5_1x05_P2.54mm_Horizontal" H 7850 3400 50  0001 C CNN
F 3 "~" H 7850 3400 50  0001 C CNN
F 4 "282834-5" H 7850 3400 50  0001 C CNN "manf#"
	1    7850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3200 7550 3200
Wire Wire Line
	7550 3200 7550 2900
Wire Wire Line
	7350 3300 7650 3300
Wire Wire Line
	6750 3400 7650 3400
Wire Wire Line
	6750 3500 7650 3500
Wire Wire Line
	7550 3850 7550 3600
Wire Wire Line
	7550 3600 7650 3600
$EndSCHEMATC
