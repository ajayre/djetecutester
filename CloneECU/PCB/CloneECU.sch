EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 6
Title "R/C107 D-Jetronic ECU Clone"
Date "2021-07-23"
Rev "1.00"
Comp ""
Comment1 "M117.982 Engine"
Comment2 "Clone of Bosch # 0 280 002 005"
Comment3 "Clone of Mercedes-Benz Part # A 000 545 26 32"
Comment4 "Input / Output & Interior Connections"
$EndDescr
Text Notes 17550 1200 0    50   ~ 0
Notes:\n\nTransistor Equivalents: \nS2672 -> BC550\nS2066 -> BC556, BC177\nBSX96S, BSX45K -> 2N3053\nAUY21 -> AD143 \nBCY58 -> BC107, BC547\nBCY57 -> BC109
Text Notes 12650 3250 0    50   ~ 0
Idle-Run Mixture Control
Text Notes 12500 7450 0    50   ~ 0
Idle-Run Mixture Control
Text Notes 12850 8050 0    50   ~ 10
Main Board Sections
Connection ~ 5500 5000
Wire Wire Line
	5100 5000 5500 5000
Wire Wire Line
	5100 5150 5100 5000
Connection ~ 5250 6200
Wire Wire Line
	4800 6200 5250 6200
Wire Wire Line
	4800 5750 4800 6200
Wire Wire Line
	10750 7600 10750 8250
Wire Wire Line
	12100 7600 10750 7600
Wire Wire Line
	5500 5000 5900 5000
Wire Wire Line
	11750 7800 12100 7800
Wire Wire Line
	11750 5200 11750 7800
Wire Wire Line
	12100 5200 11750 5200
Wire Wire Line
	5750 4200 5900 4200
Connection ~ 5750 4200
Wire Wire Line
	5750 2500 5750 4200
Wire Wire Line
	10500 2500 5750 2500
Wire Wire Line
	10500 4600 10500 2500
Wire Wire Line
	12100 4600 10500 4600
Wire Wire Line
	5500 6000 5900 6000
Connection ~ 5500 6000
Wire Wire Line
	5500 8500 5500 6000
Wire Wire Line
	4900 6000 5500 6000
Wire Wire Line
	4500 6800 5000 6800
Wire Wire Line
	11500 9000 5000 9000
Wire Wire Line
	11500 3800 11500 9000
Wire Wire Line
	12100 3800 11500 3800
Wire Wire Line
	10750 2250 5500 2250
Wire Wire Line
	10750 3600 10750 2250
Wire Wire Line
	12100 3600 10750 3600
Wire Wire Line
	5250 4600 5900 4600
Connection ~ 5250 4600
Wire Wire Line
	5250 2000 5250 4600
Wire Wire Line
	11000 2000 5250 2000
Wire Wire Line
	11000 3400 11000 2000
Wire Wire Line
	12100 3400 11000 3400
Wire Wire Line
	5250 6200 5900 6200
Connection ~ 11250 7400
Wire Wire Line
	5250 8750 5250 6200
Wire Wire Line
	11250 8750 5250 8750
Wire Wire Line
	11250 7400 11250 8750
Wire Wire Line
	11250 7400 12100 7400
Wire Wire Line
	11250 3200 11250 7400
Wire Wire Line
	12100 3200 11250 3200
Text GLabel 12100 7200 2    50   BiDi ~ 0
Int-4
Text GLabel 12100 7000 2    50   BiDi ~ 0
Int-3
Text GLabel 12100 6600 2    50   BiDi ~ 0
Int-1
Text GLabel 12100 6800 2    50   BiDi ~ 0
Int-2
Wire Wire Line
	4100 3000 5900 3000
Wire Wire Line
	4100 4150 4100 3000
Wire Wire Line
	3500 4150 4100 4150
Wire Wire Line
	4200 3200 5900 3200
Wire Wire Line
	4200 4250 4200 3200
Wire Wire Line
	3500 4250 4200 4250
Wire Wire Line
	4300 3400 5900 3400
Wire Wire Line
	4300 4350 4300 3400
Wire Wire Line
	3500 4350 4300 4350
Wire Wire Line
	4400 3600 5900 3600
Wire Wire Line
	4400 4450 4400 3600
Wire Wire Line
	3500 4450 4400 4450
Wire Wire Line
	4500 3800 5900 3800
Wire Wire Line
	4500 4550 4500 3800
Wire Wire Line
	3500 4550 4500 4550
Wire Wire Line
	3500 4650 4600 4650
Wire Wire Line
	4600 4000 5900 4000
Wire Wire Line
	4600 4650 4600 4000
Wire Wire Line
	4700 4200 5750 4200
Wire Wire Line
	4700 4750 4700 4200
Wire Wire Line
	3500 4750 4700 4750
Wire Wire Line
	4800 4400 5900 4400
Wire Wire Line
	4800 4850 4800 4400
Wire Wire Line
	3500 4850 4800 4850
Wire Wire Line
	4900 4600 5250 4600
Wire Wire Line
	4900 4950 4900 4600
Wire Wire Line
	3500 4950 4900 4950
Wire Wire Line
	5000 5050 5000 4800
Wire Wire Line
	3500 5050 5000 5050
Wire Wire Line
	4000 5150 5100 5150
Connection ~ 4000 5150
Wire Wire Line
	4000 5250 5200 5250
Connection ~ 4000 5250
Wire Wire Line
	5200 5200 5900 5200
Wire Wire Line
	5200 5250 5200 5200
Wire Wire Line
	3500 5250 4000 5250
Wire Wire Line
	5200 5400 5900 5400
Wire Wire Line
	5200 5350 5200 5400
Wire Wire Line
	3500 5350 5200 5350
Wire Wire Line
	5100 5600 5900 5600
Wire Wire Line
	5100 5450 5100 5600
Wire Wire Line
	3500 5450 5100 5450
Wire Wire Line
	5000 5800 5900 5800
Wire Wire Line
	5000 5550 5000 5800
Wire Wire Line
	3500 5550 5000 5550
Wire Wire Line
	4900 5650 4900 6000
Wire Wire Line
	3500 5750 4800 5750
Wire Wire Line
	4700 6400 5900 6400
Wire Wire Line
	4700 5850 4700 6400
Wire Wire Line
	3500 5850 4700 5850
Wire Wire Line
	4600 6600 5900 6600
Wire Wire Line
	4600 5950 4600 6600
Wire Wire Line
	3500 5950 4600 5950
Wire Wire Line
	4500 6050 4500 6800
Wire Wire Line
	3500 6050 4500 6050
Wire Wire Line
	4400 7000 5900 7000
Wire Wire Line
	4400 6150 4400 7000
Wire Wire Line
	3500 6150 4400 6150
Wire Wire Line
	4300 7200 5900 7200
Wire Wire Line
	4300 6250 4300 7200
Wire Wire Line
	3500 6250 4300 6250
Wire Wire Line
	4200 7400 5900 7400
Wire Wire Line
	4200 6350 4200 7400
Wire Wire Line
	3500 6350 4200 6350
Wire Wire Line
	4100 7600 5900 7600
Wire Wire Line
	4100 6450 4100 7600
Wire Wire Line
	4000 7800 5900 7800
Wire Wire Line
	4000 6550 4000 7800
Wire Wire Line
	3500 6550 4000 6550
Text Notes 6400 7850 0    50   ~ 0
Diagnosis Point Groups I & III
Text Notes 6400 7650 0    50   ~ 0
Injector Driver Power (Main EFI Relay terminal 87)
Text Notes 6400 6050 0    50   ~ 0
ECU Power (Main EFI Relay terminal 87)
Text Notes 6400 5850 0    50   ~ 0
MPS Primary Coil Input
Text Notes 6400 7250 0    50   ~ 0
Pulse Generator Group III
Text Notes 6400 7050 0    50   ~ 0
Pulse Generator Group I
Text Notes 6400 5650 0    50   ~ 0
Pulse Generator Group IV
Wire Wire Line
	4000 5150 4000 5250
Text GLabel 5900 3000 2    50   BiDi ~ 0
E1-T1
Text GLabel 5900 3200 2    50   BiDi ~ 0
E2-TPS
Text GLabel 5900 3400 2    50   Output ~ 0
E3-INJ1&5
Text GLabel 5900 3600 2    50   Output ~ 0
E4-INJ4&8
Text GLabel 5900 3800 2    50   Output ~ 0
E5-INJ6&3
Text GLabel 5900 4000 2    50   Output ~ 0
E6-INJ7&2
Text GLabel 5900 4400 2    50   Input ~ 0
E8-MPS
Text GLabel 5900 4200 2    50   Input ~ 0
E7-MPS
Text GLabel 5900 5400 2    50   Input ~ 0
E13-PG
Text GLabel 5900 5600 2    50   Input ~ 0
E14-PG
Text GLabel 5900 5800 2    50   Input ~ 0
E15-MPS
Text GLabel 5900 6200 2    50   Input ~ 0
E17-TPS
Text GLabel 5900 6400 2    50   Input ~ 0
E18-CSV
Text GLabel 5900 6600 2    50   Output ~ 0
E19-FPR
Text GLabel 5900 7000 2    50   Input ~ 0
E21-PG
Text GLabel 5900 7200 2    50   Input ~ 0
E22-PG
Text GLabel 5900 7400 2    50   Input ~ 0
E23-T2
Text GLabel 5900 7800 2    50   Output ~ 0
E25-DIAG1
Text Notes 6400 3050 0    50   ~ 0
Air Temp Sensor
Text Notes 6400 3250 0    50   ~ 0
Full Throttle & Diagnosis Point Groups II & IV
Text Notes 6400 3450 0    50   ~ 0
Injectors 1 & 5 (Group I)
Text Notes 6400 3650 0    50   ~ 0
Injectors 4 & 8 (Group II)
Text Notes 6400 3850 0    50   ~ 0
Injectors 6 & 3 (Group III)
Text Notes 6400 4050 0    50   ~ 0
Injectors 7 & 2 (Group IV)
Text Notes 6400 4250 0    50   ~ 0
MPS Primary Coil Output
Text Notes 6400 4450 0    50   ~ 0
MPS Secondary Coil Output
Text Notes 6400 4850 0    50   ~ 0
MPS Secondary Coil Input
Text Notes 6400 6250 0    50   ~ 0
TPS Idle Contact
Text GLabel 5900 4600 2    50   Input ~ 0
E9-TPS
Text Notes 6400 4650 0    50   ~ 0
TPS Acceleration Contact 1 
Text GLabel 5900 5000 2    50   UnSpc ~ 0
E11-GND
Text Notes 6400 5050 0    50   ~ 0
ECU Ground (M5 on intake manifold)
Text Notes 6400 5250 0    50   ~ 0
TPS & PG Ground (internal tie to E11)
Text GLabel 5900 6000 2    50   Input ~ 0
E16-12V
Text GLabel 5900 6800 2    50   Input ~ 0
E20-TPS
Text GLabel 5900 7600 2    50   Input ~ 0
E24-12V
Text Notes 6400 6850 0    50   ~ 0
TPS Acceleration Contact 2
Text Notes 6400 5450 0    50   ~ 0
Pulse Generator Group II
Text Notes 12650 4450 0    50   ~ 0
Coolant Temp Bias
Text GLabel 12100 7400 2    50   BiDi ~ 0
Int-5
Text GLabel 12100 7800 2    50   BiDi ~ 0
Int-7
Text Notes 12650 3050 0    50   ~ 0
Regulated 10V
Text Notes 13150 2700 0    50   ~ 10
Hard Wiring to Auxilliary Board
Text Notes 12650 4250 0    50   ~ 0
ECU Power
Text Notes 12650 3650 0    50   ~ 0
Ground
Text GLabel 12100 6400 2    50   BiDi ~ 0
AUX18-BP
Text GLabel 12100 6200 2    50   BiDi ~ 0
AUX17-MP^
Text GLabel 12100 6000 2    50   BiDi ~ 0
AUX16-EP
Text GLabel 12100 5800 2    50   BiDi ~ 0
AUX15-BP
Text GLabel 12100 5600 2    50   BiDi ~ 0
AUX14-MP^
Text GLabel 12100 5400 2    50   BiDi ~ 0
AUX13-SV
Text GLabel 12100 5200 2    50   BiDi ~ 0
AUX12-TGL
Text GLabel 12100 5000 2    50   BiDi ~ 0
AUX11-TGL
Text GLabel 12100 4800 2    50   BiDi ~ 0
AUX10-SP
Text GLabel 12100 4600 2    50   BiDi ~ 0
AUX9-BP
Text GLabel 12100 4400 2    50   BiDi ~ 0
AUX8-T2^
Text GLabel 12100 3000 2    50   BiDi ~ 0
AUX1-10V
Text GLabel 12100 3200 2    50   BiDi ~ 0
AUX2-IDL
Text GLabel 12100 3400 2    50   BiDi ~ 0
AUX3-AE9
Text GLabel 12100 4000 2    50   BiDi ~ 0
AUX6-VE^
Text GLabel 12100 3800 2    50   BiDi ~ 0
AUX5-AE20
Text GLabel 12100 4200 2    50   BiDi ~ 0
AUX7-12V
Text GLabel 12100 3600 2    50   BiDi ~ 0
AUX4-GND
Text Notes 6400 7450 0    50   ~ 0
Coolant Temp Sensor
Text Notes 12650 3850 0    50   ~ 0
Throttle Enrich
Text Notes 6400 6650 0    50   ~ 0
Fuel Pump Relay (switched ground terminal 85)
Text Notes 6400 6450 0    50   ~ 0
Cold Start Relay (terminal 86)
Text Notes 12650 3450 0    50   ~ 0
Throttle Enrich
$Sheet
S 17500 2000 1500 1000
U 5F3E5FDB
F0 "Pulse Generator to Injectors" 50
F1 "Pulse Generator & Injectors.sch" 50
$EndSheet
$Sheet
S 17500 3500 1500 1000
U 5F4321F5
F0 "TPS & Fuel Pump Control" 50
F1 "TPS & Fuel Pump.sch" 50
$EndSheet
$Sheet
S 17500 5000 1500 1000
U 5FDE5D48
F0 "MPS & Temp Sensors" 50
F1 "MPS & Temp Sensors.sch" 50
$EndSheet
$Sheet
S 17500 6500 1500 1000
U 60D3E807
F0 "Auxiliary Board 1" 50
F1 "Aux Board 1.sch" 50
$EndSheet
$Sheet
S 17500 8000 1500 1000
U 60D478B6
F0 "Auxiliary Board 2" 50
F1 "Aux Board 2.sch" 50
$EndSheet
Text GLabel 12100 8500 2    50   BiDi ~ 0
Int-A2
Text GLabel 12100 8300 2    50   BiDi ~ 0
Int-A1
Wire Notes Line
	12050 8900 14400 8900
Wire Notes Line
	14400 6500 14400 8900
Wire Notes Line
	12050 8200 14400 8200
Wire Notes Line
	12050 2500 12050 8900
Text Notes 12800 8750 0    50   ~ 10
Auxiliary Board Sections
Text Notes 12650 4050 0    50   ~ 0
Speed Bias VE Curve
Text Notes 12650 4650 0    50   ~ 0
Base Injection Pulse
Text Notes 12650 4850 0    50   ~ 0
Speed Sense Pulse
Text Notes 12650 5050 0    50   ~ 0
Lo = Groups II & IV Enable
Text Notes 12650 5250 0    50   ~ 0
Lo = Groups I & III Enable
Text Notes 12650 5450 0    50   ~ 0
Speed Validated
Text Notes 12650 5650 0    50   ~ 0
Groups II & IV Modified Injector Pulse
Text Notes 12650 5850 0    50   ~ 0
Groups II & IV Base Injector Pulse
Text Notes 12650 6050 0    50   ~ 0
Enrich Pulse
Text Notes 12650 6250 0    50   ~ 0
Groups I & III Modified Injector Pulse
Text Notes 12650 6450 0    50   ~ 0
Groups I & III Base Injector Pulse
Text Notes 12500 7050 0    50   ~ 0
Over Run Inject Disable
Text Notes 12500 6850 0    50   ~ 0
Combined Injector Pulse Groups II & IV
Text Notes 12500 6650 0    50   ~ 0
Combined Injector Pulse Groups I & III
Text Notes 12500 7650 0    50   ~ 0
Mixture Bias
Text Notes 12500 7850 0    50   ~ 0
Injector Group Toggle
Text Notes 12500 7250 0    50   ~ 0
Engine Run Threshold
$Comp
L power:Earth #GND01
U 1 1 5F1EB27B
P 3000 5150
F 0 "#GND01" H 3000 4900 50  0001 C CNN
F 1 "Earth" H 3000 5000 50  0001 C CNN
F 2 "" H 3000 5150 50  0001 C CNN
F 3 "~" H 3000 5150 50  0001 C CNN
	1    3000 5150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5F1F0569
P 3000 5150
F 0 "#FLG01" H 3000 5225 50  0001 C CNN
F 1 "PWR_FLAG" H 3000 5323 50  0001 C CNN
F 2 "" H 3000 5150 50  0001 C CNN
F 3 "~" H 3000 5150 50  0001 C CNN
	1    3000 5150
	1    0    0    -1  
$EndComp
Connection ~ 3000 5150
$Comp
L power:+12V #PWR0101
U 1 1 5F1F0F79
P 3000 5650
F 0 "#PWR0101" H 3000 5500 50  0001 C CNN
F 1 "+12V" H 3015 5823 50  0000 C CNN
F 2 "" H 3000 5650 50  0001 C CNN
F 3 "" H 3000 5650 50  0001 C CNN
	1    3000 5650
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F1F109E
P 3000 5650
F 0 "#FLG02" H 3000 5725 50  0001 C CNN
F 1 "PWR_FLAG" H 3000 5823 50  0001 C CNN
F 2 "" H 3000 5650 50  0001 C CNN
F 3 "~" H 3000 5650 50  0001 C CNN
	1    3000 5650
	1    0    0    1   
$EndComp
Connection ~ 3000 5650
$Comp
L power:+12V #PWR0102
U 1 1 5F1F6CE8
P 3000 6450
F 0 "#PWR0102" H 3000 6300 50  0001 C CNN
F 1 "+12V" H 3015 6623 50  0000 C CNN
F 2 "" H 3000 6450 50  0001 C CNN
F 3 "" H 3000 6450 50  0001 C CNN
	1    3000 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+10V #PWR0103
U 1 1 5F202459
P 11500 3000
F 0 "#PWR0103" H 11500 2850 50  0001 C CNN
F 1 "+10V" H 11515 3173 50  0000 C CNN
F 2 "" H 11500 3000 50  0001 C CNN
F 3 "" H 11500 3000 50  0001 C CNN
	1    11500 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 3000 11500 3000
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5F2079A2
P 11500 3000
F 0 "#FLG03" H 11500 3075 50  0001 C CNN
F 1 "PWR_FLAG" H 11500 3173 50  0001 C CNN
F 2 "" H 11500 3000 50  0001 C CNN
F 3 "~" H 11500 3000 50  0001 C CNN
	1    11500 3000
	1    0    0    1   
$EndComp
Connection ~ 11500 3000
Wire Notes Line
	15500 6500 15500 2500
Wire Notes Line
	12050 6500 15500 6500
Wire Notes Line
	12050 2500 15500 2500
Text Notes 12500 8550 0    50   ~ 0
Enrich Bias Groups II & IV
Text Notes 12500 8350 0    50   ~ 0
Enrich Bias Groups I & III
Wire Wire Line
	3500 5150 4000 5150
Wire Wire Line
	3500 5650 4900 5650
Wire Wire Line
	3500 6450 4100 6450
Connection ~ 3500 5150
Connection ~ 3500 5650
Connection ~ 3500 6450
Wire Wire Line
	3000 6450 3500 6450
Wire Wire Line
	3000 5650 3500 5650
Wire Wire Line
	3000 5150 3500 5150
$Comp
L Connector:Conn_01x25_Male ECU1
U 1 1 5F3E73D0
P 3300 5350
F 0 "ECU1" H 3150 6800 50  0000 C CNN
F 1 "Edge Connector" H 3150 6700 50  0000 C CNN
F 2 "Left A thru F" H 3300 5350 50  0001 C CNN
F 3 "~" H 3300 5350 50  0001 C CNN
	1    3300 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 8500 5500 8500
Wire Wire Line
	12100 4200 11000 4200
Wire Wire Line
	11000 4200 11000 8500
Wire Wire Line
	5000 9000 5000 6800
Connection ~ 5000 6800
Wire Wire Line
	5000 6800 5900 6800
Wire Wire Line
	5500 2250 5500 5000
Wire Wire Line
	5000 4800 5750 4800
Wire Wire Line
	5750 4800 5900 4800
Connection ~ 5750 4800
Wire Wire Line
	5750 8250 10750 8250
Wire Wire Line
	5750 8250 5750 4800
Text GLabel 12100 7600 2    50   BiDi ~ 0
Int-6
Text Label 5900 4800 0    50   ~ 0
E10-MPS
Text Label 5900 5200 0    50   ~ 0
E12-GND
$EndSCHEMATC
