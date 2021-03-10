EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "ECU Outputs"
Date "2021-03-10"
Rev "1.0"
Comp "Britishideas.com"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+12V #PWR?
U 1 1 604AAEF2
P 4750 2100
AR Path="/604AAEF2" Ref="#PWR?"  Part="1" 
AR Path="/60479334/604AAEF2" Ref="#PWR?"  Part="1" 
AR Path="/60469408/604AAEF2" Ref="#PWR?"  Part="1" 
AR Path="/604A55C0/604AAEF2" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 4750 1950 50  0001 C CNN
F 1 "+12V" H 4765 2273 50  0000 C CNN
F 2 "" H 4750 2100 50  0001 C CNN
F 3 "" H 4750 2100 50  0001 C CNN
	1    4750 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 604AAEF8
P 4750 3400
AR Path="/604AAEF8" Ref="#PWR?"  Part="1" 
AR Path="/60479334/604AAEF8" Ref="#PWR?"  Part="1" 
AR Path="/60469408/604AAEF8" Ref="#PWR?"  Part="1" 
AR Path="/604A55C0/604AAEF8" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 4750 3150 50  0001 C CNN
F 1 "GND" H 4755 3227 50  0000 C CNN
F 2 "" H 4750 3400 50  0001 C CNN
F 3 "" H 4750 3400 50  0001 C CNN
	1    4750 3400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 604AAEFE
P 4750 2350
AR Path="/60469408/604AAEFE" Ref="R?"  Part="1" 
AR Path="/604A55C0/604AAEFE" Ref="R33"  Part="1" 
F 0 "R33" H 4820 2396 50  0000 L CNN
F 1 "1k8" H 4820 2305 50  0000 L CNN
F 2 "" V 4680 2350 50  0001 C CNN
F 3 "~" H 4750 2350 50  0001 C CNN
	1    4750 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 604AAF04
P 4650 2800
AR Path="/60469408/604AAF04" Ref="Q?"  Part="1" 
AR Path="/604A55C0/604AAF04" Ref="Q6"  Part="1" 
F 0 "Q6" H 4841 2846 50  0000 L CNN
F 1 "Q_NPN_BCE" H 4841 2755 50  0000 L CNN
F 2 "" H 4850 2900 50  0001 C CNN
F 3 "~" H 4650 2800 50  0001 C CNN
	1    4650 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2100 4750 2200
Wire Wire Line
	4750 2500 4750 2550
Wire Wire Line
	4750 3400 4750 3300
$Comp
L Device:R R?
U 1 1 604AAF0D
P 4000 3050
AR Path="/60469408/604AAF0D" Ref="R?"  Part="1" 
AR Path="/604A55C0/604AAF0D" Ref="R30"  Part="1" 
F 0 "R30" H 4070 3096 50  0000 L CNN
F 1 "180k" H 4070 3005 50  0000 L CNN
F 2 "" V 3930 3050 50  0001 C CNN
F 3 "~" H 4000 3050 50  0001 C CNN
	1    4000 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2800 4350 2800
Wire Wire Line
	4000 2800 4000 2900
Wire Wire Line
	4000 3200 4000 3300
Wire Wire Line
	4000 3300 4750 3300
Connection ~ 4750 3300
Wire Wire Line
	4750 3300 4750 3000
$Comp
L Device:R R?
U 1 1 604AAF19
P 4350 3050
AR Path="/60469408/604AAF19" Ref="R?"  Part="1" 
AR Path="/604A55C0/604AAF19" Ref="R32"  Part="1" 
F 0 "R32" H 4420 3096 50  0000 L CNN
F 1 "300" H 4420 3005 50  0000 L CNN
F 2 "" V 4280 3050 50  0001 C CNN
F 3 "~" H 4350 3050 50  0001 C CNN
	1    4350 3050
	1    0    0    -1  
$EndComp
Connection ~ 4000 2800
$Comp
L Device:D D?
U 1 1 604AAF22
P 3400 2800
AR Path="/60469408/604AAF22" Ref="D?"  Part="1" 
AR Path="/604A55C0/604AAF22" Ref="D8"  Part="1" 
F 0 "D8" H 3400 2900 50  0000 C CNN
F 1 "D" H 3400 2674 50  0000 C CNN
F 2 "" H 3400 2800 50  0001 C CNN
F 3 "~" H 3400 2800 50  0001 C CNN
	1    3400 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 604AAF2A
P 3000 2800
AR Path="/60469408/604AAF2A" Ref="R?"  Part="1" 
AR Path="/604A55C0/604AAF2A" Ref="R26"  Part="1" 
F 0 "R26" V 2793 2800 50  0000 C CNN
F 1 "3k" V 2884 2800 50  0000 C CNN
F 2 "" V 2930 2800 50  0001 C CNN
F 3 "~" H 3000 2800 50  0001 C CNN
	1    3000 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 2800 3250 2800
Text HLabel 2550 2800 0    50   Input ~ 0
ECU_TPSACCEL2
Wire Wire Line
	2550 2800 2700 2800
$Comp
L power:+12V #PWR?
U 1 1 604AAF33
P 4750 4000
AR Path="/604AAF33" Ref="#PWR?"  Part="1" 
AR Path="/60479334/604AAF33" Ref="#PWR?"  Part="1" 
AR Path="/60469408/604AAF33" Ref="#PWR?"  Part="1" 
AR Path="/604A55C0/604AAF33" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 4750 3850 50  0001 C CNN
F 1 "+12V" H 4765 4173 50  0000 C CNN
F 2 "" H 4750 4000 50  0001 C CNN
F 3 "" H 4750 4000 50  0001 C CNN
	1    4750 4000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 604AAF39
P 4750 5300
AR Path="/604AAF39" Ref="#PWR?"  Part="1" 
AR Path="/60479334/604AAF39" Ref="#PWR?"  Part="1" 
AR Path="/60469408/604AAF39" Ref="#PWR?"  Part="1" 
AR Path="/604A55C0/604AAF39" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 4750 5050 50  0001 C CNN
F 1 "GND" H 4755 5127 50  0000 C CNN
F 2 "" H 4750 5300 50  0001 C CNN
F 3 "" H 4750 5300 50  0001 C CNN
	1    4750 5300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 604AAF3F
P 4750 4250
AR Path="/60469408/604AAF3F" Ref="R?"  Part="1" 
AR Path="/604A55C0/604AAF3F" Ref="R34"  Part="1" 
F 0 "R34" H 4820 4296 50  0000 L CNN
F 1 "1k8" H 4820 4205 50  0000 L CNN
F 2 "" V 4680 4250 50  0001 C CNN
F 3 "~" H 4750 4250 50  0001 C CNN
	1    4750 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 604AAF45
P 4650 4700
AR Path="/60469408/604AAF45" Ref="Q?"  Part="1" 
AR Path="/604A55C0/604AAF45" Ref="Q7"  Part="1" 
F 0 "Q7" H 4841 4746 50  0000 L CNN
F 1 "Q_NPN_BCE" H 4841 4655 50  0000 L CNN
F 2 "" H 4850 4800 50  0001 C CNN
F 3 "~" H 4650 4700 50  0001 C CNN
	1    4650 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4000 4750 4100
Wire Wire Line
	4750 4400 4750 4450
Wire Wire Line
	4750 5300 4750 5200
$Comp
L Device:R R?
U 1 1 604AAF4E
P 4000 4950
AR Path="/60469408/604AAF4E" Ref="R?"  Part="1" 
AR Path="/604A55C0/604AAF4E" Ref="R31"  Part="1" 
F 0 "R31" H 4070 4996 50  0000 L CNN
F 1 "180k" H 4070 4905 50  0000 L CNN
F 2 "" V 3930 4950 50  0001 C CNN
F 3 "~" H 4000 4950 50  0001 C CNN
	1    4000 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4700 4350 4700
Wire Wire Line
	4000 4700 4000 4800
Wire Wire Line
	4000 5100 4000 5200
Wire Wire Line
	4000 5200 4750 5200
Connection ~ 4750 5200
Wire Wire Line
	4750 5200 4750 4900
Connection ~ 4000 4700
$Comp
L Device:D D?
U 1 1 604AAF5B
P 3400 4700
AR Path="/60469408/604AAF5B" Ref="D?"  Part="1" 
AR Path="/604A55C0/604AAF5B" Ref="D9"  Part="1" 
F 0 "D9" H 3400 4900 50  0000 C CNN
F 1 "D" H 3400 4800 50  0000 C CNN
F 2 "" H 3400 4700 50  0001 C CNN
F 3 "~" H 3400 4700 50  0001 C CNN
	1    3400 4700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 604AAF61
P 3000 4700
AR Path="/60469408/604AAF61" Ref="R?"  Part="1" 
AR Path="/604A55C0/604AAF61" Ref="R29"  Part="1" 
F 0 "R29" V 2793 4700 50  0000 C CNN
F 1 "3k" V 2884 4700 50  0000 C CNN
F 2 "" V 2930 4700 50  0001 C CNN
F 3 "~" H 3000 4700 50  0001 C CNN
	1    3000 4700
	0    1    1    0   
$EndComp
Text HLabel 2550 4700 0    50   Input ~ 0
ECU_TPSACCEL1
Wire Wire Line
	2550 4700 2750 4700
$Comp
L Device:C C?
U 1 1 604AAF6B
P 4350 3600
AR Path="/60469408/604AAF6B" Ref="C?"  Part="1" 
AR Path="/604A55C0/604AAF6B" Ref="C3"  Part="1" 
F 0 "C3" H 4465 3646 50  0000 L CNN
F 1 "3.3nF" H 4465 3555 50  0000 L CNN
F 2 "" H 4388 3450 50  0001 C CNN
F 3 "~" H 4350 3600 50  0001 C CNN
	1    4350 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 604AAF75
P 3000 4300
AR Path="/60469408/604AAF75" Ref="R?"  Part="1" 
AR Path="/604A55C0/604AAF75" Ref="R28"  Part="1" 
F 0 "R28" V 2793 4300 50  0000 C CNN
F 1 "10k" V 2884 4300 50  0000 C CNN
F 2 "" V 2930 4300 50  0001 C CNN
F 3 "~" H 3000 4300 50  0001 C CNN
	1    3000 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 4300 2750 4300
Wire Wire Line
	2750 4300 2750 4700
Connection ~ 2750 4700
Wire Wire Line
	2750 4700 2850 4700
$Comp
L Device:R R?
U 1 1 604AAF82
P 3000 3100
AR Path="/60469408/604AAF82" Ref="R?"  Part="1" 
AR Path="/604A55C0/604AAF82" Ref="R27"  Part="1" 
F 0 "R27" V 2793 3100 50  0000 C CNN
F 1 "10k" V 2884 3100 50  0000 C CNN
F 2 "" V 2930 3100 50  0001 C CNN
F 3 "~" H 3000 3100 50  0001 C CNN
	1    3000 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 2800 2700 3100
Wire Wire Line
	2700 3100 2850 3100
Connection ~ 2700 2800
Wire Wire Line
	2700 2800 2850 2800
Wire Wire Line
	3150 3100 3400 3100
Wire Wire Line
	3400 3100 3400 4450
Wire Wire Line
	3400 4450 4750 4450
Connection ~ 4750 4450
Wire Wire Line
	4750 4450 4750 4500
Wire Wire Line
	3150 4300 3250 4300
Wire Wire Line
	3250 2550 4750 2550
Connection ~ 4750 2550
Wire Wire Line
	4750 2550 4750 2600
$Comp
L Device:D D?
U 1 1 604AD283
P 3750 4700
AR Path="/60469408/604AD283" Ref="D?"  Part="1" 
AR Path="/604A55C0/604AD283" Ref="D10"  Part="1" 
F 0 "D10" H 3750 4900 50  0000 C CNN
F 1 "D" H 3750 4800 50  0000 C CNN
F 2 "" H 3750 4700 50  0001 C CNN
F 3 "~" H 3750 4700 50  0001 C CNN
	1    3750 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 4700 4000 4700
Wire Wire Line
	3550 2800 4000 2800
Wire Wire Line
	4350 2800 4350 2900
Connection ~ 4350 2800
Wire Wire Line
	4350 2800 4000 2800
Wire Wire Line
	4350 3200 4350 3450
Wire Wire Line
	4350 3750 4350 4700
Connection ~ 4350 4700
Wire Wire Line
	4350 4700 4000 4700
Wire Wire Line
	3250 4700 3150 4700
Wire Wire Line
	3600 4700 3550 4700
Text HLabel 7200 2750 0    50   Input ~ 0
ECU_TPSIDLE
$Comp
L Device:D D?
U 1 1 604CC7C0
P 7600 2750
AR Path="/60469408/604CC7C0" Ref="D?"  Part="1" 
AR Path="/604A55C0/604CC7C0" Ref="D12"  Part="1" 
F 0 "D12" H 7600 2950 50  0000 C CNN
F 1 "D" H 7600 2850 50  0000 C CNN
F 2 "" H 7600 2750 50  0001 C CNN
F 3 "~" H 7600 2750 50  0001 C CNN
	1    7600 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 604CCFE1
P 8000 2750
AR Path="/60469408/604CCFE1" Ref="R?"  Part="1" 
AR Path="/604A55C0/604CCFE1" Ref="R35"  Part="1" 
F 0 "R35" V 8207 2750 50  0000 C CNN
F 1 "47k" V 8116 2750 50  0000 C CNN
F 2 "" V 7930 2750 50  0001 C CNN
F 3 "~" H 8000 2750 50  0001 C CNN
	1    8000 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7200 2750 7400 2750
Wire Wire Line
	7750 2750 7850 2750
$Comp
L Device:Q_PNP_BCE Q8
U 1 1 604CEFC7
P 8700 2750
F 0 "Q8" H 8890 2704 50  0000 L CNN
F 1 "Q_PNP_BCE" H 8890 2795 50  0000 L CNN
F 2 "" H 8900 2850 50  0001 C CNN
F 3 "~" H 8700 2750 50  0001 C CNN
	1    8700 2750
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 604CFC45
P 8250 2400
AR Path="/60469408/604CFC45" Ref="R?"  Part="1" 
AR Path="/604A55C0/604CFC45" Ref="R37"  Part="1" 
F 0 "R37" H 8320 2446 50  0000 L CNN
F 1 "22k" H 8320 2355 50  0000 L CNN
F 2 "" V 8180 2400 50  0001 C CNN
F 3 "~" H 8250 2400 50  0001 C CNN
	1    8250 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2750 8250 2750
Wire Wire Line
	8250 2550 8250 2750
Connection ~ 8250 2750
Wire Wire Line
	8250 2750 8500 2750
Wire Wire Line
	8800 2550 8800 2150
Wire Wire Line
	8800 2150 8250 2150
Wire Wire Line
	8250 2150 8250 2250
$Comp
L power:+10V #PWR?
U 1 1 604D2C70
P 8800 2050
AR Path="/604D2C70" Ref="#PWR?"  Part="1" 
AR Path="/604A55C0/604D2C70" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 8800 1900 50  0001 C CNN
F 1 "+10V" H 8815 2223 50  0000 C CNN
F 2 "" H 8800 2050 50  0001 C CNN
F 3 "" H 8800 2050 50  0001 C CNN
	1    8800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2050 8800 2150
Connection ~ 8800 2150
$Comp
L Device:R R?
U 1 1 604D4243
P 8800 3200
AR Path="/60469408/604D4243" Ref="R?"  Part="1" 
AR Path="/604A55C0/604D4243" Ref="R38"  Part="1" 
F 0 "R38" H 8870 3246 50  0000 L CNN
F 1 "6k2" H 8870 3155 50  0000 L CNN
F 2 "" V 8730 3200 50  0001 C CNN
F 3 "~" H 8800 3200 50  0001 C CNN
	1    8800 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 604D47CA
P 7400 3050
AR Path="/60469408/604D47CA" Ref="D?"  Part="1" 
AR Path="/604A55C0/604D47CA" Ref="D11"  Part="1" 
F 0 "D11" H 7400 3250 50  0000 C CNN
F 1 "D" H 7400 3150 50  0000 C CNN
F 2 "" H 7400 3050 50  0001 C CNN
F 3 "~" H 7400 3050 50  0001 C CNN
	1    7400 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 2900 7400 2750
Connection ~ 7400 2750
Wire Wire Line
	7400 2750 7450 2750
Wire Wire Line
	7400 3200 7400 3450
Wire Wire Line
	7400 3450 8800 3450
Wire Wire Line
	8800 3450 8800 3350
$Comp
L power:GND #PWR?
U 1 1 604D6C3F
P 8800 3550
AR Path="/604D6C3F" Ref="#PWR?"  Part="1" 
AR Path="/60479334/604D6C3F" Ref="#PWR?"  Part="1" 
AR Path="/60469408/604D6C3F" Ref="#PWR?"  Part="1" 
AR Path="/604A55C0/604D6C3F" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 8800 3300 50  0001 C CNN
F 1 "GND" H 8805 3377 50  0000 C CNN
F 2 "" H 8800 3550 50  0001 C CNN
F 3 "" H 8800 3550 50  0001 C CNN
	1    8800 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8800 3550 8800 3450
Connection ~ 8800 3450
Wire Wire Line
	8800 3050 8800 2950
Text HLabel 8300 5600 2    50   Input ~ 0
ECU_TPSWOT
$Comp
L Device:R R?
U 1 1 604DCE0A
P 8100 5300
AR Path="/60469408/604DCE0A" Ref="R?"  Part="1" 
AR Path="/604A55C0/604DCE0A" Ref="R36"  Part="1" 
F 0 "R36" H 8170 5346 50  0000 L CNN
F 1 "5k1" H 8170 5255 50  0000 L CNN
F 2 "" V 8030 5300 50  0001 C CNN
F 3 "~" H 8100 5300 50  0001 C CNN
	1    8100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5600 8100 5600
Wire Wire Line
	8100 5600 8100 5450
$Comp
L power:+10V #PWR?
U 1 1 604DE272
P 8100 4950
AR Path="/604DE272" Ref="#PWR?"  Part="1" 
AR Path="/604A55C0/604DE272" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 8100 4800 50  0001 C CNN
F 1 "+10V" H 8115 5123 50  0000 C CNN
F 2 "" H 8100 4950 50  0001 C CNN
F 3 "" H 8100 4950 50  0001 C CNN
	1    8100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4950 8100 5150
Wire Wire Line
	3250 2550 3250 4300
$EndSCHEMATC
