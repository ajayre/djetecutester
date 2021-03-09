EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
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
L Isolator:SFH617A-1 U6
U 1 1 6046F1A5
P 5750 4050
F 0 "U6" H 5750 4375 50  0000 C CNN
F 1 "SFH617A-1X007T" H 5750 4284 50  0000 C CNN
F 2 "Britishideas:SMD-4-OPTION7" H 5550 3850 50  0001 L CIN
F 3 "http://www.vishay.com/docs/83740/sfh617a.pdf" H 5750 4050 50  0001 L CNN
F 4 "SFH617A-1X007T" H 5750 4050 50  0001 C CNN "manf#"
	1    5750 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6046FD16
P 5300 4450
AR Path="/6046FD16" Ref="#PWR?"  Part="1" 
AR Path="/604BF505/6046FD16" Ref="#PWR?"  Part="1" 
AR Path="/60469920/6046FD16" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 5300 4200 50  0001 C CNN
F 1 "GND" H 5305 4277 50  0000 C CNN
F 2 "" H 5300 4450 50  0001 C CNN
F 3 "" H 5300 4450 50  0001 C CNN
	1    5300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4150 5300 4150
Wire Wire Line
	5300 4150 5300 4450
Wire Wire Line
	5450 3950 5100 3950
Text HLabel 6600 4150 2    50   Output ~ 0
ECU_CSV
Text HLabel 5100 3950 0    50   Input ~ 0
CSV
Wire Wire Line
	6600 4150 6050 4150
$Comp
L power:+12V #PWR?
U 1 1 60470927
P 6300 3600
AR Path="/60470927" Ref="#PWR?"  Part="1" 
AR Path="/60479334/60470927" Ref="#PWR?"  Part="1" 
AR Path="/60469920/60470927" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 6300 3450 50  0001 C CNN
F 1 "+12V" H 6315 3773 50  0000 C CNN
F 2 "" H 6300 3600 50  0001 C CNN
F 3 "" H 6300 3600 50  0001 C CNN
	1    6300 3600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6300 3600 6300 3950
Wire Wire Line
	6300 3950 6050 3950
$EndSCHEMATC
