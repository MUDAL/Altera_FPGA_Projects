# Altera_FPGA_Projects  

This repository contains demo projects for those who are interested in getting started with FPGA development.  
The EP4CE6E22C8N FPGA board is a major requirement for running and testing the projects in this repository.  
All the RTL projects in this repository strictly follow the Synchronous Design Methodology and are written in VHDL.  
The projects have been tested on Windows 10 and Ubuntu 25.04.  

## OMDAZZ Altera Cyclone IV EP4CE6 FPGA Board  
Source: [Vendor's Page](https://a.aliexpress.com/_EQstVsj)  
![image](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/3b2e60d7-95fb-4722-b8ae-07905272fe2b)  
![image](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/985b401d-910c-47cd-a42c-5aa6f8f254fc)  

## Additional components  
1. [AM2302 DHT22 sensor: The module with a red PCB](https://a.aliexpress.com/_EzjOeNt)    
2. [HC-SR04 sensor](https://a.aliexpress.com/_ExUJ4Cn)    
3. [ILI9341 module: 2.4 inch, 240x320 TFT display with touch](https://a.aliexpress.com/_EwlAMGf)
4. [16x2 LCD module: green or blue but without I2C interface](https://a.aliexpress.com/_EIEI6jd)
5. [HX1838 Infrared remote](https://a.aliexpress.com/_EI0lmAb)
6. HC-05 or HC-06 Bluetooth module  
7. VGA monitor and cable
8. PS/2 keyboard
9. STM32 Blue Pill board or any MCU with UART, SPI, and USB peripherals  
10. CH340 USB-TTL converter  

## Optional components  
Here's a list of components that I used for additional verification of my RTL designs beyond testbenches.  
1. Saleae 24MHz, 8 Channel USB logic analyzer  
2. Zeeweii DSO3D12 oscilloscope + multimeter + signal generator (3 in 1)   
3. DSO150 handheld oscilloscope  

## Important software  
1. Intel Quartus (Quartus Prime 20.1)  
2. ModelSim - Intel FPGA Edition vsim 2020.1 (Quartus Prime 20.1)
3. STM32CubeIDE (if you have an STM32 microcontroller)
4. Python (v3.7 upwards)  

## Project file hierarchy 
```
.
├── EP4CE6_Projects
│   ├── P01_7_Segment
│   │   ├── README.md
│   │   ├── seg_display.tcl
│   │   └── src
│   ├── P02_7_Segment_LM75
│   │   ├── README.md
│   │   ├── Version_1
│   │   └── Version_2
│   ├── P03_7_Segment_DHT22
│   │   ├── README.md
│   │   ├── Version_1
│   │   └── Version_2
│   ├── P04_7_Segment_HCSR04
│   │   ├── README.md
│   │   ├── Version_1
│   │   └── Version_2
│   ├── P05_LCD_1602
│   │   ├── lcd_main.tcl
│   │   ├── README.md
│   │   └── src
│   ├── P06_VGA_1
│   │   ├── MATLAB
│   │   ├── README.md
│   │   └── VHDL
│   ├── P07_LCD_TL1838
│   │   ├── ir_lcd_main.tcl
│   │   ├── README.md
│   │   ├── simulation
│   │   └── src
│   ├── P08_SPI_LCD
│   │   ├── MCU
│   │   ├── README.md
│   │   └── RTL
│   ├── P09_PS2_USB
│   │   ├── MCU
│   │   ├── README.md
│   │   └── RTL
│   ├── P10_ILI9341_HC06
│   │   ├── README.md
│   │   ├── rgb_display.tcl
│   │   ├── simulation
│   │   └── src
│   ├── P11_ILI9341_HC06_FIFO
│   │   ├── README.md
│   │   ├── rgb_display.tcl
│   │   ├── simulation
│   │   └── src
│   ├── P12_Pong
│   │   ├── MATLAB
│   │   ├── Python
│   │   ├── README.md
│   │   ├── Version_1
│   │   └── Version_2
│   ├── P13_SDRAM
│   │   ├── constraints
│   │   ├── README.md
│   │   ├── sdram_uart_main.tcl
│   │   ├── signal_tap
│   │   ├── simulation
│   │   └── src
│   └── P14_Camera_VGA
│       ├── constraints
│       ├── frame_capture_main.tcl
│       ├── README.md
│       ├── simulation
│       └── src
├── LICENSE
└── README.md
```

## How to run the projects (OS-agnostic)  
To test the projects (design and simulation), you'll need to install Quartus and ModelSim.  
Furthermore, you must add the programs to your system PATH environment variable. This will allow you to invoke both applications from the command line. This applies to Linux and Windows users. Explanations of how to run design and simulation projects on the command line are given in the README section of each project.  

## Helpful resources  
1. RTL Hardware Design Using VHDL - Pong P. Chu
2. FPGA Prototyping By VHDL Examples (Xilinx Spartan-3 Version) - Pong P. Chu
3. Circuit Design and Simulation with VHDL, 2nd edition - Volnei A. Pedroni
4. [VHDLwhiz](https://vhdlwhiz.com/)    
5. [Nandland](https://nandland.com/)  
6. [Intel Quartus Prime User Guide: Design Recommendations](https://drive.google.com/file/d/10ceeMwrubd7WwAiYCywm3BV2gu6W5p9I/view?usp=sharing)
7. [Jvitkauskas' Repository](https://github.com/jvitkauskas/Altera-Cyclone-IV-board-V3.0)
8. [Cyclone IV FPGA Board Schematic](https://drive.google.com/file/d/1_IB7D3a74_Vx75rmCJpaDmrPajFDsQqK/view?usp=sharing)
9. [Expansion Board Schematic](https://drive.google.com/file/d/1hS64cwsAFvdMkdJV1rCPkyS8_Hy91g8t/view?usp=sharing)    
10. [Vendor's Page](https://a.aliexpress.com/_EQstVsj)
11. [Tcl Tutorial](https://wiki.tcl-lang.org/page/Tcl+Tutorial+Lesson+0)  
    
