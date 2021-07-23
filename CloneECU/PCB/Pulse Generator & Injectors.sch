EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 2 6
Title "R/C107 D-Jetronic ECU Clone"
Date "2021-07-23"
Rev "1.00"
Comp ""
Comment1 "M117.982 Engine"
Comment2 "Clone of Bosch # 0 280 002 005"
Comment3 "Clone of Mercedes-Benz Part # A 000 545 26 32"
Comment4 "Main Board 2 288 300 028"
$EndDescr
Wire Bus Line
	4400 2000 4600 2000
Text GLabel 1700 7500 0    50   Input ~ 0
E13-PG
Text GLabel 1700 6000 0    50   Input ~ 0
E14-PG
Text GLabel 1700 4500 0    50   Input ~ 0
E21-PG
$Comp
L Device:D D701
U 1 1 5F12D7EC
P 2850 4500
F 0 "D701" H 2850 4300 50  0000 C CNN
F 1 "D" H 2850 4374 50  0001 C CNN
F 2 "Center G" H 2850 4500 50  0001 C CNN
F 3 "~" H 2850 4500 50  0001 C CNN
	1    2850 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R700
U 1 1 5F14CE0D
P 2550 3000
F 0 "R700" V 2345 3000 50  0000 C CNN
F 1 "3K" V 2436 3000 50  0000 C CNN
F 2 "Center Right F" V 2590 2990 50  0001 C CNN
F 3 "~" H 2550 3000 50  0001 C CNN
F 4 "O Bk R Gd = 3KΩ ±5%" H 2550 3000 50  0001 C CNN "Notes"
	1    2550 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R701
U 1 1 5F14F9E0
P 2550 3500
F 0 "R701" V 2345 3500 50  0000 C CNN
F 1 "3K" V 2436 3500 50  0000 C CNN
F 2 "Upper Left F" V 2590 3490 50  0001 C CNN
F 3 "~" H 2550 3500 50  0001 C CNN
F 4 "O Bk R Gd = 3KΩ ±5%" H 2550 3500 50  0001 C CNN "Notes"
	1    2550 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R704
U 1 1 5F152EA0
P 3200 3250
F 0 "R704" H 3268 3296 50  0000 L CNN
F 1 "300" H 3268 3205 50  0000 L CNN
F 2 "Center G" V 3240 3240 50  0001 C CNN
F 3 "~" H 3200 3250 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 3200 3250 50  0001 C CNN "Notes"
	1    3200 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R708
U 1 1 5F153BE8
P 2550 4000
F 0 "R708" V 2345 4000 50  0000 C CNN
F 1 "3K" V 2436 4000 50  0000 C CNN
F 2 "Center F" V 2590 3990 50  0001 C CNN
F 3 "~" H 2550 4000 50  0001 C CNN
F 4 "O Bk R Gd = 3KΩ ±5%" H 2550 4000 50  0001 C CNN "Notes"
	1    2550 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R707
U 1 1 5F15657F
P 2550 4500
F 0 "R707" V 2345 4500 50  0000 C CNN
F 1 "3K" V 2436 4500 50  0000 C CNN
F 2 "Center F" V 2590 4490 50  0001 C CNN
F 3 "~" H 2550 4500 50  0001 C CNN
F 4 "O Bk R Gd = 3KΩ ±5%" H 2550 4500 50  0001 C CNN "Notes"
	1    2550 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R709
U 1 1 5F15704F
P 2550 6000
F 0 "R709" V 2755 6000 50  0000 C CNN
F 1 "3K" V 2664 6000 50  0000 C CNN
F 2 "Upper Right G" V 2590 5990 50  0001 C CNN
F 3 "~" H 2550 6000 50  0001 C CNN
F 4 "O Bk R Gd = 3KΩ ±5%" H 2550 6000 50  0001 C CNN "Notes"
	1    2550 6000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R710
U 1 1 5F159E96
P 2550 6500
F 0 "R710" V 2755 6500 50  0000 C CNN
F 1 "3K" V 2664 6500 50  0000 C CNN
F 2 "Upper G-H Line" V 2590 6490 50  0001 C CNN
F 3 "~" H 2550 6500 50  0001 C CNN
F 4 "O Bk R Gd = 3KΩ ±5%" H 2550 6500 50  0001 C CNN "Notes"
	1    2550 6500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R717
U 1 1 5F15C447
P 2550 7000
F 0 "R717" V 2755 7000 50  0000 C CNN
F 1 "3K" V 2664 7000 50  0000 C CNN
F 2 "Upper Right G" V 2590 6990 50  0001 C CNN
F 3 "~" H 2550 7000 50  0001 C CNN
F 4 "O Bk R Gd = 3KΩ ±5%" H 2550 7000 50  0001 C CNN "Notes"
	1    2550 7000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R718
U 1 1 5F15E9C2
P 2550 7500
F 0 "R718" V 2755 7500 50  0000 C CNN
F 1 "3K" V 2664 7500 50  0000 C CNN
F 2 "Upper Right G" V 2590 7490 50  0001 C CNN
F 3 "~" H 2550 7500 50  0001 C CNN
F 4 "O Bk R Gd = 3KΩ ±5%" H 2550 7500 50  0001 C CNN "Notes"
	1    2550 7500
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D700
U 1 1 5F12720D
P 2850 3000
F 0 "D700" H 2850 2800 50  0000 C CNN
F 1 "D" H 2850 2874 50  0001 C CNN
F 2 "Center G" H 2850 3000 50  0001 C CNN
F 3 "~" H 2850 3000 50  0001 C CNN
	1    2850 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C700
U 1 1 5F12CA54
P 3200 3750
F 0 "C700" H 3315 3796 50  0000 L CNN
F 1 "2n2" H 3315 3705 50  0000 L CNN
F 2 "Center Right G" H 3238 3600 50  0001 C CNN
F 3 "~" H 3200 3750 50  0001 C CNN
	1    3200 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R706
U 1 1 5F18B524
P 3700 4650
F 0 "R706" H 3768 4696 50  0000 L CNN
F 1 "180K" H 3768 4605 50  0000 L CNN
F 2 "Center Left H" V 3740 4640 50  0001 C CNN
F 3 "~" H 3700 4650 50  0001 C CNN
F 4 "Br Gr Y Gd = 180KΩ ±5%" H 3700 4650 50  0001 C CNN "Notes"
	1    3700 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3000 2200 3500
Wire Wire Line
	2200 3500 2400 3500
Wire Wire Line
	1700 3000 2200 3000
Connection ~ 2200 3000
Wire Wire Line
	2200 3000 2400 3000
Wire Wire Line
	2200 4500 2200 4000
Wire Wire Line
	2200 4000 2400 4000
Wire Wire Line
	1700 4500 2200 4500
Connection ~ 2200 4500
Wire Wire Line
	2200 4500 2400 4500
Wire Wire Line
	1700 6000 2200 6000
Wire Wire Line
	2200 6000 2200 6500
Wire Wire Line
	2200 6500 2400 6500
Connection ~ 2200 6000
Wire Wire Line
	2200 6000 2400 6000
Wire Wire Line
	1700 7500 2200 7500
Wire Wire Line
	2200 7500 2200 7000
Wire Wire Line
	2200 7000 2400 7000
Connection ~ 2200 7500
Wire Wire Line
	2200 7500 2400 7500
$Comp
L Device:R_US R828
U 1 1 5F1F2D68
P 5750 2800
F 0 "R828" V 5545 2800 50  0000 C CNN
F 1 "10K" V 5636 2800 50  0000 C CNN
F 2 "Upper Right J" V 5790 2790 50  0001 C CNN
F 3 "~" H 5750 2800 50  0001 C CNN
F 4 "Br Bk O Gd = 10KΩ ±5%" H 5750 2800 50  0001 C CNN "Notes"
	1    5750 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 3500 3700 3500
Wire Wire Line
	3700 3500 3700 4300
Wire Wire Line
	3700 4300 4500 4300
Connection ~ 4500 4300
Wire Wire Line
	3000 4500 3200 4500
Wire Wire Line
	3200 3900 3200 4500
Connection ~ 3200 4500
Wire Wire Line
	3200 4500 3700 4500
Wire Wire Line
	2700 4000 4200 4000
Wire Wire Line
	3700 4500 4200 4500
Connection ~ 3700 4500
Wire Wire Line
	3200 3400 3200 3600
Wire Wire Line
	4500 4700 4500 4800
$Comp
L Device:R_US R823
U 1 1 5F213658
P 5750 4300
F 0 "R823" V 5545 4300 50  0000 C CNN
F 1 "10K" V 5636 4300 50  0000 C CNN
F 2 "Center J" V 5790 4290 50  0001 C CNN
F 3 "~" H 5750 4300 50  0001 C CNN
F 4 "R822 on Peter's labeled picture - Br Bk O Gd = 10KΩ ±5%" H 5750 4300 50  0001 C CNN "Notes"
	1    5750 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 4300 5500 4300
$Comp
L Device:D D703
U 1 1 5F21F40A
P 2850 7500
F 0 "D703" H 2850 7300 50  0000 C CNN
F 1 "D" H 2850 7374 50  0001 C CNN
F 2 "Upper G-H Line" H 2850 7500 50  0001 C CNN
F 3 "~" H 2850 7500 50  0001 C CNN
	1    2850 7500
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R713
U 1 1 5F21F414
P 3200 6250
F 0 "R713" H 3268 6296 50  0000 L CNN
F 1 "300" H 3268 6205 50  0000 L CNN
F 2 "Upper Center H" V 3240 6240 50  0001 C CNN
F 3 "~" H 3200 6250 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 3200 6250 50  0001 C CNN "Notes"
	1    3200 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R711
U 1 1 5F21F41E
P 3700 6150
F 0 "R711" H 3768 6196 50  0000 L CNN
F 1 "180K" H 3768 6105 50  0000 L CNN
F 2 "Upper Left H" V 3740 6140 50  0001 C CNN
F 3 "~" H 3700 6150 50  0001 C CNN
F 4 "Br Gr Y Gd = 180KΩ ±5%" H 3700 6150 50  0001 C CNN "Notes"
	1    3700 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:D D702
U 1 1 5F21F428
P 2850 6000
F 0 "D702" H 2850 5800 50  0000 C CNN
F 1 "D" H 2850 5874 50  0001 C CNN
F 2 "Upper G-H Line" H 2850 6000 50  0001 C CNN
F 3 "~" H 2850 6000 50  0001 C CNN
	1    2850 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C701
U 1 1 5F21F432
P 3200 6750
F 0 "C701" H 3315 6796 50  0000 L CNN
F 1 "2n2" H 3315 6705 50  0000 L CNN
F 2 "Lower Center C" H 3238 6600 50  0001 C CNN
F 3 "~" H 3200 6750 50  0001 C CNN
	1    3200 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R715
U 1 1 5F21F43C
P 3700 7650
F 0 "R715" H 3768 7696 50  0000 L CNN
F 1 "180k" H 3768 7605 50  0000 L CNN
F 2 "Left H-C Line" V 3740 7640 50  0001 C CNN
F 3 "~" H 3700 7650 50  0001 C CNN
F 4 "R713 on Peter's schematic - Br Gr Y Gd = 180KΩ ±5%" H 3700 7650 50  0001 C CNN "Notes"
	1    3700 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6000 4200 6000
Connection ~ 3700 6000
$Comp
L Device:R_US R712
U 1 1 5F21F469
P 4500 5500
F 0 "R712" H 4568 5546 50  0000 L CNN
F 1 "1k" H 4568 5455 50  0000 L CNN
F 2 "Upper G-H Line" V 4540 5490 50  0001 C CNN
F 3 "~" H 4500 5500 50  0001 C CNN
F 4 "Br Bk R Gd = 1KΩ ±5%" H 4500 5500 50  0001 C CNN "Notes"
	1    4500 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5200 4500 5350
$Comp
L Device:R_US R824
U 1 1 5F21F47E
P 5750 5800
F 0 "R824" V 5545 5800 50  0000 C CNN
F 1 "10k" V 5636 5800 50  0000 C CNN
F 2 "Upper Center J" V 5790 5790 50  0001 C CNN
F 3 "~" H 5750 5800 50  0001 C CNN
F 4 "Br Bk O Gd = 10KΩ ±5%" H 5750 5800 50  0001 C CNN "Notes"
	1    5750 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 6500 3700 6500
Wire Wire Line
	3700 6500 3700 7300
Wire Wire Line
	3700 7300 4500 7300
Connection ~ 4500 7300
Wire Wire Line
	3000 7500 3200 7500
Wire Wire Line
	3200 6900 3200 7500
Connection ~ 3200 7500
Wire Wire Line
	3200 7500 3700 7500
Wire Wire Line
	2700 7000 4200 7000
Wire Wire Line
	4200 7000 4200 6000
Wire Wire Line
	3700 7500 4200 7500
Connection ~ 3700 7500
Wire Wire Line
	4500 6200 4500 6300
Wire Wire Line
	4500 7700 4500 7800
$Comp
L Device:R_US R833
U 1 1 5F21F4B9
P 5750 7300
F 0 "R833" V 5545 7300 50  0000 C CNN
F 1 "10K" V 5636 7300 50  0000 C CNN
F 2 "Right D-J Line" V 5790 7290 50  0001 C CNN
F 3 "~" H 5750 7300 50  0001 C CNN
F 4 "Br Bk O Gd = 10KΩ ±5%" H 5750 7300 50  0001 C CNN "Notes"
	1    5750 7300
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 7300 5500 7300
$Comp
L Device:R_US R705
U 1 1 5F24FB3E
P 4500 4000
F 0 "R705" H 4568 4046 50  0000 L CNN
F 1 "1K" H 4568 3955 50  0000 L CNN
F 2 "Upper Left G" V 4540 3990 50  0001 C CNN
F 3 "~" H 4500 4000 50  0001 C CNN
F 4 "Br Bk R Gd = 1KΩ ±5%" H 4500 4000 50  0001 C CNN "Notes"
	1    4500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3750 4500 3850
$Comp
L Device:R_US R714
U 1 1 5F25FE9E
P 4500 7000
F 0 "R714" H 4568 7046 50  0000 L CNN
F 1 "1K" H 4568 6955 50  0000 L CNN
F 2 "Upper Center H" V 4540 6990 50  0001 C CNN
F 3 "~" H 4500 7000 50  0001 C CNN
F 4 "Br Bk R Gd = 1KΩ ±5%" H 4500 7000 50  0001 C CNN "Notes"
	1    4500 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6750 4500 6850
Wire Wire Line
	4500 5800 5500 5800
Text GLabel 4600 3750 2    50   Input ~ 0
E16-12V
Text GLabel 4600 4800 2    50   UnSpc ~ 0
E11-GND
Text GLabel 4600 5200 2    50   Input ~ 0
E16-12V
Text GLabel 4600 6750 2    50   Input ~ 0
E16-12V
Text GLabel 4600 7800 2    50   UnSpc ~ 0
E11-GND
Text GLabel 1700 3000 0    50   Input ~ 0
E22-PG
Text GLabel 4600 2000 2    50   Input ~ 0
E16-12V
Wire Bus Line
	4400 3750 4600 3750
Wire Bus Line
	3600 4800 4500 4800
Wire Bus Line
	4400 5200 4600 5200
Wire Bus Line
	3600 6300 4500 6300
Wire Bus Line
	4400 6750 4600 6750
Wire Bus Line
	3600 7800 4500 7800
$Comp
L Device:R_US R830
U 1 1 5F2E559C
P 6500 8650
F 0 "R830" H 6568 8696 50  0000 L CNN
F 1 "2K" H 6568 8605 50  0000 L CNN
F 2 "Upper Right J" V 6540 8640 50  0001 C CNN
F 3 "~" H 6500 8650 50  0001 C CNN
F 4 "R Bk R Gd = 2KΩ ±5%" H 6500 8650 50  0001 C CNN "Notes"
	1    6500 8650
	1    0    0    -1  
$EndComp
Text GLabel 7600 8500 2    50   Input ~ 0
E16-12V
$Comp
L Device:R_US R826
U 1 1 5F2E7705
P 7500 9150
F 0 "R826" H 7568 9196 50  0000 L CNN
F 1 "2K" H 7568 9105 50  0000 L CNN
F 2 "Center Right J" V 7540 9140 50  0001 C CNN
F 3 "~" H 7500 9150 50  0001 C CNN
F 4 "R Bk R Gd = 2KΩ ±5%" H 7500 9150 50  0001 C CNN "Notes"
	1    7500 9150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 T701
U 1 1 5F2FD6C4
P 4400 4500
F 0 "T701" H 4590 4546 50  0000 L CNN
F 1 "BCY58" H 4590 4455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4600 4425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4400 4500 50  0001 L CNN
F 4 "Center Left H" H 4400 4500 50  0001 C CNN "Notes"
	1    4400 4500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 T702
U 1 1 5F300ABF
P 4400 6000
F 0 "T702" H 4590 6046 50  0000 L CNN
F 1 "BCY58" H 4590 5955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4600 5925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4400 6000 50  0001 L CNN
F 4 "Upper Left H" H 4400 6000 50  0001 C CNN "Notes"
	1    4400 6000
	1    0    0    -1  
$EndComp
Connection ~ 4500 5800
Connection ~ 4200 6000
$Comp
L Transistor_BJT:BC547 T703
U 1 1 5F303E2F
P 4400 7500
F 0 "T703" H 4590 7546 50  0000 L CNN
F 1 "BCY58" H 4590 7455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4600 7425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4400 7500 50  0001 L CNN
F 4 "Lower Left C" H 4400 7500 50  0001 C CNN "Notes"
	1    4400 7500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 T805
U 1 1 5F3072B5
P 6400 9000
F 0 "T805" H 6590 9046 50  0000 L CNN
F 1 "BCY58" H 6590 8955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6600 8925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6400 9000 50  0001 L CNN
F 4 "Upper Right J" H 6400 9000 50  0001 C CNN "Notes"
	1    6400 9000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 T806
U 1 1 5F30A76C
P 7400 9700
F 0 "T806" H 7590 9746 50  0000 L CNN
F 1 "BCY58" H 7590 9655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7600 9625 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7400 9700 50  0001 L CNN
F 4 "Center Left J" H 7400 9700 50  0001 C CNN "Notes"
	1    7400 9700
	1    0    0    -1  
$EndComp
Text GLabel 9100 6600 2    50   Input ~ 0
E24-12V
Wire Bus Line
	8900 6600 9100 6600
Text GLabel 9100 5100 2    50   Input ~ 0
E24-12V
$Comp
L Transistor_BJT:BC547 T550
U 1 1 5F312D0A
P 8900 6000
F 0 "T550" H 9090 6046 50  0000 L CNN
F 1 "BCY58" H 9090 5955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9100 5925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8900 6000 50  0001 L CNN
F 4 "Center E" H 8900 6000 50  0001 C CNN "Notes"
	1    8900 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R515
U 1 1 5F31A937
P 9000 4000
F 0 "R515" H 9068 4046 50  0000 L CNN
F 1 "300" H 9068 3955 50  0000 L CNN
F 2 "Upper Center K" V 9040 3990 50  0001 C CNN
F 3 "~" H 9000 4000 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9000 4000 50  0001 C CNN "Notes"
	1    9000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3600 9000 3850
Text GLabel 9100 3600 2    50   Input ~ 0
E24-12V
Wire Bus Line
	8900 3600 9100 3600
$Comp
L Transistor_BJT:BC547 T505
U 1 1 5F31A944
P 8900 4500
F 0 "T505" H 9090 4546 50  0000 L CNN
F 1 "BCY58" H 9090 4455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9100 4425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8900 4500 50  0001 L CNN
F 4 "Center K" H 8900 4500 50  0001 C CNN "Notes"
	1    8900 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R503
U 1 1 5F31D027
P 9000 2500
F 0 "R503" H 9068 2546 50  0000 L CNN
F 1 "300" H 9068 2455 50  0000 L CNN
F 2 "Upper Center K" V 9040 2490 50  0001 C CNN
F 3 "~" H 9000 2500 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9000 2500 50  0001 C CNN "Notes"
	1    9000 2500
	1    0    0    -1  
$EndComp
Text GLabel 9100 2000 2    50   Input ~ 0
E24-12V
$Comp
L Transistor_BJT:BC547 T500
U 1 1 5F31D034
P 8900 3000
F 0 "T500" H 9090 3046 50  0000 L CNN
F 1 "BCY58" H 9090 2955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9100 2925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8900 3000 50  0001 L CNN
F 4 "Center K" H 8900 3000 50  0001 C CNN "Notes"
	1    8900 3000
	1    0    0    -1  
$EndComp
Text GLabel 7600 10000 2    50   UnSpc ~ 0
E11-GND
Text GLabel 9100 6400 2    50   UnSpc ~ 0
E11-GND
Text GLabel 9100 3400 2    50   UnSpc ~ 0
E11-GND
$Comp
L Device:R_US R552
U 1 1 5F32FCD5
P 8250 6300
F 0 "R552" V 8045 6300 50  0000 C CNN
F 1 "5k1" V 8136 6300 50  0000 C CNN
F 2 "Upper Right C" V 8290 6290 50  0001 C CNN
F 3 "~" H 8250 6300 50  0001 C CNN
F 4 "Gn Br R Gd = 5.1KΩ ±5%" H 8250 6300 50  0001 C CNN "Notes"
	1    8250 6300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R516
U 1 1 5F335042
P 8250 4800
F 0 "R516" V 8045 4800 50  0000 C CNN
F 1 "5k1" V 8136 4800 50  0000 C CNN
F 2 "Lower Left K" V 8290 4790 50  0001 C CNN
F 3 "~" H 8250 4800 50  0001 C CNN
F 4 "Gn Br R Gd = 5.1KΩ ±5%" H 8250 4800 50  0001 C CNN "Notes"
	1    8250 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R502
U 1 1 5F337840
P 8250 3300
F 0 "R502" V 8045 3300 50  0000 C CNN
F 1 "5k1" V 8136 3300 50  0000 C CNN
F 2 "Lower Left K" V 8290 3290 50  0001 C CNN
F 3 "~" H 8250 3300 50  0001 C CNN
F 4 "Gn Br R Gd = 5.1KΩ ±5%" H 8250 3300 50  0001 C CNN "Notes"
	1    8250 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 4300 7000 4300
Wire Wire Line
	7000 4300 7000 5800
Wire Wire Line
	5900 5800 7000 5800
Connection ~ 7000 5800
Wire Wire Line
	7000 5800 7000 9700
$Comp
L Device:R_US R568
U 1 1 5F32ABA5
P 8250 8100
F 0 "R568" V 8045 8100 50  0000 C CNN
F 1 "3k9" V 8136 8100 50  0000 C CNN
F 2 "Upper Center C" V 8290 8090 50  0001 C CNN
F 3 "~" H 8250 8100 50  0001 C CNN
F 4 "O W R Gd = 3.9KΩ ±5%" H 8250 8100 50  0001 C CNN "Notes"
	1    8250 8100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R566
U 1 1 5F32A2FD
P 8250 7800
F 0 "R566" V 8045 7800 50  0000 C CNN
F 1 "5k1" V 8136 7800 50  0000 C CNN
F 2 "Upper Right C" V 8290 7790 50  0001 C CNN
F 3 "~" H 8250 7800 50  0001 C CNN
F 4 "Gn Br R Gd = 5.1KΩ ±5%" H 8250 7800 50  0001 C CNN "Notes"
	1    8250 7800
	0    1    1    0   
$EndComp
Text GLabel 9100 7900 2    50   UnSpc ~ 0
E11-GND
$Comp
L Transistor_BJT:BC547 T555
U 1 1 5F30D664
P 8900 7500
F 0 "T555" H 9090 7546 50  0000 L CNN
F 1 "BCY58" H 9090 7455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9100 7425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8900 7500 50  0001 L CNN
F 4 "Lower Center E" H 8900 7500 50  0001 C CNN "Notes"
	1    8900 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 6600 9000 6850
$Comp
L Device:R_US R565
U 1 1 5F30D657
P 9000 7000
F 0 "R565" H 9068 7046 50  0000 L CNN
F 1 "300" H 9068 6955 50  0000 L CNN
F 2 "Lower Center E" V 9040 6990 50  0001 C CNN
F 3 "~" H 9000 7000 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9000 7000 50  0001 C CNN "Notes"
	1    9000 7000
	1    0    0    -1  
$EndComp
Text GLabel 6800 1500 0    50   BiDi ~ 0
Int-2
Text GLabel 7750 1500 2    50   BiDi ~ 0
Int-1
Text GLabel 8700 1500 2    50   BiDi ~ 0
Int-3
Wire Wire Line
	7500 8100 8100 8100
$Comp
L Transistor_BJT:BC337 T501
U 1 1 5F391AD6
P 9900 2800
F 0 "T501" H 10090 2846 50  0000 L CNN
F 1 "BSX95" H 10090 2755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10100 2725 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 9900 2800 50  0001 L CNN
F 4 "Center Right K" H 9900 2800 50  0001 C CNN "Notes"
	1    9900 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3200 9000 3400
Wire Wire Line
	9000 4700 9000 4900
Wire Bus Line
	8900 6400 9100 6400
Wire Wire Line
	9000 6200 9000 6400
Wire Bus Line
	8900 2000 9100 2000
Wire Wire Line
	9000 2350 9000 2000
Wire Bus Line
	8900 5100 9100 5100
Wire Bus Line
	8900 7900 9100 7900
Wire Wire Line
	9000 7700 9000 7900
Wire Wire Line
	9700 2800 9000 2800
$Comp
L Transistor_BJT:BC337 T504
U 1 1 5F3E4AE0
P 9900 4300
F 0 "T504" H 10090 4346 50  0000 L CNN
F 1 "BSX95" H 10090 4255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10100 4225 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 9900 4300 50  0001 L CNN
F 4 "Center Right K" H 9900 4300 50  0001 C CNN "Notes"
	1    9900 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 4300 9000 4300
$Comp
L Transistor_BJT:BC337 T551
U 1 1 5F3E970B
P 9900 5800
F 0 "T551" H 10090 5846 50  0000 L CNN
F 1 "BSX95" H 10090 5755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10100 5725 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 9900 5800 50  0001 L CNN
F 4 "Center Right E" H 9900 5800 50  0001 C CNN "Notes"
	1    9900 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 5800 9000 5800
$Comp
L Transistor_BJT:BC337 T554
U 1 1 5F3ED885
P 9900 7300
F 0 "T554" H 10090 7346 50  0000 L CNN
F 1 "BSX95" H 10090 7255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10100 7225 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 9900 7300 50  0001 L CNN
F 4 "Lower Right E" H 9900 7300 50  0001 C CNN "Notes"
	1    9900 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 7300 9000 7300
$Comp
L Device:R_US R832
U 1 1 5F40122B
P 8250 8800
F 0 "R832" V 8045 8800 50  0000 C CNN
F 1 "5k1" V 8136 8800 50  0000 C CNN
F 2 "Upper J-K Line" V 8290 8790 50  0001 C CNN
F 3 "~" H 8250 8800 50  0001 C CNN
F 4 "Gn Br R Gd = 5.1KΩ ±5%" H 8250 8800 50  0001 C CNN "Notes"
	1    8250 8800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R831
U 1 1 5F4022C8
P 8250 9500
F 0 "R831" V 8045 9500 50  0000 C CNN
F 1 "5k1" V 8136 9500 50  0000 C CNN
F 2 "Center J-K Line" V 8290 9490 50  0001 C CNN
F 3 "~" H 8250 9500 50  0001 C CNN
F 4 "Gn Br R Gd = 5.1KΩ ±5%" H 8250 9500 50  0001 C CNN "Notes"
	1    8250 9500
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 8800 6500 8800
Wire Wire Line
	8100 9500 7500 9500
Wire Wire Line
	8400 9500 9000 9500
Wire Wire Line
	9000 9500 9000 8800
Wire Wire Line
	9000 8800 15700 8800
Wire Wire Line
	8400 8800 9000 8800
Wire Wire Line
	7500 9000 7500 8500
Wire Wire Line
	7500 9900 7500 10000
Wire Wire Line
	6500 9200 6500 10000
Connection ~ 9000 8800
Text GLabel 15700 8800 2    50   BiDi ~ 0
Int-7
Text Notes 15550 9050 0    50   ~ 0
Injector Group\n    Toggle\n\n\nHi  = Groups I & III\nLo = Groups II & IV
$Comp
L Device:R_US R504
U 1 1 5F485A3E
P 11000 2600
F 0 "R504" V 10795 2600 50  0000 C CNN
F 1 "30" V 10886 2600 50  0000 C CNN
F 2 "Upper Center D wired out to Heat Sink" V 11040 2590 50  0001 C CNN
F 3 "~" H 11000 2600 50  0001 C CNN
F 4 "014 measured ceramic" H 11000 2600 50  0001 C CNN "Notes"
	1    11000 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R509
U 1 1 5F486B62
P 11000 3000
F 0 "R509" V 10795 3000 50  0000 C CNN
F 1 "820" V 10886 3000 50  0000 C CNN
F 2 "Lower Right K" V 11040 2990 50  0001 C CNN
F 3 "~" H 11000 3000 50  0001 C CNN
F 4 "Gr R Br Gd = 820Ω ±5%" H 11000 3000 50  0001 C CNN "Notes"
	1    11000 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R513
U 1 1 5F4877AC
P 11000 4100
F 0 "R513" V 10795 4100 50  0000 C CNN
F 1 "30" V 10886 4100 50  0000 C CNN
F 2 "Upper Left D wired out to Heat Sink" V 11040 4090 50  0001 C CNN
F 3 "~" H 11000 4100 50  0001 C CNN
F 4 "014 measured ceramic" H 11000 4100 50  0001 C CNN "Notes"
	1    11000 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R554
U 1 1 5F48863A
P 11000 5600
F 0 "R554" V 10795 5600 50  0000 C CNN
F 1 "30" V 10886 5600 50  0000 C CNN
F 2 "Upper Left D wired out to Heat Sink" V 11040 5590 50  0001 C CNN
F 3 "~" H 11000 5600 50  0001 C CNN
F 4 "014 measured ceramic" H 11000 5600 50  0001 C CNN "Notes"
	1    11000 5600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R563
U 1 1 5F489A58
P 11000 7100
F 0 "R563" V 10795 7100 50  0000 C CNN
F 1 "30" V 10886 7100 50  0000 C CNN
F 2 "Upper Right D-E Line wired out to Heat Sink" V 11040 7090 50  0001 C CNN
F 3 "~" H 11000 7100 50  0001 C CNN
F 4 "014 measured ceramic" H 11000 7100 50  0001 C CNN "Notes"
	1    11000 7100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R559
U 1 1 5F48AD9A
P 11000 7500
F 0 "R559" V 10795 7500 50  0000 C CNN
F 1 "820" V 10886 7500 50  0000 C CNN
F 2 "Upper Right E" V 11040 7490 50  0001 C CNN
F 3 "~" H 11000 7500 50  0001 C CNN
F 4 "Gr R Br Gd = 820Ω ±5%" H 11000 7500 50  0001 C CNN "Notes"
	1    11000 7500
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 7500 10500 7500
Wire Wire Line
	10000 7100 10850 7100
Wire Wire Line
	10000 5600 10850 5600
Wire Wire Line
	10000 4100 10850 4100
Wire Wire Line
	10000 2600 10850 2600
$Comp
L Device:R_US R555
U 1 1 5F4AD72F
P 11500 5350
F 0 "R555" H 11568 5396 50  0000 L CNN
F 1 "27" H 11568 5305 50  0000 L CNN
F 2 "Upper Right D" V 11540 5340 50  0001 C CNN
F 3 "~" H 11500 5350 50  0001 C CNN
F 4 "R W Bk Gd = 27Ω ±5%" H 11500 5350 50  0001 C CNN "Notes"
	1    11500 5350
	1    0    0    -1  
$EndComp
Text GLabel 11600 3600 2    50   Input ~ 0
E24-12V
Wire Bus Line
	11400 5100 11600 5100
Wire Wire Line
	11500 5200 11500 5100
Text GLabel 11600 5100 2    50   Input ~ 0
E24-12V
Text GLabel 10500 1500 2    50   BiDi ~ 0
Int-4
Wire Wire Line
	10000 3000 10500 3000
Connection ~ 10500 3000
Wire Wire Line
	10500 3000 10850 3000
Wire Wire Line
	10500 3000 10500 4500
Wire Wire Line
	10000 4500 10500 4500
$Comp
L Device:D D500
U 1 1 5F523447
P 10500 4700
F 0 "D500" V 10500 4600 50  0000 R CNN
F 1 "D" V 10455 4620 50  0001 R CNN
F 2 "Lower Center K" H 10500 4700 50  0001 C CNN
F 3 "~" H 10500 4700 50  0001 C CNN
F 4 "D600 on Peter's labeled picture" H 10500 4700 50  0001 C CNN "Notes"
	1    10500 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10000 6000 10500 6000
Wire Wire Line
	10500 6000 10500 7500
Connection ~ 10500 7500
Wire Wire Line
	10500 7500 10850 7500
$Comp
L Device:D D550
U 1 1 5F52ED0B
P 10500 7700
F 0 "D550" V 10500 7600 50  0000 R CNN
F 1 "D" V 10455 7620 50  0001 R CNN
F 2 "Upper Center E" H 10500 7700 50  0001 C CNN
F 3 "~" H 10500 7700 50  0001 C CNN
F 4 "D500 on Peter's labeled picture" H 10500 7700 50  0001 C CNN "Notes"
	1    10500 7700
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2SB817 T502
U 1 1 5F14F7A6
P 12150 2600
F 0 "T502" H 12341 2554 50  0000 L CNN
F 1 "AUY21" H 12341 2645 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-3PB-3_Vertical" H 12350 2525 50  0001 L CIN
F 3 "http://skory.gylcomp.hu/alkatresz/2SB817.pdf" H 12150 2600 50  0001 L CNN
F 4 "Lower Right E wired out to heat sink" H 12150 2600 50  0001 C CNN "Notes"
	1    12150 2600
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:2SB817 T503
U 1 1 5F15AF6D
P 12150 4100
F 0 "T503" H 12341 4054 50  0000 L CNN
F 1 "AUY21" H 12341 4145 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-3PB-3_Vertical" H 12350 4025 50  0001 L CIN
F 3 "http://skory.gylcomp.hu/alkatresz/2SB817.pdf" H 12150 4100 50  0001 L CNN
F 4 "Center Right K wired out to heat sink" H 12150 4100 50  0001 C CNN "Notes"
	1    12150 4100
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:2SB817 T552
U 1 1 5F15C0C2
P 12150 5600
F 0 "T552" H 12341 5554 50  0000 L CNN
F 1 "AUY21" H 12341 5645 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-3PB-3_Vertical" H 12350 5525 50  0001 L CIN
F 3 "http://skory.gylcomp.hu/alkatresz/2SB817.pdf" H 12150 5600 50  0001 L CNN
F 4 "Upper Right K wired out to heat sink" H 12150 5600 50  0001 C CNN "Notes"
	1    12150 5600
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:2SB817 T553
U 1 1 5F15CFD3
P 12150 7100
F 0 "T553" H 12341 7054 50  0000 L CNN
F 1 "AUY21" H 12341 7145 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-3PB-3_Vertical" H 12350 7025 50  0001 L CIN
F 3 "http://skory.gylcomp.hu/alkatresz/2SB817.pdf" H 12150 7100 50  0001 L CNN
F 4 "Upper Right E wired out to heat sink" H 12150 7100 50  0001 C CNN "Notes"
	1    12150 7100
	1    0    0    1   
$EndComp
Wire Bus Line
	12900 2000 13000 2000
Text GLabel 13100 2000 2    50   Input ~ 0
E24-12V
Wire Wire Line
	13000 2050 13000 2000
$Comp
L Device:D D501
U 1 1 5F17427C
P 13000 2200
F 0 "D501" V 13000 2100 50  0000 R CNN
F 1 "D" V 12955 2120 50  0001 R CNN
F 2 "Lower Right K wired out to heat sink" H 13000 2200 50  0001 C CNN
F 3 "~" H 13000 2200 50  0001 C CNN
	1    13000 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12250 2400 13000 2400
Wire Wire Line
	13000 2400 13000 3000
Wire Wire Line
	13000 7500 11150 7500
Wire Wire Line
	12250 3900 13000 3900
Connection ~ 13000 3900
Wire Wire Line
	13000 3900 13000 5400
Wire Wire Line
	12250 5400 13000 5400
Connection ~ 13000 5400
Wire Wire Line
	13000 5400 13000 6900
Wire Wire Line
	12250 6900 13000 6900
Connection ~ 13000 6900
Wire Wire Line
	13000 6900 13000 7500
$Comp
L Device:C C500
U 1 1 5F191FD1
P 13500 2950
F 0 "C500" H 13615 2996 50  0000 L CNN
F 1 "6u8" H 13615 2905 50  0000 L CNN
F 2 "Right D Line" H 13538 2800 50  0001 C CNN
F 3 "~" H 13500 2950 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 13500 2950 50  0001 C CNN "Notes"
	1    13500 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R508
U 1 1 5F193BA3
P 13500 3250
F 0 "R508" H 13568 3296 50  0000 L CNN
F 1 "6.8" H 13568 3205 50  0000 L CNN
F 2 "Left E-K Line" V 13540 3240 50  0001 C CNN
F 3 "~" H 13500 3250 50  0001 C CNN
F 4 "Bl Gr Gd Gd = 6.8Ω ±5%" H 13500 3250 50  0001 C CNN "Notes"
	1    13500 3250
	1    0    0    -1  
$EndComp
Text GLabel 13600 3400 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	12250 2800 13500 2800
$Comp
L Device:C C501
U 1 1 5F1A0F09
P 13500 4450
F 0 "C501" H 13615 4496 50  0000 L CNN
F 1 "6u8" H 13615 4405 50  0000 L CNN
F 2 "Right D Line" H 13538 4300 50  0001 C CNN
F 3 "~" H 13500 4450 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 13500 4450 50  0001 C CNN "Notes"
	1    13500 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R510
U 1 1 5F1A0F13
P 13500 4750
F 0 "R510" H 13568 4796 50  0000 L CNN
F 1 "6.8" H 13568 4705 50  0000 L CNN
F 2 "Center Left K" V 13540 4740 50  0001 C CNN
F 3 "~" H 13500 4750 50  0001 C CNN
F 4 "Bl Gr Gd Gd = 6.8Ω ±5%" H 13500 4750 50  0001 C CNN "Notes"
	1    13500 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	12250 4300 13500 4300
$Comp
L Device:C C550
U 1 1 5F1B5047
P 13500 5950
F 0 "C550" H 13615 5996 50  0000 L CNN
F 1 "6u8" H 13615 5905 50  0000 L CNN
F 2 "Right K Line" H 13538 5800 50  0001 C CNN
F 3 "~" H 13500 5950 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 13500 5950 50  0001 C CNN "Notes"
	1    13500 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R558
U 1 1 5F1B5051
P 13500 6250
F 0 "R558" H 13568 6296 50  0000 L CNN
F 1 "6.8" H 13568 6205 50  0000 L CNN
F 2 "Upper Left K" V 13540 6240 50  0001 C CNN
F 3 "~" H 13500 6250 50  0001 C CNN
F 4 "Bl Gr Gd Gd = 6.8Ω ±5%" H 13500 6250 50  0001 C CNN "Notes"
	1    13500 6250
	1    0    0    -1  
$EndComp
Text GLabel 13600 6400 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	12250 5800 13500 5800
Wire Bus Line
	13400 6400 13600 6400
$Comp
L Device:C C551
U 1 1 5F1BC0B5
P 13500 7450
F 0 "C551" H 13615 7496 50  0000 L CNN
F 1 "6u8" H 13615 7405 50  0000 L CNN
F 2 "Right K Line" H 13538 7300 50  0001 C CNN
F 3 "~" H 13500 7450 50  0001 C CNN
F 4 "MK 6,8μF ±5% 100V" H 13500 7450 50  0001 C CNN "Notes"
	1    13500 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R560
U 1 1 5F1BC0BF
P 13500 7750
F 0 "R560" H 13568 7796 50  0000 L CNN
F 1 "6.8" H 13568 7705 50  0000 L CNN
F 2 "Center Left E" V 13540 7740 50  0001 C CNN
F 3 "~" H 13500 7750 50  0001 C CNN
F 4 "Bl Gr Gd Gd = 6.8Ω ±5%" H 13500 7750 50  0001 C CNN "Notes"
	1    13500 7750
	1    0    0    -1  
$EndComp
Text GLabel 13600 7900 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	12250 7300 13500 7300
Wire Bus Line
	13400 7900 13500 7900
Wire Bus Line
	13400 4900 13500 4900
Text GLabel 13600 4900 2    50   UnSpc ~ 0
E11-GND
Wire Bus Line
	8900 4900 9100 4900
Text GLabel 9100 4900 2    50   UnSpc ~ 0
E11-GND
Wire Wire Line
	3200 6400 3200 6600
Wire Bus Line
	8900 3400 9100 3400
Wire Wire Line
	11150 3000 13000 3000
Connection ~ 13000 3000
Wire Wire Line
	13000 3000 13000 3900
$Comp
L Device:R_US R506
U 1 1 5F274A48
P 14750 2800
F 0 "R506" V 14545 2800 50  0000 C CNN
F 1 "6" V 14636 2800 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 14790 2790 50  0001 C CNN
F 3 "~" H 14750 2800 50  0001 C CNN
F 4 "014 measured ceramic" H 14750 2800 50  0001 C CNN "Notes"
	1    14750 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R507
U 1 1 5F277513
P 14750 3250
F 0 "R507" V 14545 3250 50  0000 C CNN
F 1 "6" V 14636 3250 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 14790 3240 50  0001 C CNN
F 3 "~" H 14750 3250 50  0001 C CNN
F 4 "014 measured ceramic" H 14750 3250 50  0001 C CNN "Notes"
	1    14750 3250
	0    1    1    0   
$EndComp
Connection ~ 13500 2800
Wire Wire Line
	15000 2800 15700 2800
$Comp
L Device:R_US R511
U 1 1 5F287875
P 14750 4300
F 0 "R511" V 14545 4300 50  0000 C CNN
F 1 "6" V 14636 4300 50  0000 C CNN
F 2 "Upper A-B Line wired out to Heat Sink" V 14790 4290 50  0001 C CNN
F 3 "~" H 14750 4300 50  0001 C CNN
F 4 "014 measured ceramic" H 14750 4300 50  0001 C CNN "Notes"
	1    14750 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R512
U 1 1 5F28787F
P 14750 4750
F 0 "R512" V 14545 4750 50  0000 C CNN
F 1 "6" V 14636 4750 50  0000 C CNN
F 2 "Upper A-B Line wired out to Heat Sink" V 14790 4740 50  0001 C CNN
F 3 "~" H 14750 4750 50  0001 C CNN
F 4 "014 measured ceramic" H 14750 4750 50  0001 C CNN "Notes"
	1    14750 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	13500 4300 14500 4300
Wire Wire Line
	15000 4300 15700 4300
Connection ~ 13500 4300
$Comp
L Device:R_US R556
U 1 1 5F28F6CC
P 14750 5800
F 0 "R556" V 14545 5800 50  0000 C CNN
F 1 "6" V 14636 5800 50  0000 C CNN
F 2 "Upper A-B Line wired out to Heat Sink" V 14790 5790 50  0001 C CNN
F 3 "~" H 14750 5800 50  0001 C CNN
F 4 "014 measured ceramic" H 14750 5800 50  0001 C CNN "Notes"
	1    14750 5800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R557
U 1 1 5F28F6D6
P 14750 6300
F 0 "R557" V 14545 6300 50  0000 C CNN
F 1 "6" V 14636 6300 50  0000 C CNN
F 2 "Upper A-B Line wired out to Heat Sink" V 14790 6290 50  0001 C CNN
F 3 "~" H 14750 6300 50  0001 C CNN
F 4 "014 measured ceramic" H 14750 6300 50  0001 C CNN "Notes"
	1    14750 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	13500 5800 14500 5800
Wire Wire Line
	15000 5800 15700 5800
Connection ~ 13500 5800
$Comp
L Device:R_US R561
U 1 1 5F297AE8
P 14750 7300
F 0 "R561" V 14545 7300 50  0000 C CNN
F 1 "6" V 14636 7300 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 14790 7290 50  0001 C CNN
F 3 "~" H 14750 7300 50  0001 C CNN
F 4 "R501 on Peter's - 014 measured ceramic" H 14750 7300 50  0001 C CNN "Notes"
	1    14750 7300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R562
U 1 1 5F297AF2
P 14750 7800
F 0 "R562" V 14545 7800 50  0000 C CNN
F 1 "6" V 14636 7800 50  0000 C CNN
F 2 "Upper Left C wired out to Heat Sink" V 14790 7790 50  0001 C CNN
F 3 "~" H 14750 7800 50  0001 C CNN
F 4 "R502 on Peter's - 014 measured ceramic" H 14750 7800 50  0001 C CNN "Notes"
	1    14750 7800
	0    1    1    0   
$EndComp
Wire Wire Line
	13500 7300 14500 7300
Wire Wire Line
	15000 7300 15700 7300
Connection ~ 13500 7300
Text GLabel 15700 7300 2    50   Output ~ 0
E6-INJ7&2
Text GLabel 15700 5800 2    50   Output ~ 0
E4-INJ4&8
Text GLabel 15700 4300 2    50   Output ~ 0
E5-INJ6&3
Text GLabel 15700 2800 2    50   Output ~ 0
E3-INJ1&5
Text Notes 15800 7450 0    50   ~ 0
Group IV
Text Notes 15800 5950 0    50   ~ 0
Group II
Text Notes 15800 4450 0    50   ~ 0
Group III
Text Notes 15800 2950 0    50   ~ 0
Group I
Text Notes 1400 4650 0    50   ~ 0
Group I
Text Notes 1400 3150 0    50   ~ 0
Group III
Text Notes 1400 7650 0    50   ~ 0
Group II
Text Notes 1400 6150 0    50   ~ 0
Group IV
Text GLabel 4600 6300 2    50   UnSpc ~ 0
E11-GND
Text Notes 700  4650 0    50   ~ 0
Trigger Point\nInjectors 1 & 5\nLo to Hi @\n360 ATDC
Text Notes 700  3150 0    50   ~ 0
Trigger Point\nInjectors 6 & 3\nLo to Hi @\nTDC
Text Notes 700  6150 0    50   ~ 0
Trigger Point\nInjectors 7 & 2\nLo to Hi @\n180 ATDC
Text Notes 700  7650 0    50   ~ 0
Trigger Point\nInjectors 4 & 8\nLo to Hi @\n540 ATDC
Wire Wire Line
	6800 1500 7500 1500
Wire Wire Line
	8700 1700 8700 1500
Text Notes 6400 1350 0    50   ~ 0
Groups II & IV
Text Notes 7650 1350 0    50   ~ 0
Groups I & III
Wire Notes Line
	6300 1350 6300 1150
Wire Notes Line
	6300 1150 8300 1150
Wire Notes Line
	8300 1150 8300 1350
Text Notes 6850 1050 0    50   ~ 0
Combined Injector Pulse
Text Notes 8700 1350 0    50   ~ 0
Hi =\nInject Disable
Text Notes 10350 1350 0    50   ~ 0
0.7V = Drive OK
Text Notes 2150 2100 0    50   ~ 10
Flip-Flop
Text Notes 8200 2050 0    50   ~ 10
NOR Gate
Text Notes 9850 2050 0    50   ~ 10
Injector Drivers
Wire Notes Line
	9750 8250 9750 1850
Text Notes 5250 2050 0    50   ~ 10
Inector Group Toggle
Wire Notes Line
	7250 1850 7250 8250
$Comp
L Device:R_US R505
U 1 1 5F4AB10D
P 11500 2300
F 0 "R505" H 11568 2346 50  0000 L CNN
F 1 "27" H 11568 2255 50  0000 L CNN
F 2 "Upper Right D" V 11540 2290 50  0001 C CNN
F 3 "~" H 11500 2300 50  0001 C CNN
F 4 "R W Bk Gd = 27Ω ±5%" H 11500 2300 50  0001 C CNN "Notes"
	1    11500 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	11500 2150 11500 2000
Wire Bus Line
	11350 3600 11600 3600
Wire Wire Line
	11500 3700 11500 3600
Wire Wire Line
	11500 3600 11600 3600
Wire Wire Line
	11500 5100 11600 5100
Wire Wire Line
	6500 10000 7500 10000
Connection ~ 7500 10000
Wire Wire Line
	7500 10000 7600 10000
Wire Wire Line
	10500 7900 13500 7900
Wire Wire Line
	9000 3400 9100 3400
Wire Wire Line
	9000 6400 9100 6400
Wire Wire Line
	9000 4900 9100 4900
Wire Wire Line
	9000 2000 9100 2000
Wire Wire Line
	9000 5100 9100 5100
Wire Wire Line
	9000 7900 9100 7900
Connection ~ 7500 8500
Wire Wire Line
	7500 8500 7600 8500
Wire Wire Line
	11500 2000 13000 2000
Wire Wire Line
	13500 3400 13600 3400
Wire Wire Line
	13000 2000 13100 2000
Wire Wire Line
	13500 6400 13600 6400
Wire Wire Line
	13500 7900 13600 7900
Wire Wire Line
	3700 7800 4500 7800
Connection ~ 4500 7800
Wire Bus Line
	4500 7800 4600 7800
Wire Wire Line
	4500 7800 4600 7800
Wire Wire Line
	4500 5200 4600 5200
Wire Wire Line
	3700 4800 4500 4800
Connection ~ 4500 4800
Wire Bus Line
	4500 4800 4600 4800
Wire Wire Line
	4500 4800 4600 4800
Wire Wire Line
	3700 6300 4500 6300
Connection ~ 4500 6300
Wire Bus Line
	4500 6300 4600 6300
Wire Wire Line
	4500 6300 4600 6300
Wire Wire Line
	4500 6750 4600 6750
Wire Wire Line
	4500 2000 4600 2000
Wire Wire Line
	4500 3750 4600 3750
Wire Wire Line
	9000 6600 9100 6600
Wire Wire Line
	9000 3600 9100 3600
Connection ~ 4200 3000
Wire Wire Line
	4200 4000 4200 3000
$Comp
L Transistor_BJT:BC547 T700
U 1 1 5F2FA5EC
P 4400 3000
F 0 "T700" H 4590 3046 50  0000 L CNN
F 1 "BCY58" H 4590 2955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4600 2925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4400 3000 50  0001 L CNN
F 4 "Center Right G" H 4400 3000 50  0001 C CNN "Notes"
	1    4400 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2800 5500 2800
$Comp
L Device:R_US R703
U 1 1 5F1E56CD
P 4500 2500
F 0 "R703" H 4568 2546 50  0000 L CNN
F 1 "1K" H 4568 2455 50  0000 L CNN
F 2 "Center Left G" V 4540 2490 50  0001 C CNN
F 3 "~" H 4500 2500 50  0001 C CNN
F 4 "Br Bk R Gd = 1KΩ ±5%" H 4500 2500 50  0001 C CNN "Notes"
	1    4500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2350 4500 2000
Wire Wire Line
	4500 2650 4500 2800
Connection ~ 4500 2800
Wire Wire Line
	4500 4150 4500 4300
Wire Wire Line
	4500 5650 4500 5800
Wire Wire Line
	4500 7150 4500 7300
Wire Wire Line
	8500 3000 8700 3000
Wire Wire Line
	8500 4500 8700 4500
Wire Wire Line
	8500 6000 8700 6000
Wire Wire Line
	8500 7500 8700 7500
Wire Wire Line
	7500 6600 7500 8100
Wire Wire Line
	7500 1500 7500 6600
Connection ~ 7500 6600
$Comp
L Device:R_US R550
U 1 1 5F32FCDF
P 8250 6600
F 0 "R550" V 8045 6600 50  0000 C CNN
F 1 "3k9" V 8136 6600 50  0000 C CNN
F 2 "Upper Center C" V 8290 6590 50  0001 C CNN
F 3 "~" H 8250 6600 50  0001 C CNN
F 4 "O W R Gd = 3.9KΩ ±5%" H 8250 6600 50  0001 C CNN "Notes"
	1    8250 6600
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 1500 7750 3600
$Comp
L Device:R_US R500
U 1 1 5F33784A
P 8250 3600
F 0 "R500" V 8045 3600 50  0000 C CNN
F 1 "3k9" V 8136 3600 50  0000 C CNN
F 2 "Lower Right J" V 8290 3590 50  0001 C CNN
F 3 "~" H 8250 3600 50  0001 C CNN
F 4 "O W R Gd = 3.9KΩ ±5%" H 8250 3600 50  0001 C CNN "Notes"
	1    8250 3600
	0    1    1    0   
$EndComp
Connection ~ 7750 3600
Wire Wire Line
	7750 3600 7750 5100
$Comp
L Device:R_US R518
U 1 1 5F33504C
P 8250 5100
F 0 "R518" V 8045 5100 50  0000 C CNN
F 1 "3k9" V 8136 5100 50  0000 C CNN
F 2 "Lower Right J" V 8290 5090 50  0001 C CNN
F 3 "~" H 8250 5100 50  0001 C CNN
F 4 "O W R Gd = 3.9KΩ ±5%" H 8250 5100 50  0001 C CNN "Notes"
	1    8250 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 2800 5500 3000
$Comp
L Device:R_US R501
U 1 1 5F337836
P 8250 3000
F 0 "R501" V 8045 3000 50  0000 C CNN
F 1 "3k9" V 8136 3000 50  0000 C CNN
F 2 "Lower Right J" V 8290 2990 50  0001 C CNN
F 3 "~" H 8250 3000 50  0001 C CNN
F 4 "O W R Gd = 3.9KΩ ±5%" H 8250 3000 50  0001 C CNN "Notes"
	1    8250 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 4300 5500 4500
$Comp
L Device:R_US R517
U 1 1 5F335038
P 8250 4500
F 0 "R517" V 8045 4500 50  0000 C CNN
F 1 "3k9" V 8136 4500 50  0000 C CNN
F 2 "Lower Right J" V 8290 4490 50  0001 C CNN
F 3 "~" H 8250 4500 50  0001 C CNN
F 4 "O W R Gd = 3.9KΩ ±5%" H 8250 4500 50  0001 C CNN "Notes"
	1    8250 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 5800 5500 6000
$Comp
L Device:R_US R551
U 1 1 5F32FCCB
P 8250 6000
F 0 "R551" V 8045 6000 50  0000 C CNN
F 1 "3k9" V 8136 6000 50  0000 C CNN
F 2 "Upper Left D" V 8290 5990 50  0001 C CNN
F 3 "~" H 8250 6000 50  0001 C CNN
F 4 "O W R Gd = 3.9KΩ ±5%" H 8250 6000 50  0001 C CNN "Notes"
	1    8250 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 7300 5500 7500
$Comp
L Device:R_US R567
U 1 1 5F32957C
P 8250 7500
F 0 "R567" V 8045 7500 50  0000 C CNN
F 1 "3k9" V 8136 7500 50  0000 C CNN
F 2 "Upper Right C" V 8290 7490 50  0001 C CNN
F 3 "~" H 8250 7500 50  0001 C CNN
F 4 "O W R Gd = 3.9KΩ ±5%" H 8250 7500 50  0001 C CNN "Notes"
	1    8250 7500
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 1700 8700 1700
Wire Wire Line
	8000 1700 8000 3300
Connection ~ 8000 3300
Wire Wire Line
	8100 6600 7500 6600
Wire Wire Line
	8100 3600 7750 3600
Wire Wire Line
	7750 5100 8100 5100
Wire Wire Line
	8000 6300 8000 7800
Connection ~ 8000 6300
Wire Wire Line
	8100 6300 8000 6300
Wire Wire Line
	8000 4800 8000 6300
Connection ~ 8000 4800
Wire Wire Line
	8100 4800 8000 4800
Wire Wire Line
	8000 3300 8000 4800
Wire Wire Line
	8100 3300 8000 3300
Wire Wire Line
	8000 7800 8100 7800
Wire Wire Line
	5500 3000 8100 3000
Wire Wire Line
	5500 4500 8100 4500
Wire Wire Line
	5500 6000 8100 6000
Wire Wire Line
	5500 7500 8100 7500
Wire Wire Line
	5500 5800 5600 5800
Connection ~ 5500 5800
Wire Wire Line
	5500 7300 5600 7300
Connection ~ 5500 7300
Wire Wire Line
	5500 4300 5600 4300
Connection ~ 5500 4300
Wire Wire Line
	5500 2800 5600 2800
Connection ~ 5500 2800
Connection ~ 6500 8800
Wire Wire Line
	6500 8500 7500 8500
Wire Wire Line
	7000 9700 7200 9700
Wire Wire Line
	7500 9300 7500 9500
Connection ~ 7500 9500
Wire Bus Line
	6400 8500 7500 8500
Wire Bus Line
	7500 8500 7600 8500
Wire Bus Line
	6400 10000 7500 10000
Wire Bus Line
	7500 10000 7600 10000
Wire Notes Line
	15250 1850 15250 9150
Wire Notes Line
	7250 8250 15250 8250
Wire Notes Line
	2000 8500 5950 8500
Wire Notes Line
	2000 1850 2000 8500
Wire Notes Line
	5950 8500 5950 10200
Wire Wire Line
	6000 9000 6200 9000
Wire Wire Line
	5900 2800 6000 2800
Wire Wire Line
	6000 9000 6000 7300
Wire Wire Line
	5900 7300 6000 7300
Connection ~ 6000 7300
Wire Wire Line
	6000 7300 6000 2800
Wire Wire Line
	9000 2650 9000 2800
Connection ~ 9000 2800
Wire Wire Line
	9000 4150 9000 4300
Connection ~ 9000 4300
Wire Wire Line
	11150 2600 11500 2600
Wire Wire Line
	11500 2450 11500 2600
Connection ~ 11500 2600
Wire Wire Line
	11500 2600 11950 2600
$Comp
L Device:R_US R514
U 1 1 5F4ABE6C
P 11500 3850
F 0 "R514" H 11568 3896 50  0000 L CNN
F 1 "27" H 11568 3805 50  0000 L CNN
F 2 "Upper Center D" V 11540 3840 50  0001 C CNN
F 3 "~" H 11500 3850 50  0001 C CNN
F 4 "R W Bk Gd = 27Ω ±5%" H 11500 3850 50  0001 C CNN "Notes"
	1    11500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 4100 11500 4100
Wire Wire Line
	11500 4000 11500 4100
Connection ~ 11500 4100
Wire Wire Line
	11500 4100 11950 4100
Wire Wire Line
	8400 3000 8500 3000
Connection ~ 8500 3000
Wire Wire Line
	8500 3000 8500 3300
Wire Wire Line
	8400 3300 8500 3300
Connection ~ 8500 3300
Wire Wire Line
	8500 3300 8500 3600
Wire Wire Line
	8400 3600 8500 3600
Wire Wire Line
	8400 4500 8500 4500
Connection ~ 8500 4500
Wire Wire Line
	8500 4500 8500 4800
Wire Wire Line
	8400 4800 8500 4800
Connection ~ 8500 4800
Wire Wire Line
	8500 4800 8500 5100
Wire Wire Line
	8400 5100 8500 5100
Wire Wire Line
	13500 2800 14500 2800
Wire Wire Line
	14600 2800 14500 2800
Connection ~ 14500 2800
Wire Wire Line
	14900 2800 15000 2800
Connection ~ 15000 2800
Wire Wire Line
	14500 3250 14600 3250
Wire Wire Line
	14500 2800 14500 3250
Wire Wire Line
	14900 3250 15000 3250
Wire Wire Line
	15000 2800 15000 3250
Wire Bus Line
	13400 3400 13600 3400
Wire Wire Line
	10500 4500 10500 4550
Connection ~ 10500 4500
Wire Wire Line
	10500 4850 10500 4900
Wire Wire Line
	14500 4300 14600 4300
Connection ~ 14500 4300
Wire Wire Line
	14900 4300 15000 4300
Connection ~ 15000 4300
Wire Wire Line
	14500 4750 14600 4750
Wire Wire Line
	14500 4300 14500 4750
Wire Wire Line
	14900 4750 15000 4750
Wire Wire Line
	15000 4300 15000 4750
Wire Wire Line
	11500 6600 11600 6600
Text GLabel 11600 6600 2    50   Input ~ 0
E24-12V
Wire Wire Line
	11500 6700 11500 6600
Wire Bus Line
	11400 6600 11600 6600
$Comp
L Device:R_US R564
U 1 1 5F4AE4B9
P 11500 6850
F 0 "R564" H 11568 6896 50  0000 L CNN
F 1 "27" H 11568 6805 50  0000 L CNN
F 2 "Upper Left E" V 11540 6840 50  0001 C CNN
F 3 "~" H 11500 6850 50  0001 C CNN
F 4 "R W Bk Gd = 27Ω ±5%" H 11500 6850 50  0001 C CNN "Notes"
	1    11500 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 7100 11500 7100
Wire Wire Line
	11150 5600 11500 5600
Wire Wire Line
	11500 5500 11500 5600
Connection ~ 11500 5600
Wire Wire Line
	11500 5600 11950 5600
Wire Wire Line
	11500 7000 11500 7100
Connection ~ 11500 7100
Wire Wire Line
	11500 7100 11950 7100
Wire Wire Line
	10500 7550 10500 7500
Wire Wire Line
	10500 7850 10500 7900
Wire Wire Line
	14500 5800 14600 5800
Connection ~ 14500 5800
Wire Wire Line
	14900 5800 15000 5800
Connection ~ 15000 5800
Wire Wire Line
	14500 6300 14600 6300
Wire Wire Line
	14500 5800 14500 6300
Wire Wire Line
	14900 6300 15000 6300
Wire Wire Line
	15000 5800 15000 6300
Wire Wire Line
	14500 7300 14600 7300
Connection ~ 14500 7300
Wire Wire Line
	14900 7300 15000 7300
Connection ~ 15000 7300
Wire Wire Line
	14900 7800 15000 7800
Wire Wire Line
	15000 7300 15000 7800
Wire Wire Line
	14500 7800 14600 7800
Wire Wire Line
	14500 7300 14500 7800
Wire Notes Line
	15250 1850 2000 1850
Wire Wire Line
	10500 4900 13500 4900
Connection ~ 13500 4900
Wire Bus Line
	13500 4900 13600 4900
Wire Wire Line
	13500 4900 13600 4900
Wire Bus Line
	10400 4900 13500 4900
Connection ~ 13000 2000
Wire Bus Line
	13000 2000 13100 2000
Wire Bus Line
	11400 2000 13000 2000
Connection ~ 13500 7900
Wire Bus Line
	13500 7900 13600 7900
Wire Bus Line
	10400 7900 13500 7900
Wire Notes Line
	9500 10200 9500 9150
Wire Notes Line
	9500 9150 15250 9150
Wire Notes Line
	9500 10200 5950 10200
Wire Wire Line
	8400 6000 8500 6000
Connection ~ 8500 6000
Wire Wire Line
	8500 6000 8500 6300
Wire Wire Line
	8400 6300 8500 6300
Connection ~ 8500 6300
Wire Wire Line
	8500 6300 8500 6600
Wire Wire Line
	8400 6600 8500 6600
Wire Wire Line
	8400 7500 8500 7500
Connection ~ 8500 7500
Wire Wire Line
	8500 7500 8500 7800
Wire Wire Line
	8400 7800 8500 7800
Connection ~ 8500 7800
Wire Wire Line
	8500 7800 8500 8100
Wire Wire Line
	8400 8100 8500 8100
Wire Wire Line
	9000 7150 9000 7300
Connection ~ 9000 7300
Wire Wire Line
	9000 5350 9000 5100
$Comp
L Device:R_US R553
U 1 1 5F312CFD
P 9000 5500
F 0 "R553" H 9068 5546 50  0000 L CNN
F 1 "300" H 9068 5455 50  0000 L CNN
F 2 "Lower Right E" V 9040 5490 50  0001 C CNN
F 3 "~" H 9000 5500 50  0001 C CNN
F 4 "O Bk Br Gd = 300Ω ±5%" H 9000 5500 50  0001 C CNN "Notes"
	1    9000 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5650 9000 5800
Connection ~ 9000 5800
Wire Notes Line
	5100 1850 5100 8500
Wire Wire Line
	3000 3000 3200 3000
Wire Wire Line
	3200 3100 3200 3000
Connection ~ 3200 3000
Wire Wire Line
	4500 3200 4500 3300
Wire Bus Line
	4500 3300 4600 3300
Wire Wire Line
	3700 3300 4500 3300
Wire Bus Line
	3600 3300 4500 3300
Connection ~ 4500 3300
Wire Wire Line
	3200 3000 3700 3000
Wire Wire Line
	3700 3000 4200 3000
Connection ~ 3700 3000
Wire Wire Line
	4500 3300 4600 3300
Text GLabel 4600 3300 2    50   UnSpc ~ 0
E11-GND
$Comp
L Device:R_US R702
U 1 1 5F162713
P 3700 3150
F 0 "R702" H 3768 3196 50  0000 L CNN
F 1 "180K" H 3768 3105 50  0000 L CNN
F 2 "Upper Center G" V 3740 3140 50  0001 C CNN
F 3 "~" H 3700 3150 50  0001 C CNN
F 4 "Br Gr Y Gd = 180KΩ ±5%" H 3700 3150 50  0001 C CNN "Notes"
	1    3700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6000 3200 6000
Wire Wire Line
	3200 6100 3200 6000
Connection ~ 3200 6000
Wire Wire Line
	3200 6000 3700 6000
Wire Wire Line
	10500 1500 10500 3000
Wire Wire Line
	13000 2350 13000 2400
Connection ~ 13000 2400
$EndSCHEMATC
