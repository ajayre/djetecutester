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
Text GLabel 8250 6700 2    50   Input ~ 0
E24-12V
Text GLabel 8250 5200 2    50   Input ~ 0
E24-12V
$Comp
L Transistor_BJT:BC547 Q550
U 1 1 5F312D0A
P 8050 6100
F 0 "Q550" H 8240 6146 50  0000 L CNN
F 1 "BCY58" H 8240 6055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8250 6025 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8050 6100 50  0001 L CNN
F 4 "Center E" H 8050 6100 50  0001 C CNN "Notes"
	1    8050 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R515
U 1 1 5F31A937
P 8150 4100
F 0 "R515" H 8218 4146 50  0000 L CNN
F 1 "300" H 8218 4055 50  0000 L CNN
F 2 "Upper Center K" V 8190 4090 50  0001 C CNN
F 3 "~" H 8150 4100 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 8150 4100 50  0001 C CNN "Notes"
	1    8150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3700 8150 3950
Text GLabel 8250 3700 2    50   Input ~ 0
E24-12V
$Comp
L Transistor_BJT:BC547 Q505
U 1 1 5F31A944
P 8050 4600
F 0 "Q505" H 8240 4646 50  0000 L CNN
F 1 "BCY58" H 8240 4555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8250 4525 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8050 4600 50  0001 L CNN
F 4 "Center K" H 8050 4600 50  0001 C CNN "Notes"
	1    8050 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R503
U 1 1 5F31D027
P 8150 2600
F 0 "R503" H 8218 2646 50  0000 L CNN
F 1 "300" H 8218 2555 50  0000 L CNN
F 2 "Upper Center K" V 8190 2590 50  0001 C CNN
F 3 "~" H 8150 2600 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 8150 2600 50  0001 C CNN "Notes"
	1    8150 2600
	1    0    0    -1  
$EndComp
Text GLabel 8250 2100 2    50   Input ~ 0
E24-12V
$Comp
L Transistor_BJT:BC547 Q500
U 1 1 5F31D034
P 8050 3100
F 0 "Q500" H 8240 3146 50  0000 L CNN
F 1 "BCY58" H 8240 3055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8250 3025 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8050 3100 50  0001 L CNN
F 4 "Center K" H 8050 3100 50  0001 C CNN "Notes"
	1    8050 3100
	1    0    0    -1  
$EndComp
Text GLabel 8250 6500 2    50   UnSpc ~ 0
E11-GND
Text GLabel 8250 3500 2    50   UnSpc ~ 0
E11-GND
Text GLabel 8250 8000 2    50   UnSpc ~ 0
E11-GND
$Comp
L Transistor_BJT:BC547 Q555
U 1 1 5F30D664
P 8050 7600
F 0 "Q555" H 8240 7646 50  0000 L CNN
F 1 "BCY58" H 8240 7555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8250 7525 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8050 7600 50  0001 L CNN
F 4 "Lower Center E" H 8050 7600 50  0001 C CNN "Notes"
	1    8050 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 6700 8150 6950
$Comp
L Device:R_US R565
U 1 1 5F30D657
P 8150 7100
F 0 "R565" H 8218 7146 50  0000 L CNN
F 1 "300" H 8218 7055 50  0000 L CNN
F 2 "Lower Center E" V 8190 7090 50  0001 C CNN
F 3 "~" H 8150 7100 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 8150 7100 50  0001 C CNN "Notes"
	1    8150 7100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC337 Q501
U 1 1 5F391AD6
P 9050 2900
F 0 "Q501" H 9240 2946 50  0000 L CNN
F 1 "BSX95" H 9240 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9250 2825 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 9050 2900 50  0001 L CNN
F 4 "Center Right K" H 9050 2900 50  0001 C CNN "Notes"
	1    9050 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3300 8150 3500
Wire Wire Line
	8150 4800 8150 5000
Wire Wire Line
	8150 6300 8150 6500
Wire Wire Line
	8150 2450 8150 2100
Wire Wire Line
	8150 7800 8150 8000
Wire Wire Line
	8850 2900 8150 2900
$Comp
L Transistor_BJT:BC337 Q504
U 1 1 5F3E4AE0
P 9050 4400
F 0 "Q504" H 9240 4446 50  0000 L CNN
F 1 "BSX95" H 9240 4355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9250 4325 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 9050 4400 50  0001 L CNN
F 4 "Center Right K" H 9050 4400 50  0001 C CNN "Notes"
	1    9050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4400 8150 4400
$Comp
L Transistor_BJT:BC337 Q551
U 1 1 5F3E970B
P 9050 5900
F 0 "Q551" H 9240 5946 50  0000 L CNN
F 1 "BSX95" H 9240 5855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9250 5825 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 9050 5900 50  0001 L CNN
F 4 "Center Right E" H 9050 5900 50  0001 C CNN "Notes"
	1    9050 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 5900 8150 5900
$Comp
L Transistor_BJT:BC337 Q554
U 1 1 5F3ED885
P 9050 7400
F 0 "Q554" H 9240 7446 50  0000 L CNN
F 1 "BSX95" H 9240 7355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9250 7325 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 9050 7400 50  0001 L CNN
F 4 "Lower Right E" H 9050 7400 50  0001 C CNN "Notes"
	1    9050 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 7400 8150 7400
$Comp
L Device:R_US R504
U 1 1 5F485A3E
P 10150 2700
F 0 "R504" V 9945 2700 50  0000 C CNN
F 1 "30" V 10036 2700 50  0000 C CNN
F 2 "Upper Center D wired out to Heat Sink" V 10190 2690 50  0001 C CNN
F 3 "~" H 10150 2700 50  0001 C CNN
F 4 "014 measured ceramic" H 10150 2700 50  0001 C CNN "Notes"
	1    10150 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R509
U 1 1 5F486B62
P 10150 3100
F 0 "R509" V 9945 3100 50  0000 C CNN
F 1 "820" V 10036 3100 50  0000 C CNN
F 2 "Lower Right K" V 10190 3090 50  0001 C CNN
F 3 "~" H 10150 3100 50  0001 C CNN
F 4 "Gr R Br Gd = 820Ω ±5%" H 10150 3100 50  0001 C CNN "Notes"
	1    10150 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R513
U 1 1 5F4877AC
P 10150 4200
F 0 "R513" V 9945 4200 50  0000 C CNN
F 1 "30" V 10036 4200 50  0000 C CNN
F 2 "Upper Left D wired out to Heat Sink" V 10190 4190 50  0001 C CNN
F 3 "~" H 10150 4200 50  0001 C CNN
F 4 "014 measured ceramic" H 10150 4200 50  0001 C CNN "Notes"
	1    10150 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R554
U 1 1 5F48863A
P 10150 5700
F 0 "R554" V 9945 5700 50  0000 C CNN
F 1 "30" V 10036 5700 50  0000 C CNN
F 2 "Upper Left D wired out to Heat Sink" V 10190 5690 50  0001 C CNN
F 3 "~" H 10150 5700 50  0001 C CNN
F 4 "014 measured ceramic" H 10150 5700 50  0001 C CNN "Notes"
	1    10150 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R563
U 1 1 5F489A58
P 10150 7200
F 0 "R563" V 9945 7200 50  0000 C CNN
F 1 "30" V 10036 7200 50  0000 C CNN
F 2 "Upper Right D-E Line wired out to Heat Sink" V 10190 7190 50  0001 C CNN
F 3 "~" H 10150 7200 50  0001 C CNN
F 4 "014 measured ceramic" H 10150 7200 50  0001 C CNN "Notes"
	1    10150 7200
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R559
U 1 1 5F48AD9A
P 10150 7600
F 0 "R559" V 9945 7600 50  0000 C CNN
F 1 "820" V 10036 7600 50  0000 C CNN
F 2 "Upper Right E" V 10190 7590 50  0001 C CNN
F 3 "~" H 10150 7600 50  0001 C CNN
F 4 "Gr R Br Gd = 820Ω ±5%" H 10150 7600 50  0001 C CNN "Notes"
	1    10150 7600
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 7600 9300 7600
Wire Wire Line
	9150 7200 10000 7200
Wire Wire Line
	9150 5700 10000 5700
Wire Wire Line
	9150 4200 10000 4200
Wire Wire Line
	9150 2700 10000 2700
$Comp
L Device:R_US R555
U 1 1 5F4AD72F
P 10650 5450
F 0 "R555" H 10718 5496 50  0000 L CNN
F 1 "27" H 10718 5405 50  0000 L CNN
F 2 "Upper Right D" V 10690 5440 50  0001 C CNN
F 3 "~" H 10650 5450 50  0001 C CNN
F 4 "R W Bk Gd = 27Ω ±5%" H 10650 5450 50  0001 C CNN "Notes"
	1    10650 5450
	1    0    0    -1  
$EndComp
Text GLabel 10750 3700 2    50   Input ~ 0
E24-12V
Wire Wire Line
	10650 5300 10650 5200
Text GLabel 10750 5200 2    50   Input ~ 0
E24-12V
Wire Wire Line
	9150 6100 9650 6100
Wire Wire Line
	9650 6100 9650 7600
Connection ~ 9650 7600
Wire Wire Line
	9650 7600 10000 7600
Text GLabel 12450 2100 2    50   Input ~ 0
E24-12V
Wire Wire Line
	11400 2500 12150 2500
Wire Wire Line
	12150 2500 12150 2650
Wire Wire Line
	12150 7600 10300 7600
Wire Wire Line
	11400 4000 12150 4000
Connection ~ 12150 4000
Wire Wire Line
	12150 4000 12150 5500
Wire Wire Line
	11400 5500 12150 5500
Connection ~ 12150 5500
Wire Wire Line
	12150 5500 12150 7000
Wire Wire Line
	11400 7000 12150 7000
Connection ~ 12150 7000
Wire Wire Line
	12150 7000 12150 7600
$Comp
L Device:C C500
U 1 1 5F191FD1
P 12650 3050
F 0 "C500" H 12765 3096 50  0000 L CNN
F 1 "6.8u" H 12765 3005 50  0000 L CNN
F 2 "Right D Line" H 12688 2900 50  0001 C CNN
F 3 "~" H 12650 3050 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 12650 3050 50  0001 C CNN "Notes"
	1    12650 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R508
U 1 1 5F193BA3
P 12650 3350
F 0 "R508" H 12718 3396 50  0000 L CNN
F 1 "6.8" H 12718 3305 50  0000 L CNN
F 2 "Left E-K Line" V 12690 3340 50  0001 C CNN
F 3 "~" H 12650 3350 50  0001 C CNN
F 4 "Bl Gr Gd Gd = 6.8Ω ±5%" H 12650 3350 50  0001 C CNN "Notes"
	1    12650 3350
	1    0    0    -1  
$EndComp
Text GLabel 12750 3500 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	11400 2900 12650 2900
$Comp
L Device:C C501
U 1 1 5F1A0F09
P 12650 4550
F 0 "C501" H 12765 4596 50  0000 L CNN
F 1 "6.8u" H 12765 4505 50  0000 L CNN
F 2 "Right D Line" H 12688 4400 50  0001 C CNN
F 3 "~" H 12650 4550 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 12650 4550 50  0001 C CNN "Notes"
	1    12650 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R510
U 1 1 5F1A0F13
P 12650 4850
F 0 "R510" H 12718 4896 50  0000 L CNN
F 1 "6.8" H 12718 4805 50  0000 L CNN
F 2 "Center Left K" V 12690 4840 50  0001 C CNN
F 3 "~" H 12650 4850 50  0001 C CNN
F 4 "Bl Gr Gd Gd = 6.8Ω ±5%" H 12650 4850 50  0001 C CNN "Notes"
	1    12650 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11400 4400 12650 4400
$Comp
L Device:C C550
U 1 1 5F1B5047
P 12650 6050
F 0 "C550" H 12765 6096 50  0000 L CNN
F 1 "6.8u" H 12765 6005 50  0000 L CNN
F 2 "Right K Line" H 12688 5900 50  0001 C CNN
F 3 "~" H 12650 6050 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 12650 6050 50  0001 C CNN "Notes"
	1    12650 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R558
U 1 1 5F1B5051
P 12650 6350
F 0 "R558" H 12718 6396 50  0000 L CNN
F 1 "6.8" H 12718 6305 50  0000 L CNN
F 2 "Upper Left K" V 12690 6340 50  0001 C CNN
F 3 "~" H 12650 6350 50  0001 C CNN
F 4 "Bl Gr Gd Gd = 6.8Ω ±5%" H 12650 6350 50  0001 C CNN "Notes"
	1    12650 6350
	1    0    0    -1  
$EndComp
Text GLabel 12750 6500 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	11400 5900 12650 5900
$Comp
L Device:C C551
U 1 1 5F1BC0B5
P 12650 7550
F 0 "C551" H 12765 7596 50  0000 L CNN
F 1 "6.8u" H 12765 7505 50  0000 L CNN
F 2 "Right K Line" H 12688 7400 50  0001 C CNN
F 3 "~" H 12650 7550 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 12650 7550 50  0001 C CNN "Notes"
	1    12650 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R560
U 1 1 5F1BC0BF
P 12650 7850
F 0 "R560" H 12718 7896 50  0000 L CNN
F 1 "6.8" H 12718 7805 50  0000 L CNN
F 2 "Center Left E" V 12690 7840 50  0001 C CNN
F 3 "~" H 12650 7850 50  0001 C CNN
F 4 "Bl Gr Gd Gd = 6.8Ω ±5%" H 12650 7850 50  0001 C CNN "Notes"
	1    12650 7850
	1    0    0    -1  
$EndComp
Text GLabel 12750 8000 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	11400 7400 12650 7400
Text GLabel 12750 5000 2    50   UnSpc ~ 0
E11-GND
Text GLabel 8250 5000 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	10300 3100 12150 3100
Connection ~ 12150 3100
Wire Wire Line
	12150 3100 12150 4000
$Comp
L Device:R_US R506
U 1 1 5F274A48
P 13900 2900
F 0 "R506" V 13695 2900 50  0000 C CNN
F 1 "6" V 13786 2900 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 13940 2890 50  0001 C CNN
F 3 "~" H 13900 2900 50  0001 C CNN
F 4 "014 measured ceramic" H 13900 2900 50  0001 C CNN "Notes"
	1    13900 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R507
U 1 1 5F277513
P 13900 3350
F 0 "R507" V 13695 3350 50  0000 C CNN
F 1 "6" V 13786 3350 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 13940 3340 50  0001 C CNN
F 3 "~" H 13900 3350 50  0001 C CNN
F 4 "014 measured ceramic" H 13900 3350 50  0001 C CNN "Notes"
	1    13900 3350
	0    1    1    0   
$EndComp
Connection ~ 12650 2900
Wire Wire Line
	14150 2900 14500 2900
$Comp
L Device:R_US R511
U 1 1 5F287875
P 13900 4400
F 0 "R511" V 13695 4400 50  0000 C CNN
F 1 "6" V 13786 4400 50  0000 C CNN
F 2 "Upper A-B Line wired out to Heat Sink" V 13940 4390 50  0001 C CNN
F 3 "~" H 13900 4400 50  0001 C CNN
F 4 "014 measured ceramic" H 13900 4400 50  0001 C CNN "Notes"
	1    13900 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R512
U 1 1 5F28787F
P 13900 4850
F 0 "R512" V 13695 4850 50  0000 C CNN
F 1 "6" V 13786 4850 50  0000 C CNN
F 2 "Upper A-B Line wired out to Heat Sink" V 13940 4840 50  0001 C CNN
F 3 "~" H 13900 4850 50  0001 C CNN
F 4 "014 measured ceramic" H 13900 4850 50  0001 C CNN "Notes"
	1    13900 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	12650 4400 13650 4400
Wire Wire Line
	14150 4400 14500 4400
Connection ~ 12650 4400
$Comp
L Device:R_US R556
U 1 1 5F28F6CC
P 13900 5900
F 0 "R556" V 13695 5900 50  0000 C CNN
F 1 "6" V 13786 5900 50  0000 C CNN
F 2 "Upper A-B Line wired out to Heat Sink" V 13940 5890 50  0001 C CNN
F 3 "~" H 13900 5900 50  0001 C CNN
F 4 "014 measured ceramic" H 13900 5900 50  0001 C CNN "Notes"
	1    13900 5900
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R557
U 1 1 5F28F6D6
P 13900 6400
F 0 "R557" V 13695 6400 50  0000 C CNN
F 1 "6" V 13786 6400 50  0000 C CNN
F 2 "Upper A-B Line wired out to Heat Sink" V 13940 6390 50  0001 C CNN
F 3 "~" H 13900 6400 50  0001 C CNN
F 4 "014 measured ceramic" H 13900 6400 50  0001 C CNN "Notes"
	1    13900 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	12650 5900 13650 5900
Wire Wire Line
	14150 5900 14500 5900
Connection ~ 12650 5900
$Comp
L Device:R_US R561
U 1 1 5F297AE8
P 13900 7400
F 0 "R561" V 13695 7400 50  0000 C CNN
F 1 "6" V 13786 7400 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 13940 7390 50  0001 C CNN
F 3 "~" H 13900 7400 50  0001 C CNN
F 4 "R501 on Peter's - 014 measured ceramic" H 13900 7400 50  0001 C CNN "Notes"
	1    13900 7400
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R562
U 1 1 5F297AF2
P 13900 7900
F 0 "R562" V 13695 7900 50  0000 C CNN
F 1 "6" V 13786 7900 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 13940 7890 50  0001 C CNN
F 3 "~" H 13900 7900 50  0001 C CNN
F 4 "R502 on Peter's - 014 measured ceramic" H 13900 7900 50  0001 C CNN "Notes"
	1    13900 7900
	0    1    1    0   
$EndComp
Wire Wire Line
	12650 7400 13650 7400
Wire Wire Line
	14150 7400 14500 7400
Connection ~ 12650 7400
Text GLabel 14850 7400 2    50   Output ~ 0
E6-INJ7_2
Text GLabel 14850 5900 2    50   Output ~ 0
E4-INJ4_8
Text GLabel 14850 4400 2    50   Output ~ 0
E5-INJ6_3
Text GLabel 14850 2900 2    50   Output ~ 0
E3-INJ1_5
$Comp
L Device:R_US R505
U 1 1 5F4AB10D
P 10650 2400
F 0 "R505" H 10718 2446 50  0000 L CNN
F 1 "27" H 10718 2355 50  0000 L CNN
F 2 "Upper Right D" V 10690 2390 50  0001 C CNN
F 3 "~" H 10650 2400 50  0001 C CNN
F 4 "R W Bk Gd = 27Ω ±5%" H 10650 2400 50  0001 C CNN "Notes"
	1    10650 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 2250 10650 2100
Wire Wire Line
	10650 3800 10650 3700
Wire Wire Line
	10650 3700 10750 3700
Wire Wire Line
	10650 5200 10750 5200
Wire Wire Line
	8150 3500 8250 3500
Wire Wire Line
	8150 6500 8250 6500
Wire Wire Line
	8150 5000 8250 5000
Wire Wire Line
	8150 2100 8250 2100
Wire Wire Line
	8150 5200 8250 5200
Wire Wire Line
	8150 8000 8250 8000
Wire Wire Line
	12650 3500 12750 3500
Wire Wire Line
	12650 6500 12750 6500
Wire Wire Line
	8150 6700 8250 6700
Wire Wire Line
	8150 3700 8250 3700
$Comp
L Device:R_US R501
U 1 1 5F337836
P 7400 3100
F 0 "R501" V 7195 3100 50  0000 C CNN
F 1 "3k9" V 7286 3100 50  0000 C CNN
F 2 "Lower Right J" V 7440 3090 50  0001 C CNN
F 3 "~" H 7400 3100 50  0001 C CNN
F 4 "O W R Gd = 3.9KΩ ±5%" H 7400 3100 50  0001 C CNN "Notes"
	1    7400 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R517
U 1 1 5F335038
P 7400 4600
F 0 "R517" V 7195 4600 50  0000 C CNN
F 1 "3k9" V 7286 4600 50  0000 C CNN
F 2 "Lower Right J" V 7440 4590 50  0001 C CNN
F 3 "~" H 7400 4600 50  0001 C CNN
F 4 "O W R Gd = 3.9KΩ ±5%" H 7400 4600 50  0001 C CNN "Notes"
	1    7400 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R551
U 1 1 5F32FCCB
P 7400 6100
F 0 "R551" V 7195 6100 50  0000 C CNN
F 1 "3k9" V 7286 6100 50  0000 C CNN
F 2 "Upper Left D" V 7440 6090 50  0001 C CNN
F 3 "~" H 7400 6100 50  0001 C CNN
F 4 "O W R Gd = 3.9KΩ ±5%" H 7400 6100 50  0001 C CNN "Notes"
	1    7400 6100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R567
U 1 1 5F32957C
P 7400 7600
F 0 "R567" V 7195 7600 50  0000 C CNN
F 1 "3k9" V 7286 7600 50  0000 C CNN
F 2 "Upper Right C" V 7440 7590 50  0001 C CNN
F 3 "~" H 7400 7600 50  0001 C CNN
F 4 "O W R Gd = 3.9KΩ ±5%" H 7400 7600 50  0001 C CNN "Notes"
	1    7400 7600
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 4600 7250 4600
Wire Wire Line
	6900 6100 7250 6100
Wire Wire Line
	6950 7600 7250 7600
Wire Wire Line
	8150 2750 8150 2900
Connection ~ 8150 2900
Wire Wire Line
	8150 4250 8150 4400
Connection ~ 8150 4400
Wire Wire Line
	10300 2700 10650 2700
Wire Wire Line
	10650 2550 10650 2700
Connection ~ 10650 2700
Wire Wire Line
	10650 2700 11100 2700
$Comp
L Device:R_US R514
U 1 1 5F4ABE6C
P 10650 3950
F 0 "R514" H 10718 3996 50  0000 L CNN
F 1 "27" H 10718 3905 50  0000 L CNN
F 2 "Upper Center D" V 10690 3940 50  0001 C CNN
F 3 "~" H 10650 3950 50  0001 C CNN
F 4 "R W Bk Gd = 27Ω ±5%" H 10650 3950 50  0001 C CNN "Notes"
	1    10650 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4200 10650 4200
Wire Wire Line
	10650 4100 10650 4200
Connection ~ 10650 4200
Wire Wire Line
	12650 2900 13650 2900
Wire Wire Line
	13750 2900 13650 2900
Connection ~ 13650 2900
Wire Wire Line
	14050 2900 14150 2900
Connection ~ 14150 2900
Wire Wire Line
	13650 3350 13750 3350
Wire Wire Line
	13650 2900 13650 3350
Wire Wire Line
	14050 3350 14150 3350
Wire Wire Line
	14150 2900 14150 3350
Wire Wire Line
	13650 4400 13750 4400
Connection ~ 13650 4400
Wire Wire Line
	14050 4400 14150 4400
Connection ~ 14150 4400
Wire Wire Line
	13650 4850 13750 4850
Wire Wire Line
	13650 4400 13650 4850
Wire Wire Line
	14050 4850 14150 4850
Wire Wire Line
	14150 4400 14150 4850
Wire Wire Line
	10650 6700 10750 6700
Text GLabel 10750 6700 2    50   Input ~ 0
E24-12V
Wire Wire Line
	10650 6800 10650 6700
$Comp
L Device:R_US R564
U 1 1 5F4AE4B9
P 10650 6950
F 0 "R564" H 10718 6996 50  0000 L CNN
F 1 "27" H 10718 6905 50  0000 L CNN
F 2 "Upper Left E" V 10690 6940 50  0001 C CNN
F 3 "~" H 10650 6950 50  0001 C CNN
F 4 "R W Bk Gd = 27Ω ±5%" H 10650 6950 50  0001 C CNN "Notes"
	1    10650 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 7200 10650 7200
Wire Wire Line
	10300 5700 10650 5700
Wire Wire Line
	10650 5600 10650 5700
Connection ~ 10650 5700
Wire Wire Line
	10650 5700 11100 5700
Wire Wire Line
	10650 7100 10650 7200
Connection ~ 10650 7200
Wire Wire Line
	10650 7200 11100 7200
Wire Wire Line
	13650 5900 13750 5900
Connection ~ 13650 5900
Wire Wire Line
	14050 5900 14150 5900
Connection ~ 14150 5900
Wire Wire Line
	13650 6400 13750 6400
Wire Wire Line
	13650 5900 13650 6400
Wire Wire Line
	14050 6400 14150 6400
Wire Wire Line
	14150 5900 14150 6400
Wire Wire Line
	13650 7400 13750 7400
Connection ~ 13650 7400
Wire Wire Line
	14050 7400 14150 7400
Connection ~ 14150 7400
Wire Wire Line
	14050 7900 14150 7900
Wire Wire Line
	14150 7400 14150 7900
Wire Wire Line
	13650 7900 13750 7900
Wire Wire Line
	13650 7400 13650 7900
Connection ~ 12650 5000
Wire Wire Line
	12650 5000 12750 5000
Wire Wire Line
	8150 7250 8150 7400
Connection ~ 8150 7400
Wire Wire Line
	8150 5450 8150 5200
$Comp
L Device:R_US R553
U 1 1 5F312CFD
P 8150 5600
F 0 "R553" H 8218 5646 50  0000 L CNN
F 1 "300" H 8218 5555 50  0000 L CNN
F 2 "Lower Right E" V 8190 5590 50  0001 C CNN
F 3 "~" H 8150 5600 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 8150 5600 50  0001 C CNN "Notes"
	1    8150 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5750 8150 5900
Connection ~ 8150 5900
Wire Wire Line
	6900 3100 7250 3100
Wire Wire Line
	7550 6100 7850 6100
Wire Wire Line
	7550 7600 7850 7600
Wire Wire Line
	7550 3100 7850 3100
Wire Wire Line
	7550 4600 7850 4600
Text GLabel 6900 3100 0    50   Input ~ 0
IN_INJ1_5
Text GLabel 6900 4600 0    50   Input ~ 0
IN_INJ6_3
Text GLabel 6900 6100 0    50   Input ~ 0
IN_INJ4_8
Text GLabel 6950 7600 0    50   Input ~ 0
IN_INJ7_2
Wire Wire Line
	9850 5000 12650 5000
Wire Wire Line
	12150 2650 12350 2650
Connection ~ 12150 2650
Wire Wire Line
	12150 2650 12150 3100
Wire Wire Line
	10650 2100 12350 2100
Wire Wire Line
	12350 2100 12350 2250
Connection ~ 12350 2100
Wire Wire Line
	12350 2100 12450 2100
Wire Bus Line
	12350 2100 12450 2100
Wire Wire Line
	9300 7600 9300 7650
Connection ~ 9300 7600
Wire Wire Line
	9300 7600 9650 7600
Connection ~ 12650 8000
Wire Wire Line
	12650 8000 12750 8000
Text GLabel 1900 3900 2    50   Input ~ 0
IN_INJ1_5
Text GLabel 2700 3750 2    50   Input ~ 0
IN_INJ6_3
Text GLabel 3500 3500 2    50   Input ~ 0
IN_INJ4_8
Text GLabel 4350 3250 2    50   Input ~ 0
IN_INJ7_2
$Comp
L Simulation_SPICE:DIODE D3
U 1 1 6057ACE0
P 12350 2400
F 0 "D3" V 12304 2480 50  0000 L CNN
F 1 "DIODE" V 12395 2480 50  0000 L CNN
F 2 "" H 12350 2400 50  0001 C CNN
F 3 "~" H 12350 2400 50  0001 C CNN
F 4 "Y" H 12350 2400 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 12350 2400 50  0001 L CNN "Spice_Primitive"
	1    12350 2400
	0    1    1    0   
$EndComp
$Comp
L Simulation_SPICE:DIODE D2
U 1 1 6057B49A
P 9850 4750
F 0 "D2" V 9804 4830 50  0000 L CNN
F 1 "DIODE" V 9895 4830 50  0000 L CNN
F 2 "" H 9850 4750 50  0001 C CNN
F 3 "~" H 9850 4750 50  0001 C CNN
F 4 "Y" H 9850 4750 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 9850 4750 50  0001 L CNN "Spice_Primitive"
	1    9850 4750
	0    1    1    0   
$EndComp
$Comp
L Simulation_SPICE:DIODE D1
U 1 1 6057B7D9
P 9300 7800
F 0 "D1" V 9254 7880 50  0000 L CNN
F 1 "DIODE" V 9345 7880 50  0000 L CNN
F 2 "" H 9300 7800 50  0001 C CNN
F 3 "~" H 9300 7800 50  0001 C CNN
F 4 "Y" H 9300 7800 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 9300 7800 50  0001 L CNN "Spice_Primitive"
	1    9300 7800
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 8000 9300 7950
Wire Wire Line
	9300 8000 12650 8000
Wire Wire Line
	9850 4900 9850 5000
Wire Wire Line
	12350 2550 12350 2650
Text Notes 2050 5300 0    50   ~ 0
.model DIODE D\n.model BCY58 npn\n.model BSX95 npn\n.model AUY21 pnp\n.tran 1ms 420ms 120m
Wire Wire Line
	9150 3100 9850 3100
Wire Wire Line
	9150 4600 9850 4600
$Comp
L Device:Q_PNP_CBE Q502
U 1 1 605ABD59
P 11300 2700
F 0 "Q502" H 11491 2654 50  0000 L CNN
F 1 "AUY21" H 11491 2745 50  0000 L CNN
F 2 "" H 11500 2800 50  0001 C CNN
F 3 "~" H 11300 2700 50  0001 C CNN
	1    11300 2700
	1    0    0    1   
$EndComp
Wire Wire Line
	10650 4200 11100 4200
$Comp
L Device:Q_PNP_CBE Q503
U 1 1 605AD57F
P 11300 4200
F 0 "Q503" H 11491 4154 50  0000 L CNN
F 1 "AUY21" H 11491 4245 50  0000 L CNN
F 2 "" H 11500 4300 50  0001 C CNN
F 3 "~" H 11300 4200 50  0001 C CNN
	1    11300 4200
	1    0    0    1   
$EndComp
$Comp
L Device:Q_PNP_CBE Q552
U 1 1 605AF76F
P 11300 5700
F 0 "Q552" H 11491 5654 50  0000 L CNN
F 1 "AUY21" H 11491 5745 50  0000 L CNN
F 2 "" H 11500 5800 50  0001 C CNN
F 3 "~" H 11300 5700 50  0001 C CNN
	1    11300 5700
	1    0    0    1   
$EndComp
$Comp
L Device:Q_PNP_CBE Q553
U 1 1 605B07E1
P 11300 7200
F 0 "Q553" H 11491 7154 50  0000 L CNN
F 1 "AUY21" H 11491 7245 50  0000 L CNN
F 2 "" H 11500 7300 50  0001 C CNN
F 3 "~" H 11300 7200 50  0001 C CNN
	1    11300 7200
	1    0    0    1   
$EndComp
Text GLabel 1250 4750 3    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	1250 3750 1250 4050
Text GLabel 1250 3100 1    50   Input ~ 0
E24-12V
$Comp
L Simulation_SPICE:VDC V1
U 1 1 604E83CA
P 1250 4250
F 0 "V1" H 1380 4341 50  0000 L CNN
F 1 "12" H 1380 4250 50  0000 L CNN
F 2 "" H 1250 4250 50  0001 C CNN
F 3 "~" H 1250 4250 50  0001 C CNN
F 4 "Y" H 1250 4250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1250 4250 50  0001 L CNN "Spice_Primitive"
F 6 "dc(12)" H 1380 4159 50  0000 L CNN "Spice_Model"
	1    1250 4250
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L1
U 1 1 604ECB0B
P 14950 3350
F 0 "L1" H 14950 3565 50  0000 C CNN
F 1 "3.77mH" H 14950 3474 50  0000 C CNN
F 2 "" H 14950 3350 50  0001 C CNN
F 3 "~" H 14950 3350 50  0001 C CNN
	1    14950 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 604ED3F7
P 15500 3350
F 0 "R2" V 15295 3350 50  0000 C CNN
F 1 "2.6" V 15386 3350 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 15540 3340 50  0001 C CNN
F 3 "~" H 15500 3350 50  0001 C CNN
F 4 "014 measured ceramic" H 15500 3350 50  0001 C CNN "Notes"
	1    15500 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	14700 3350 14500 3350
Wire Wire Line
	14500 3350 14500 2900
Connection ~ 14500 2900
Wire Wire Line
	14500 2900 14850 2900
Wire Wire Line
	15200 3350 15350 3350
Text GLabel 15800 3950 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	15800 3350 15650 3350
$Comp
L pspice:INDUCTOR L2
U 1 1 60501C75
P 14950 4850
F 0 "L2" H 14950 5065 50  0000 C CNN
F 1 "3.77mH" H 14950 4974 50  0000 C CNN
F 2 "" H 14950 4850 50  0001 C CNN
F 3 "~" H 14950 4850 50  0001 C CNN
	1    14950 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 60501C7C
P 15500 4850
F 0 "R3" V 15295 4850 50  0000 C CNN
F 1 "2.6" V 15386 4850 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 15540 4840 50  0001 C CNN
F 3 "~" H 15500 4850 50  0001 C CNN
F 4 "014 measured ceramic" H 15500 4850 50  0001 C CNN "Notes"
	1    15500 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	14700 4850 14500 4850
Wire Wire Line
	14500 4850 14500 4400
Wire Wire Line
	15200 4850 15350 4850
Text GLabel 15800 4850 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	15800 4850 15650 4850
$Comp
L pspice:INDUCTOR L3
U 1 1 60509157
P 14950 6350
F 0 "L3" H 14950 6565 50  0000 C CNN
F 1 "3.77mH" H 14950 6474 50  0000 C CNN
F 2 "" H 14950 6350 50  0001 C CNN
F 3 "~" H 14950 6350 50  0001 C CNN
	1    14950 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 6050915E
P 15500 6350
F 0 "R4" V 15295 6350 50  0000 C CNN
F 1 "2.6" V 15386 6350 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 15540 6340 50  0001 C CNN
F 3 "~" H 15500 6350 50  0001 C CNN
F 4 "014 measured ceramic" H 15500 6350 50  0001 C CNN "Notes"
	1    15500 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	14700 6350 14500 6350
Wire Wire Line
	14500 6350 14500 5900
Wire Wire Line
	15200 6350 15350 6350
Text GLabel 15800 6350 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	15800 6350 15650 6350
$Comp
L pspice:INDUCTOR L4
U 1 1 60510949
P 14950 7850
F 0 "L4" H 14950 8065 50  0000 C CNN
F 1 "3.77mH" H 14950 7974 50  0000 C CNN
F 2 "" H 14950 7850 50  0001 C CNN
F 3 "~" H 14950 7850 50  0001 C CNN
	1    14950 7850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 60510950
P 15500 7850
F 0 "R5" V 15295 7850 50  0000 C CNN
F 1 "2.6" V 15386 7850 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 15540 7840 50  0001 C CNN
F 3 "~" H 15500 7850 50  0001 C CNN
F 4 "014 measured ceramic" H 15500 7850 50  0001 C CNN "Notes"
	1    15500 7850
	0    1    1    0   
$EndComp
Wire Wire Line
	14700 7850 14500 7850
Wire Wire Line
	14500 7850 14500 7400
Wire Wire Line
	15200 7850 15350 7850
Text GLabel 15800 7850 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	15800 7850 15650 7850
Wire Wire Line
	9850 4600 9850 3100
Connection ~ 9850 4600
Connection ~ 9850 3100
Wire Wire Line
	9850 3100 10000 3100
Text GLabel 1450 4600 3    50   Input ~ 0
0
$Comp
L Simulation_SPICE:VPULSE V2
U 1 1 605351C4
P 1900 4250
F 0 "V2" H 2030 4341 50  0000 L CNN
F 1 "VPULSE" H 2030 4250 50  0000 L CNN
F 2 "" H 1900 4250 50  0001 C CNN
F 3 "~" H 1900 4250 50  0001 C CNN
F 4 "Y" H 1900 4250 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1900 4250 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 5 2n 2n 2n 95ms 100ms)" H 2030 4159 50  0000 L CNN "Spice_Model"
	1    1900 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4600 1900 4450
Wire Wire Line
	1900 3900 1900 4050
Connection ~ 14500 4400
Wire Wire Line
	14500 4400 14850 4400
Connection ~ 14500 5900
Wire Wire Line
	14500 5900 14850 5900
Connection ~ 14500 7400
Wire Wire Line
	14500 7400 14850 7400
$Comp
L Simulation_SPICE:VPULSE V4
U 1 1 604FE76E
P 2700 4050
F 0 "V4" H 2830 4141 50  0000 L CNN
F 1 "VPULSE" H 2830 4050 50  0000 L CNN
F 2 "" H 2700 4050 50  0001 C CNN
F 3 "~" H 2700 4050 50  0001 C CNN
F 4 "Y" H 2700 4050 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 2700 4050 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 5 25ms 2n 2n 95ms 100ms)" H 2830 3959 50  0000 L CNN "Spice_Model"
	1    2700 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4250 2700 4600
Wire Wire Line
	2700 4600 1900 4600
Wire Wire Line
	2700 3750 2700 3850
$Comp
L Simulation_SPICE:VPULSE V3
U 1 1 6051C9EF
P 3500 3800
F 0 "V3" H 3630 3891 50  0000 L CNN
F 1 "VPULSE" H 3630 3800 50  0000 L CNN
F 2 "" H 3500 3800 50  0001 C CNN
F 3 "~" H 3500 3800 50  0001 C CNN
F 4 "Y" H 3500 3800 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 3500 3800 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 5 50ms 2n 2n 95ms 100ms)" H 3630 3709 50  0000 L CNN "Spice_Model"
	1    3500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4000 3500 4600
Wire Wire Line
	3500 4600 2700 4600
Connection ~ 2700 4600
Wire Wire Line
	3500 3500 3500 3600
$Comp
L Simulation_SPICE:VPULSE V5
U 1 1 6053457D
P 4350 3550
F 0 "V5" H 4480 3641 50  0000 L CNN
F 1 "VPULSE" H 4480 3550 50  0000 L CNN
F 2 "" H 4350 3550 50  0001 C CNN
F 3 "~" H 4350 3550 50  0001 C CNN
F 4 "Y" H 4350 3550 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 4350 3550 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 5 75ms 2n 2n 95ms 100ms)" H 4480 3459 50  0000 L CNN "Spice_Model"
	1    4350 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3750 4350 4600
Wire Wire Line
	4350 4600 3500 4600
Connection ~ 3500 4600
Wire Wire Line
	4350 3250 4350 3350
Wire Wire Line
	1250 4450 1250 4600
Connection ~ 1900 4600
Wire Wire Line
	1250 4600 1900 4600
Connection ~ 1250 4600
Wire Wire Line
	1250 4600 1250 4750
$Comp
L Simulation_SPICE:VDC VBOGUS
U 1 1 6056FD5A
P 1250 3550
F 0 "VBOGUS" H 1380 3641 50  0000 L CNN
F 1 "0" H 1380 3550 50  0000 L CNN
F 2 "" H 1250 3550 50  0001 C CNN
F 3 "~" H 1250 3550 50  0001 C CNN
F 4 "Y" H 1250 3550 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1250 3550 50  0001 L CNN "Spice_Primitive"
F 6 "dc(0)" H 1380 3459 50  0000 L CNN "Spice_Model"
	1    1250 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1250 3100 1250 3350
$Comp
L Simulation_SPICE:VDC VINJBOGUS
U 1 1 60581E00
P 15800 3650
F 0 "VINJBOGUS" H 15930 3741 50  0000 L CNN
F 1 "0" H 15930 3650 50  0000 L CNN
F 2 "" H 15800 3650 50  0001 C CNN
F 3 "~" H 15800 3650 50  0001 C CNN
F 4 "Y" H 15800 3650 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 15800 3650 50  0001 L CNN "Spice_Primitive"
F 6 "dc(0)" H 15930 3559 50  0000 L CNN "Spice_Model"
	1    15800 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	15800 3350 15800 3450
Wire Wire Line
	15800 3850 15800 3950
$EndSCHEMATC
