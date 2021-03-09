EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
Title "D-Jetronic ECU Tester"
Date "2021-03-08"
Rev "1.0"
Comp "(C) Britishideas 2021"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR?
U 1 1 6051B2E5
P 4950 1900
AR Path="/6051B2E5" Ref="#PWR?"  Part="1" 
AR Path="/60517480/6051B2E5" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 4950 1750 50  0001 C CNN
F 1 "+5V" H 4965 2073 50  0000 C CNN
F 2 "" H 4950 1900 50  0001 C CNN
F 3 "" H 4950 1900 50  0001 C CNN
	1    4950 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6051D845
P 5050 3350
AR Path="/6051D845" Ref="#PWR?"  Part="1" 
AR Path="/60517480/6051D845" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 5050 3100 50  0001 C CNN
F 1 "GND" H 5055 3177 50  0000 C CNN
F 2 "" H 5050 3350 50  0001 C CNN
F 3 "" H 5050 3350 50  0001 C CNN
	1    5050 3350
	1    0    0    -1  
$EndComp
$Comp
L BritishIdeas:MCP41HV51-502E-ST U4
U 1 1 6045CA2E
P 5250 3050
F 0 "U4" H 5550 4015 50  0000 C CNN
F 1 "MCP41HV51-502E-ST" H 5550 3924 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5250 3050 50  0001 C CNN
F 3 "" H 5250 3050 50  0001 C CNN
F 4 "" H 5250 3050 50  0001 C CNN "Field4"
F 5 "MCP41HV51-502E/ST" H 5250 3050 50  0001 C CNN "manf#"
	1    5250 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2350 4950 2350
Wire Wire Line
	4950 2350 4950 1950
Wire Wire Line
	5950 2850 6050 2850
Wire Wire Line
	6050 2850 6050 3250
Wire Wire Line
	6050 3250 5050 3250
Wire Wire Line
	5050 3250 5050 3350
Wire Wire Line
	5950 2750 6050 2750
Wire Wire Line
	6050 2750 6050 2850
Connection ~ 6050 2850
Wire Wire Line
	5150 2850 5050 2850
Wire Wire Line
	5050 2850 5050 3250
Connection ~ 5050 3250
Wire Wire Line
	5150 2950 4950 2950
Wire Wire Line
	4950 2950 4950 2350
Connection ~ 4950 2350
Wire Wire Line
	5150 2450 4250 2450
Wire Wire Line
	5150 2550 4650 2550
Wire Wire Line
	5150 2650 4250 2650
Wire Wire Line
	5150 2750 4250 2750
Text HLabel 4250 2450 0    50   Input ~ 0
SCK
Text HLabel 4250 2550 0    50   Input ~ 0
~AIRTEMP_CS
Text HLabel 4250 2650 0    50   Input ~ 0
MOSI
Text HLabel 4250 2750 0    50   Output ~ 0
MISO
$Comp
L power:+12V #PWR?
U 1 1 6045FD70
P 6050 2050
AR Path="/6045FD70" Ref="#PWR?"  Part="1" 
AR Path="/60479334/6045FD70" Ref="#PWR?"  Part="1" 
AR Path="/60517480/6045FD70" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 6050 1900 50  0001 C CNN
F 1 "+12V" H 6065 2223 50  0000 C CNN
F 2 "" H 6050 2050 50  0001 C CNN
F 3 "" H 6050 2050 50  0001 C CNN
	1    6050 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5950 2350 6050 2350
Wire Wire Line
	6050 2350 6050 2050
NoConn ~ 5950 2450
Wire Wire Line
	5950 2650 6050 2650
Wire Wire Line
	6050 2650 6050 2750
Connection ~ 6050 2750
Wire Wire Line
	5950 2550 6350 2550
Text HLabel 7500 2550 2    50   Output ~ 0
ECU_AIRTEMP
$Comp
L Connector:TestPoint TP1
U 1 1 60460C5F
P 6350 2450
F 0 "TP1" H 6408 2568 50  0000 L CNN
F 1 "TestPoint" H 6408 2477 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 6550 2450 50  0001 C CNN
F 3 "~" H 6550 2450 50  0001 C CNN
	1    6350 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2450 6350 2550
$Comp
L Connector:TestPoint TP2
U 1 1 60461898
P 6350 2650
F 0 "TP2" H 6292 2676 50  0000 R CNN
F 1 "TestPoint" H 6292 2767 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 6550 2650 50  0001 C CNN
F 3 "~" H 6550 2650 50  0001 C CNN
	1    6350 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 2650 6350 2650
Connection ~ 6050 2650
$Comp
L Connector_Generic:Conn_01x02 JP2
U 1 1 6046304A
P 6900 2350
F 0 "JP2" V 6864 2162 50  0000 R CNN
F 1 "AIRTEMP" V 6773 2162 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical" H 6900 2350 50  0001 C CNN
F 3 "~" H 6900 2350 50  0001 C CNN
	1    6900 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 2550 6900 2550
Connection ~ 6350 2550
Wire Wire Line
	7000 2550 7500 2550
$Comp
L power:+5V #PWR?
U 1 1 60474585
P 4950 4200
AR Path="/60474585" Ref="#PWR?"  Part="1" 
AR Path="/60517480/60474585" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 4950 4050 50  0001 C CNN
F 1 "+5V" H 4965 4373 50  0000 C CNN
F 2 "" H 4950 4200 50  0001 C CNN
F 3 "" H 4950 4200 50  0001 C CNN
	1    4950 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6047458B
P 5050 5650
AR Path="/6047458B" Ref="#PWR?"  Part="1" 
AR Path="/60517480/6047458B" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 5050 5400 50  0001 C CNN
F 1 "GND" H 5055 5477 50  0000 C CNN
F 2 "" H 5050 5650 50  0001 C CNN
F 3 "" H 5050 5650 50  0001 C CNN
	1    5050 5650
	1    0    0    -1  
$EndComp
$Comp
L BritishIdeas:MCP41HV51-502E-ST U5
U 1 1 60474591
P 5250 5350
F 0 "U5" H 5550 6315 50  0000 C CNN
F 1 "MCP41HV51-502E-ST" H 5550 6224 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5250 5350 50  0001 C CNN
F 3 "" H 5250 5350 50  0001 C CNN
F 4 "MCP41HV51-502E-ST" H 5250 5350 50  0001 C CNN "manf#"
	1    5250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4650 4950 4650
Wire Wire Line
	4950 4650 4950 4250
Wire Wire Line
	5950 5150 6050 5150
Wire Wire Line
	6050 5150 6050 5550
Wire Wire Line
	6050 5550 5050 5550
Wire Wire Line
	5050 5550 5050 5650
Wire Wire Line
	5950 5050 6050 5050
Wire Wire Line
	6050 5050 6050 5150
Connection ~ 6050 5150
Wire Wire Line
	5150 5150 5050 5150
Wire Wire Line
	5050 5150 5050 5550
Connection ~ 5050 5550
Wire Wire Line
	5150 5250 4950 5250
Wire Wire Line
	4950 5250 4950 4650
Connection ~ 4950 4650
Wire Wire Line
	5150 4750 4250 4750
Wire Wire Line
	5150 4850 4650 4850
Wire Wire Line
	5150 4950 4250 4950
Wire Wire Line
	5150 5050 4250 5050
Text HLabel 4250 4750 0    50   Input ~ 0
SCK
Text HLabel 4250 4850 0    50   Input ~ 0
~COOLANTTEMP_CS
Text HLabel 4250 4950 0    50   Input ~ 0
MOSI
Text HLabel 4250 5050 0    50   Output ~ 0
MISO
$Comp
L power:+12V #PWR?
U 1 1 604745AE
P 6050 4350
AR Path="/604745AE" Ref="#PWR?"  Part="1" 
AR Path="/60479334/604745AE" Ref="#PWR?"  Part="1" 
AR Path="/60517480/604745AE" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 6050 4200 50  0001 C CNN
F 1 "+12V" H 6065 4523 50  0000 C CNN
F 2 "" H 6050 4350 50  0001 C CNN
F 3 "" H 6050 4350 50  0001 C CNN
	1    6050 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5950 4650 6050 4650
Wire Wire Line
	6050 4650 6050 4350
NoConn ~ 5950 4750
Wire Wire Line
	5950 4950 6050 4950
Wire Wire Line
	6050 4950 6050 5050
Connection ~ 6050 5050
Wire Wire Line
	5950 4850 6350 4850
Text HLabel 7500 4850 2    50   Output ~ 0
ECU_COOLANTTEMP
$Comp
L Connector:TestPoint TP3
U 1 1 604745BC
P 6350 4750
F 0 "TP3" H 6408 4868 50  0000 L CNN
F 1 "TestPoint" H 6408 4777 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 6550 4750 50  0001 C CNN
F 3 "~" H 6550 4750 50  0001 C CNN
	1    6350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4750 6350 4850
$Comp
L Connector:TestPoint TP4
U 1 1 604745C3
P 6350 4950
F 0 "TP4" H 6292 4976 50  0000 R CNN
F 1 "TestPoint" H 6292 5067 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 6550 4950 50  0001 C CNN
F 3 "~" H 6550 4950 50  0001 C CNN
	1    6350 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 4950 6350 4950
Connection ~ 6050 4950
$Comp
L Connector_Generic:Conn_01x02 JP3
U 1 1 604745CB
P 6900 4650
F 0 "JP3" V 6864 4462 50  0000 R CNN
F 1 "COOLANTTEMP" V 6773 4462 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical" H 6900 4650 50  0001 C CNN
F 3 "~" H 6900 4650 50  0001 C CNN
	1    6900 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 4850 6900 4850
Connection ~ 6350 4850
Wire Wire Line
	7000 4850 7500 4850
$Comp
L Device:R R15
U 1 1 60475475
P 4650 2200
F 0 "R15" H 4720 2246 50  0000 L CNN
F 1 "100k" H 4720 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4580 2200 50  0001 C CNN
F 3 "~" H 4650 2200 50  0001 C CNN
	1    4650 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2050 4650 1950
Wire Wire Line
	4650 1950 4950 1950
Connection ~ 4950 1950
Wire Wire Line
	4950 1950 4950 1900
Wire Wire Line
	4650 2350 4650 2550
Connection ~ 4650 2550
Wire Wire Line
	4650 2550 4250 2550
$Comp
L Device:R R16
U 1 1 60478DC9
P 4650 4500
F 0 "R16" H 4720 4546 50  0000 L CNN
F 1 "100k" H 4720 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4580 4500 50  0001 C CNN
F 3 "~" H 4650 4500 50  0001 C CNN
	1    4650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4650 4650 4850
Connection ~ 4650 4850
Wire Wire Line
	4650 4850 4250 4850
Wire Wire Line
	4650 4350 4650 4250
Wire Wire Line
	4650 4250 4950 4250
Connection ~ 4950 4250
Wire Wire Line
	4950 4250 4950 4200
$EndSCHEMATC
