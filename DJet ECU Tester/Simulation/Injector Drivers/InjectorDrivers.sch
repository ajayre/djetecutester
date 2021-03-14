EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 1
Title "Bosch D-Jetronic ECU 0 280 002 005 Injector Drivers"
Date "2021-03-12"
Rev "1.00"
Comp "Mercedes-Benz"
Comment1 "M117.982 Engine"
Comment2 "Bosch Order # 0 280 002 005"
Comment3 "Mercedes-Benz Part # A 000 545 26 32"
Comment4 "Main Board 2 288 300 028"
$EndDescr
Text GLabel 6950 7050 2    50   Input ~ 0
E24-12V
Text GLabel 6950 5550 2    50   Input ~ 0
E24-12V
$Comp
L Transistor_BJT:BC547 Q550
U 1 1 5F312D0A
P 6750 6450
F 0 "Q550" H 6940 6496 50  0000 L CNN
F 1 "BCY58" H 6940 6405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6950 6375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6750 6450 50  0001 L CNN
F 4 "Center E" H 6750 6450 50  0001 C CNN "Notes"
	1    6750 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R515
U 1 1 5F31A937
P 6850 4450
F 0 "R515" H 6918 4496 50  0000 L CNN
F 1 "300" H 6918 4405 50  0000 L CNN
F 2 "Upper Center K" V 6890 4440 50  0001 C CNN
F 3 "~" H 6850 4450 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 6850 4450 50  0001 C CNN "Notes"
	1    6850 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4050 6850 4300
Text GLabel 6950 4050 2    50   Input ~ 0
E24-12V
$Comp
L Transistor_BJT:BC547 Q505
U 1 1 5F31A944
P 6750 4950
F 0 "Q505" H 6940 4996 50  0000 L CNN
F 1 "BCY58" H 6940 4905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6950 4875 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6750 4950 50  0001 L CNN
F 4 "Center K" H 6750 4950 50  0001 C CNN "Notes"
	1    6750 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R503
U 1 1 5F31D027
P 6850 2950
F 0 "R503" H 6918 2996 50  0000 L CNN
F 1 "300" H 6918 2905 50  0000 L CNN
F 2 "Upper Center K" V 6890 2940 50  0001 C CNN
F 3 "~" H 6850 2950 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 6850 2950 50  0001 C CNN "Notes"
	1    6850 2950
	1    0    0    -1  
$EndComp
Text GLabel 6950 2450 2    50   Input ~ 0
E24-12V
$Comp
L Transistor_BJT:BC547 Q500
U 1 1 5F31D034
P 6750 3450
F 0 "Q500" H 6940 3496 50  0000 L CNN
F 1 "BCY58" H 6940 3405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6950 3375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6750 3450 50  0001 L CNN
F 4 "Center K" H 6750 3450 50  0001 C CNN "Notes"
	1    6750 3450
	1    0    0    -1  
$EndComp
Text GLabel 6950 6850 2    50   UnSpc ~ 0
E11-GND
Text GLabel 6950 3850 2    50   UnSpc ~ 0
E11-GND
Text GLabel 6950 8350 2    50   UnSpc ~ 0
E11-GND
$Comp
L Transistor_BJT:BC547 Q555
U 1 1 5F30D664
P 6750 7950
F 0 "Q555" H 6940 7996 50  0000 L CNN
F 1 "BCY58" H 6940 7905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6950 7875 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6750 7950 50  0001 L CNN
F 4 "Lower Center E" H 6750 7950 50  0001 C CNN "Notes"
	1    6750 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 7050 6850 7300
$Comp
L Device:R_US R565
U 1 1 5F30D657
P 6850 7450
F 0 "R565" H 6918 7496 50  0000 L CNN
F 1 "300" H 6918 7405 50  0000 L CNN
F 2 "Lower Center E" V 6890 7440 50  0001 C CNN
F 3 "~" H 6850 7450 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 6850 7450 50  0001 C CNN "Notes"
	1    6850 7450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC337 Q501
U 1 1 5F391AD6
P 7750 3250
F 0 "Q501" H 7940 3296 50  0000 L CNN
F 1 "BSX95" H 7940 3205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7950 3175 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 7750 3250 50  0001 L CNN
F 4 "Center Right K" H 7750 3250 50  0001 C CNN "Notes"
	1    7750 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3650 6850 3850
Wire Wire Line
	6850 5150 6850 5350
Wire Wire Line
	6850 6650 6850 6850
Wire Wire Line
	6850 2800 6850 2450
Wire Wire Line
	6850 8150 6850 8350
Wire Wire Line
	7550 3250 6850 3250
$Comp
L Transistor_BJT:BC337 Q504
U 1 1 5F3E4AE0
P 7750 4750
F 0 "Q504" H 7940 4796 50  0000 L CNN
F 1 "BSX95" H 7940 4705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7950 4675 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 7750 4750 50  0001 L CNN
F 4 "Center Right K" H 7750 4750 50  0001 C CNN "Notes"
	1    7750 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4750 6850 4750
$Comp
L Transistor_BJT:BC337 Q551
U 1 1 5F3E970B
P 7750 6250
F 0 "Q551" H 7940 6296 50  0000 L CNN
F 1 "BSX95" H 7940 6205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7950 6175 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 7750 6250 50  0001 L CNN
F 4 "Center Right E" H 7750 6250 50  0001 C CNN "Notes"
	1    7750 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 6250 6850 6250
$Comp
L Transistor_BJT:BC337 Q554
U 1 1 5F3ED885
P 7750 7750
F 0 "Q554" H 7940 7796 50  0000 L CNN
F 1 "BSX95" H 7940 7705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7950 7675 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 7750 7750 50  0001 L CNN
F 4 "Lower Right E" H 7750 7750 50  0001 C CNN "Notes"
	1    7750 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 7750 6850 7750
$Comp
L Device:R_US R504
U 1 1 5F485A3E
P 8850 3050
F 0 "R504" V 8645 3050 50  0000 C CNN
F 1 "30" V 8736 3050 50  0000 C CNN
F 2 "Upper Center D wired out to Heat Sink" V 8890 3040 50  0001 C CNN
F 3 "~" H 8850 3050 50  0001 C CNN
F 4 "014 measured ceramic" H 8850 3050 50  0001 C CNN "Notes"
	1    8850 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R509
U 1 1 5F486B62
P 8850 3450
F 0 "R509" V 8645 3450 50  0000 C CNN
F 1 "820" V 8736 3450 50  0000 C CNN
F 2 "Lower Right K" V 8890 3440 50  0001 C CNN
F 3 "~" H 8850 3450 50  0001 C CNN
F 4 "Gr R Br Gd = 820Ω ±5%" H 8850 3450 50  0001 C CNN "Notes"
	1    8850 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R513
U 1 1 5F4877AC
P 8850 4550
F 0 "R513" V 8645 4550 50  0000 C CNN
F 1 "30" V 8736 4550 50  0000 C CNN
F 2 "Upper Left D wired out to Heat Sink" V 8890 4540 50  0001 C CNN
F 3 "~" H 8850 4550 50  0001 C CNN
F 4 "014 measured ceramic" H 8850 4550 50  0001 C CNN "Notes"
	1    8850 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R554
U 1 1 5F48863A
P 8850 6050
F 0 "R554" V 8645 6050 50  0000 C CNN
F 1 "30" V 8736 6050 50  0000 C CNN
F 2 "Upper Left D wired out to Heat Sink" V 8890 6040 50  0001 C CNN
F 3 "~" H 8850 6050 50  0001 C CNN
F 4 "014 measured ceramic" H 8850 6050 50  0001 C CNN "Notes"
	1    8850 6050
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R563
U 1 1 5F489A58
P 8850 7550
F 0 "R563" V 8645 7550 50  0000 C CNN
F 1 "30" V 8736 7550 50  0000 C CNN
F 2 "Upper Right D-E Line wired out to Heat Sink" V 8890 7540 50  0001 C CNN
F 3 "~" H 8850 7550 50  0001 C CNN
F 4 "014 measured ceramic" H 8850 7550 50  0001 C CNN "Notes"
	1    8850 7550
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R559
U 1 1 5F48AD9A
P 8850 7950
F 0 "R559" V 8645 7950 50  0000 C CNN
F 1 "820" V 8736 7950 50  0000 C CNN
F 2 "Upper Right E" V 8890 7940 50  0001 C CNN
F 3 "~" H 8850 7950 50  0001 C CNN
F 4 "Gr R Br Gd = 820Ω ±5%" H 8850 7950 50  0001 C CNN "Notes"
	1    8850 7950
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 7950 8000 7950
Wire Wire Line
	7850 7550 8700 7550
Wire Wire Line
	7850 6050 8700 6050
Wire Wire Line
	7850 4550 8700 4550
Wire Wire Line
	7850 3050 8700 3050
$Comp
L Device:R_US R555
U 1 1 5F4AD72F
P 9350 5800
F 0 "R555" H 9418 5846 50  0000 L CNN
F 1 "27" H 9418 5755 50  0000 L CNN
F 2 "Upper Right D" V 9390 5790 50  0001 C CNN
F 3 "~" H 9350 5800 50  0001 C CNN
F 4 "R W Bk Gd = 27Ω ±5%" H 9350 5800 50  0001 C CNN "Notes"
	1    9350 5800
	1    0    0    -1  
$EndComp
Text GLabel 9450 4050 2    50   Input ~ 0
E24-12V
Wire Wire Line
	9350 5650 9350 5550
Text GLabel 9450 5550 2    50   Input ~ 0
E24-12V
Wire Wire Line
	7850 6450 8350 6450
Wire Wire Line
	8350 6450 8350 7950
Connection ~ 8350 7950
Wire Wire Line
	8350 7950 8700 7950
Text GLabel 11150 2450 2    50   Input ~ 0
E24-12V
Wire Wire Line
	10100 2850 10850 2850
Wire Wire Line
	10850 2850 10850 3000
Wire Wire Line
	10850 7950 9000 7950
Wire Wire Line
	10100 4350 10850 4350
Connection ~ 10850 4350
Wire Wire Line
	10850 4350 10850 5850
Wire Wire Line
	10100 5850 10850 5850
Connection ~ 10850 5850
Wire Wire Line
	10850 5850 10850 7350
Wire Wire Line
	10100 7350 10850 7350
Connection ~ 10850 7350
Wire Wire Line
	10850 7350 10850 7950
$Comp
L Device:C C500
U 1 1 5F191FD1
P 11350 3400
F 0 "C500" H 11465 3446 50  0000 L CNN
F 1 "6.8u" H 11465 3355 50  0000 L CNN
F 2 "Right D Line" H 11388 3250 50  0001 C CNN
F 3 "~" H 11350 3400 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 11350 3400 50  0001 C CNN "Notes"
	1    11350 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R508
U 1 1 5F193BA3
P 11350 3700
F 0 "R508" H 11418 3746 50  0000 L CNN
F 1 "6.8" H 11418 3655 50  0000 L CNN
F 2 "Left E-K Line" V 11390 3690 50  0001 C CNN
F 3 "~" H 11350 3700 50  0001 C CNN
F 4 "Bl Gr Gd Gd = 6.8Ω ±5%" H 11350 3700 50  0001 C CNN "Notes"
	1    11350 3700
	1    0    0    -1  
$EndComp
Text GLabel 11450 3850 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	10100 3250 11350 3250
$Comp
L Device:C C501
U 1 1 5F1A0F09
P 11350 4900
F 0 "C501" H 11465 4946 50  0000 L CNN
F 1 "6.8u" H 11465 4855 50  0000 L CNN
F 2 "Right D Line" H 11388 4750 50  0001 C CNN
F 3 "~" H 11350 4900 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 11350 4900 50  0001 C CNN "Notes"
	1    11350 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R510
U 1 1 5F1A0F13
P 11350 5200
F 0 "R510" H 11418 5246 50  0000 L CNN
F 1 "6.8" H 11418 5155 50  0000 L CNN
F 2 "Center Left K" V 11390 5190 50  0001 C CNN
F 3 "~" H 11350 5200 50  0001 C CNN
F 4 "Bl Gr Gd Gd = 6.8Ω ±5%" H 11350 5200 50  0001 C CNN "Notes"
	1    11350 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 4750 11350 4750
$Comp
L Device:C C550
U 1 1 5F1B5047
P 11350 6400
F 0 "C550" H 11465 6446 50  0000 L CNN
F 1 "6.8u" H 11465 6355 50  0000 L CNN
F 2 "Right K Line" H 11388 6250 50  0001 C CNN
F 3 "~" H 11350 6400 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 11350 6400 50  0001 C CNN "Notes"
	1    11350 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R558
U 1 1 5F1B5051
P 11350 6700
F 0 "R558" H 11418 6746 50  0000 L CNN
F 1 "6.8" H 11418 6655 50  0000 L CNN
F 2 "Upper Left K" V 11390 6690 50  0001 C CNN
F 3 "~" H 11350 6700 50  0001 C CNN
F 4 "Bl Gr Gd Gd = 6.8Ω ±5%" H 11350 6700 50  0001 C CNN "Notes"
	1    11350 6700
	1    0    0    -1  
$EndComp
Text GLabel 11450 6850 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	10100 6250 11350 6250
$Comp
L Device:C C551
U 1 1 5F1BC0B5
P 11350 7900
F 0 "C551" H 11465 7946 50  0000 L CNN
F 1 "6.8u" H 11465 7855 50  0000 L CNN
F 2 "Right K Line" H 11388 7750 50  0001 C CNN
F 3 "~" H 11350 7900 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 11350 7900 50  0001 C CNN "Notes"
	1    11350 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R560
U 1 1 5F1BC0BF
P 11350 8200
F 0 "R560" H 11418 8246 50  0000 L CNN
F 1 "6.8" H 11418 8155 50  0000 L CNN
F 2 "Center Left E" V 11390 8190 50  0001 C CNN
F 3 "~" H 11350 8200 50  0001 C CNN
F 4 "Bl Gr Gd Gd = 6.8Ω ±5%" H 11350 8200 50  0001 C CNN "Notes"
	1    11350 8200
	1    0    0    -1  
$EndComp
Text GLabel 11450 8350 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	10100 7750 11350 7750
Text GLabel 11450 5350 2    50   UnSpc ~ 0
E11-GND
Text GLabel 6950 5350 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	9000 3450 10850 3450
Connection ~ 10850 3450
Wire Wire Line
	10850 3450 10850 4350
$Comp
L Device:R_US R506
U 1 1 5F274A48
P 12600 3250
F 0 "R506" V 12395 3250 50  0000 C CNN
F 1 "6" V 12486 3250 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 12640 3240 50  0001 C CNN
F 3 "~" H 12600 3250 50  0001 C CNN
F 4 "014 measured ceramic" H 12600 3250 50  0001 C CNN "Notes"
	1    12600 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R507
U 1 1 5F277513
P 12600 3700
F 0 "R507" V 12395 3700 50  0000 C CNN
F 1 "6" V 12486 3700 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 12640 3690 50  0001 C CNN
F 3 "~" H 12600 3700 50  0001 C CNN
F 4 "014 measured ceramic" H 12600 3700 50  0001 C CNN "Notes"
	1    12600 3700
	0    1    1    0   
$EndComp
Connection ~ 11350 3250
Wire Wire Line
	12850 3250 13200 3250
$Comp
L Device:R_US R511
U 1 1 5F287875
P 12600 4750
F 0 "R511" V 12395 4750 50  0000 C CNN
F 1 "6" V 12486 4750 50  0000 C CNN
F 2 "Upper A-B Line wired out to Heat Sink" V 12640 4740 50  0001 C CNN
F 3 "~" H 12600 4750 50  0001 C CNN
F 4 "014 measured ceramic" H 12600 4750 50  0001 C CNN "Notes"
	1    12600 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R512
U 1 1 5F28787F
P 12600 5200
F 0 "R512" V 12395 5200 50  0000 C CNN
F 1 "6" V 12486 5200 50  0000 C CNN
F 2 "Upper A-B Line wired out to Heat Sink" V 12640 5190 50  0001 C CNN
F 3 "~" H 12600 5200 50  0001 C CNN
F 4 "014 measured ceramic" H 12600 5200 50  0001 C CNN "Notes"
	1    12600 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	11350 4750 12350 4750
Wire Wire Line
	12850 4750 13550 4750
Connection ~ 11350 4750
$Comp
L Device:R_US R556
U 1 1 5F28F6CC
P 12600 6250
F 0 "R556" V 12395 6250 50  0000 C CNN
F 1 "6" V 12486 6250 50  0000 C CNN
F 2 "Upper A-B Line wired out to Heat Sink" V 12640 6240 50  0001 C CNN
F 3 "~" H 12600 6250 50  0001 C CNN
F 4 "014 measured ceramic" H 12600 6250 50  0001 C CNN "Notes"
	1    12600 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R557
U 1 1 5F28F6D6
P 12600 6750
F 0 "R557" V 12395 6750 50  0000 C CNN
F 1 "6" V 12486 6750 50  0000 C CNN
F 2 "Upper A-B Line wired out to Heat Sink" V 12640 6740 50  0001 C CNN
F 3 "~" H 12600 6750 50  0001 C CNN
F 4 "014 measured ceramic" H 12600 6750 50  0001 C CNN "Notes"
	1    12600 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	11350 6250 12350 6250
Wire Wire Line
	12850 6250 13550 6250
Connection ~ 11350 6250
$Comp
L Device:R_US R561
U 1 1 5F297AE8
P 12600 7750
F 0 "R561" V 12395 7750 50  0000 C CNN
F 1 "6" V 12486 7750 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 12640 7740 50  0001 C CNN
F 3 "~" H 12600 7750 50  0001 C CNN
F 4 "R501 on Peter's - 014 measured ceramic" H 12600 7750 50  0001 C CNN "Notes"
	1    12600 7750
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R562
U 1 1 5F297AF2
P 12600 8250
F 0 "R562" V 12395 8250 50  0000 C CNN
F 1 "6" V 12486 8250 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 12640 8240 50  0001 C CNN
F 3 "~" H 12600 8250 50  0001 C CNN
F 4 "R502 on Peter's - 014 measured ceramic" H 12600 8250 50  0001 C CNN "Notes"
	1    12600 8250
	0    1    1    0   
$EndComp
Wire Wire Line
	11350 7750 12350 7750
Wire Wire Line
	12850 7750 13550 7750
Connection ~ 11350 7750
Text GLabel 13550 7750 2    50   Output ~ 0
E6-INJ7_2
Text GLabel 13550 6250 2    50   Output ~ 0
E4-INJ4_8
Text GLabel 13550 4750 2    50   Output ~ 0
E5-INJ6_3
Text GLabel 13550 3250 2    50   Output ~ 0
E3-INJ1_5
$Comp
L Device:R_US R505
U 1 1 5F4AB10D
P 9350 2750
F 0 "R505" H 9418 2796 50  0000 L CNN
F 1 "27" H 9418 2705 50  0000 L CNN
F 2 "Upper Right D" V 9390 2740 50  0001 C CNN
F 3 "~" H 9350 2750 50  0001 C CNN
F 4 "R W Bk Gd = 27Ω ±5%" H 9350 2750 50  0001 C CNN "Notes"
	1    9350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2600 9350 2450
Wire Wire Line
	9350 4150 9350 4050
Wire Wire Line
	9350 4050 9450 4050
Wire Wire Line
	9350 5550 9450 5550
Wire Wire Line
	6850 3850 6950 3850
Wire Wire Line
	6850 6850 6950 6850
Wire Wire Line
	6850 5350 6950 5350
Wire Wire Line
	6850 2450 6950 2450
Wire Wire Line
	6850 5550 6950 5550
Wire Wire Line
	6850 8350 6950 8350
Wire Wire Line
	11350 3850 11450 3850
Wire Wire Line
	11350 6850 11450 6850
Wire Wire Line
	6850 7050 6950 7050
Wire Wire Line
	6850 4050 6950 4050
$Comp
L Device:R_US R501
U 1 1 5F337836
P 6100 3450
F 0 "R501" V 5895 3450 50  0000 C CNN
F 1 "3k9" V 5986 3450 50  0000 C CNN
F 2 "Lower Right J" V 6140 3440 50  0001 C CNN
F 3 "~" H 6100 3450 50  0001 C CNN
F 4 "O W R Gd = 3.9KΩ ±5%" H 6100 3450 50  0001 C CNN "Notes"
	1    6100 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R517
U 1 1 5F335038
P 6100 4950
F 0 "R517" V 5895 4950 50  0000 C CNN
F 1 "3k9" V 5986 4950 50  0000 C CNN
F 2 "Lower Right J" V 6140 4940 50  0001 C CNN
F 3 "~" H 6100 4950 50  0001 C CNN
F 4 "O W R Gd = 3.9KΩ ±5%" H 6100 4950 50  0001 C CNN "Notes"
	1    6100 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R551
U 1 1 5F32FCCB
P 6100 6450
F 0 "R551" V 5895 6450 50  0000 C CNN
F 1 "3k9" V 5986 6450 50  0000 C CNN
F 2 "Upper Left D" V 6140 6440 50  0001 C CNN
F 3 "~" H 6100 6450 50  0001 C CNN
F 4 "O W R Gd = 3.9KΩ ±5%" H 6100 6450 50  0001 C CNN "Notes"
	1    6100 6450
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R567
U 1 1 5F32957C
P 6100 7950
F 0 "R567" V 5895 7950 50  0000 C CNN
F 1 "3k9" V 5986 7950 50  0000 C CNN
F 2 "Upper Right C" V 6140 7940 50  0001 C CNN
F 3 "~" H 6100 7950 50  0001 C CNN
F 4 "O W R Gd = 3.9KΩ ±5%" H 6100 7950 50  0001 C CNN "Notes"
	1    6100 7950
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 4950 5950 4950
Wire Wire Line
	5600 6450 5950 6450
Wire Wire Line
	5650 7950 5950 7950
Wire Wire Line
	6850 3100 6850 3250
Connection ~ 6850 3250
Wire Wire Line
	6850 4600 6850 4750
Connection ~ 6850 4750
Wire Wire Line
	9000 3050 9350 3050
Wire Wire Line
	9350 2900 9350 3050
Connection ~ 9350 3050
Wire Wire Line
	9350 3050 9800 3050
$Comp
L Device:R_US R514
U 1 1 5F4ABE6C
P 9350 4300
F 0 "R514" H 9418 4346 50  0000 L CNN
F 1 "27" H 9418 4255 50  0000 L CNN
F 2 "Upper Center D" V 9390 4290 50  0001 C CNN
F 3 "~" H 9350 4300 50  0001 C CNN
F 4 "R W Bk Gd = 27Ω ±5%" H 9350 4300 50  0001 C CNN "Notes"
	1    9350 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4550 9350 4550
Wire Wire Line
	9350 4450 9350 4550
Connection ~ 9350 4550
Wire Wire Line
	11350 3250 12350 3250
Wire Wire Line
	12450 3250 12350 3250
Connection ~ 12350 3250
Wire Wire Line
	12750 3250 12850 3250
Connection ~ 12850 3250
Wire Wire Line
	12350 3700 12450 3700
Wire Wire Line
	12350 3250 12350 3700
Wire Wire Line
	12750 3700 12850 3700
Wire Wire Line
	12850 3250 12850 3700
Wire Wire Line
	12350 4750 12450 4750
Connection ~ 12350 4750
Wire Wire Line
	12750 4750 12850 4750
Connection ~ 12850 4750
Wire Wire Line
	12350 5200 12450 5200
Wire Wire Line
	12350 4750 12350 5200
Wire Wire Line
	12750 5200 12850 5200
Wire Wire Line
	12850 4750 12850 5200
Wire Wire Line
	9350 7050 9450 7050
Text GLabel 9450 7050 2    50   Input ~ 0
E24-12V
Wire Wire Line
	9350 7150 9350 7050
$Comp
L Device:R_US R564
U 1 1 5F4AE4B9
P 9350 7300
F 0 "R564" H 9418 7346 50  0000 L CNN
F 1 "27" H 9418 7255 50  0000 L CNN
F 2 "Upper Left E" V 9390 7290 50  0001 C CNN
F 3 "~" H 9350 7300 50  0001 C CNN
F 4 "R W Bk Gd = 27Ω ±5%" H 9350 7300 50  0001 C CNN "Notes"
	1    9350 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 7550 9350 7550
Wire Wire Line
	9000 6050 9350 6050
Wire Wire Line
	9350 5950 9350 6050
Connection ~ 9350 6050
Wire Wire Line
	9350 6050 9800 6050
Wire Wire Line
	9350 7450 9350 7550
Connection ~ 9350 7550
Wire Wire Line
	9350 7550 9800 7550
Wire Wire Line
	12350 6250 12450 6250
Connection ~ 12350 6250
Wire Wire Line
	12750 6250 12850 6250
Connection ~ 12850 6250
Wire Wire Line
	12350 6750 12450 6750
Wire Wire Line
	12350 6250 12350 6750
Wire Wire Line
	12750 6750 12850 6750
Wire Wire Line
	12850 6250 12850 6750
Wire Wire Line
	12350 7750 12450 7750
Connection ~ 12350 7750
Wire Wire Line
	12750 7750 12850 7750
Connection ~ 12850 7750
Wire Wire Line
	12750 8250 12850 8250
Wire Wire Line
	12850 7750 12850 8250
Wire Wire Line
	12350 8250 12450 8250
Wire Wire Line
	12350 7750 12350 8250
Connection ~ 11350 5350
Wire Wire Line
	11350 5350 11450 5350
Wire Wire Line
	6850 7600 6850 7750
Connection ~ 6850 7750
Wire Wire Line
	6850 5800 6850 5550
$Comp
L Device:R_US R553
U 1 1 5F312CFD
P 6850 5950
F 0 "R553" H 6918 5996 50  0000 L CNN
F 1 "300" H 6918 5905 50  0000 L CNN
F 2 "Lower Right E" V 6890 5940 50  0001 C CNN
F 3 "~" H 6850 5950 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 6850 5950 50  0001 C CNN "Notes"
	1    6850 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 6100 6850 6250
Connection ~ 6850 6250
Wire Wire Line
	5600 3450 5950 3450
Wire Wire Line
	6250 6450 6550 6450
Wire Wire Line
	6250 7950 6550 7950
Wire Wire Line
	6250 3450 6550 3450
Wire Wire Line
	6250 4950 6550 4950
Text GLabel 5600 3450 0    50   Input ~ 0
IN_INJ1_5
Text GLabel 5600 4950 0    50   Input ~ 0
IN_INJ6_3
Text GLabel 5600 6450 0    50   Input ~ 0
IN_INJ4_8
Text GLabel 5650 7950 0    50   Input ~ 0
IN_INJ7_2
Wire Wire Line
	8550 5350 11350 5350
Wire Wire Line
	10850 3000 11050 3000
Connection ~ 10850 3000
Wire Wire Line
	10850 3000 10850 3450
Wire Wire Line
	9350 2450 11050 2450
Wire Wire Line
	11050 2450 11050 2600
Connection ~ 11050 2450
Wire Wire Line
	11050 2450 11150 2450
Wire Bus Line
	11050 2450 11150 2450
Wire Wire Line
	8000 7950 8000 8000
Connection ~ 8000 7950
Wire Wire Line
	8000 7950 8350 7950
Connection ~ 11350 8350
Wire Wire Line
	11350 8350 11450 8350
$Comp
L Simulation_SPICE:VDC V3
U 1 1 6055A43A
P 2950 4050
F 0 "V3" H 3080 4141 50  0000 L CNN
F 1 "12" H 3080 4050 50  0000 L CNN
F 2 "" H 2950 4050 50  0001 C CNN
F 3 "~" H 2950 4050 50  0001 C CNN
F 4 "Y" H 2950 4050 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 2950 4050 50  0001 L CNN "Spice_Primitive"
F 6 "dc(12)" H 3080 3959 50  0000 L CNN "Spice_Model"
	1    2950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4250 2950 4400
Text GLabel 3900 3700 2    50   Input ~ 0
IN_INJ1_5
Text GLabel 2950 3400 2    50   Input ~ 0
IN_INJ6_3
Text GLabel 2950 3550 2    50   Input ~ 0
IN_INJ4_8
Text GLabel 2950 3700 2    50   Input ~ 0
IN_INJ7_2
$Comp
L Simulation_SPICE:DIODE D3
U 1 1 6057ACE0
P 11050 2750
F 0 "D3" V 11004 2830 50  0000 L CNN
F 1 "DIODE" V 11095 2830 50  0000 L CNN
F 2 "" H 11050 2750 50  0001 C CNN
F 3 "~" H 11050 2750 50  0001 C CNN
F 4 "Y" H 11050 2750 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 11050 2750 50  0001 L CNN "Spice_Primitive"
	1    11050 2750
	0    1    1    0   
$EndComp
$Comp
L Simulation_SPICE:DIODE D2
U 1 1 6057B49A
P 8550 5100
F 0 "D2" V 8504 5180 50  0000 L CNN
F 1 "DIODE" V 8595 5180 50  0000 L CNN
F 2 "" H 8550 5100 50  0001 C CNN
F 3 "~" H 8550 5100 50  0001 C CNN
F 4 "Y" H 8550 5100 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 8550 5100 50  0001 L CNN "Spice_Primitive"
	1    8550 5100
	0    1    1    0   
$EndComp
$Comp
L Simulation_SPICE:DIODE D1
U 1 1 6057B7D9
P 8000 8150
F 0 "D1" V 7954 8230 50  0000 L CNN
F 1 "DIODE" V 8045 8230 50  0000 L CNN
F 2 "" H 8000 8150 50  0001 C CNN
F 3 "~" H 8000 8150 50  0001 C CNN
F 4 "Y" H 8000 8150 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 8000 8150 50  0001 L CNN "Spice_Primitive"
	1    8000 8150
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 8350 8000 8300
Wire Wire Line
	8000 8350 11350 8350
Wire Wire Line
	8550 5250 8550 5350
Wire Wire Line
	11050 2900 11050 3000
Text Notes 2850 5100 0    50   ~ 0
.model DIODE D\n.model BCY58 npn\n.model BSX95 npn\n.model AUY21 pnp\n.tran 1ms 300ms 0
Wire Wire Line
	7850 3450 8550 3450
Wire Wire Line
	7850 4950 8550 4950
$Comp
L Device:Q_PNP_CBE Q502
U 1 1 605ABD59
P 10000 3050
F 0 "Q502" H 10191 3004 50  0000 L CNN
F 1 "AUY21" H 10191 3095 50  0000 L CNN
F 2 "" H 10200 3150 50  0001 C CNN
F 3 "~" H 10000 3050 50  0001 C CNN
	1    10000 3050
	1    0    0    1   
$EndComp
Wire Wire Line
	9350 4550 9800 4550
$Comp
L Device:Q_PNP_CBE Q503
U 1 1 605AD57F
P 10000 4550
F 0 "Q503" H 10191 4504 50  0000 L CNN
F 1 "AUY21" H 10191 4595 50  0000 L CNN
F 2 "" H 10200 4650 50  0001 C CNN
F 3 "~" H 10000 4550 50  0001 C CNN
	1    10000 4550
	1    0    0    1   
$EndComp
$Comp
L Device:Q_PNP_CBE Q552
U 1 1 605AF76F
P 10000 6050
F 0 "Q552" H 10191 6004 50  0000 L CNN
F 1 "AUY21" H 10191 6095 50  0000 L CNN
F 2 "" H 10200 6150 50  0001 C CNN
F 3 "~" H 10000 6050 50  0001 C CNN
	1    10000 6050
	1    0    0    1   
$EndComp
$Comp
L Device:Q_PNP_CBE Q553
U 1 1 605B07E1
P 10000 7550
F 0 "Q553" H 10191 7504 50  0000 L CNN
F 1 "AUY21" H 10191 7595 50  0000 L CNN
F 2 "" H 10200 7650 50  0001 C CNN
F 3 "~" H 10000 7550 50  0001 C CNN
	1    10000 7550
	1    0    0    1   
$EndComp
Wire Wire Line
	2050 4400 2050 4550
Connection ~ 2050 4400
Text GLabel 2050 4550 3    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	2050 4250 2050 4400
Wire Wire Line
	2050 3550 2050 3850
Text GLabel 2050 3550 1    50   Input ~ 0
E24-12V
$Comp
L Simulation_SPICE:VDC V1
U 1 1 604E83CA
P 2050 4050
F 0 "V1" H 2180 4141 50  0000 L CNN
F 1 "12" H 2180 4050 50  0000 L CNN
F 2 "" H 2050 4050 50  0001 C CNN
F 3 "~" H 2050 4050 50  0001 C CNN
F 4 "Y" H 2050 4050 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 2050 4050 50  0001 L CNN "Spice_Primitive"
F 6 "dc(12)" H 2180 3959 50  0000 L CNN "Spice_Model"
	1    2050 4050
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L1
U 1 1 604ECB0B
P 13650 3700
F 0 "L1" H 13650 3915 50  0000 C CNN
F 1 "3.77mH" H 13650 3824 50  0000 C CNN
F 2 "" H 13650 3700 50  0001 C CNN
F 3 "~" H 13650 3700 50  0001 C CNN
	1    13650 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 604ED3F7
P 14200 3700
F 0 "R2" V 13995 3700 50  0000 C CNN
F 1 "2.6" V 14086 3700 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 14240 3690 50  0001 C CNN
F 3 "~" H 14200 3700 50  0001 C CNN
F 4 "014 measured ceramic" H 14200 3700 50  0001 C CNN "Notes"
	1    14200 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	13400 3700 13200 3700
Wire Wire Line
	13200 3700 13200 3250
Connection ~ 13200 3250
Wire Wire Line
	13200 3250 13550 3250
Wire Wire Line
	13900 3700 14050 3700
Text GLabel 14500 3700 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	14500 3700 14350 3700
$Comp
L pspice:INDUCTOR L2
U 1 1 60501C75
P 13650 5200
F 0 "L2" H 13650 5415 50  0000 C CNN
F 1 "3.77mH" H 13650 5324 50  0000 C CNN
F 2 "" H 13650 5200 50  0001 C CNN
F 3 "~" H 13650 5200 50  0001 C CNN
	1    13650 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 60501C7C
P 14200 5200
F 0 "R3" V 13995 5200 50  0000 C CNN
F 1 "2.6" V 14086 5200 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 14240 5190 50  0001 C CNN
F 3 "~" H 14200 5200 50  0001 C CNN
F 4 "014 measured ceramic" H 14200 5200 50  0001 C CNN "Notes"
	1    14200 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	13400 5200 13200 5200
Wire Wire Line
	13200 5200 13200 4750
Wire Wire Line
	13900 5200 14050 5200
Text GLabel 14500 5200 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	14500 5200 14350 5200
$Comp
L pspice:INDUCTOR L3
U 1 1 60509157
P 13650 6700
F 0 "L3" H 13650 6915 50  0000 C CNN
F 1 "3.77mH" H 13650 6824 50  0000 C CNN
F 2 "" H 13650 6700 50  0001 C CNN
F 3 "~" H 13650 6700 50  0001 C CNN
	1    13650 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 6050915E
P 14200 6700
F 0 "R4" V 13995 6700 50  0000 C CNN
F 1 "2.6" V 14086 6700 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 14240 6690 50  0001 C CNN
F 3 "~" H 14200 6700 50  0001 C CNN
F 4 "014 measured ceramic" H 14200 6700 50  0001 C CNN "Notes"
	1    14200 6700
	0    1    1    0   
$EndComp
Wire Wire Line
	13400 6700 13200 6700
Wire Wire Line
	13200 6700 13200 6250
Wire Wire Line
	13900 6700 14050 6700
Text GLabel 14500 6700 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	14500 6700 14350 6700
$Comp
L pspice:INDUCTOR L4
U 1 1 60510949
P 13650 8200
F 0 "L4" H 13650 8415 50  0000 C CNN
F 1 "3.77mH" H 13650 8324 50  0000 C CNN
F 2 "" H 13650 8200 50  0001 C CNN
F 3 "~" H 13650 8200 50  0001 C CNN
	1    13650 8200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 60510950
P 14200 8200
F 0 "R5" V 13995 8200 50  0000 C CNN
F 1 "2.6" V 14086 8200 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 14240 8190 50  0001 C CNN
F 3 "~" H 14200 8200 50  0001 C CNN
F 4 "014 measured ceramic" H 14200 8200 50  0001 C CNN "Notes"
	1    14200 8200
	0    1    1    0   
$EndComp
Wire Wire Line
	13400 8200 13200 8200
Wire Wire Line
	13200 8200 13200 7750
Wire Wire Line
	13900 8200 14050 8200
Text GLabel 14500 8200 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	14500 8200 14350 8200
Wire Wire Line
	8550 4950 8550 3450
Connection ~ 8550 4950
Connection ~ 8550 3450
Wire Wire Line
	8550 3450 8700 3450
Text GLabel 2950 4400 3    50   Input ~ 0
0
$Comp
L Simulation_SPICE:VPULSE V2
U 1 1 605351C4
P 3900 4050
F 0 "V2" H 4030 4141 50  0000 L CNN
F 1 "VPULSE" H 4030 4050 50  0000 L CNN
F 2 "" H 3900 4050 50  0001 C CNN
F 3 "~" H 3900 4050 50  0001 C CNN
F 4 "Y" H 3900 4050 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 3900 4050 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 12 2n 2n 2n 95ms 100ms)" H 4030 3959 50  0000 L CNN "Spice_Model"
	1    3900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4400 2950 4400
Wire Wire Line
	2950 4400 3900 4400
Wire Wire Line
	3900 4400 3900 4250
Connection ~ 2950 4400
Wire Wire Line
	3900 3700 3900 3850
Wire Wire Line
	2950 3400 2950 3850
$EndSCHEMATC
