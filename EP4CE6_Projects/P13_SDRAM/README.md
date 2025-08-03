# Interfacing the EP4CE6 FPGA board with a Synchronous Dynamic Random Access Memory (SDRAM)  
 
## Description    
This project aims to design and test a simple SDRAM controller for accessing a single data rate (SDR) SDRAM. The workflow is described as follows:
1. A button on the FPGA board is pressed to move data from a ROM to the SDRAM.  
2. When a second button is pressed, data will be transferred from the SDRAM to a FIFO buffer.  
3. Each data element in the FIFO buffer will be sent to a USB-TTL converter by a UART transmitter. This will allow us to view the data stored in the SDRAM on a serial terminal application running on a PC.  

![sdram_project_workflow drawio_page-0001](https://github.com/user-attachments/assets/122e7276-f202-42e0-8e87-cd13c988150d)   
![sdram_controller_flowchart drawio_page-0001](https://github.com/user-attachments/assets/e37ddb11-f410-4444-a604-42459584f0f3)   
![Screenshot (635)](https://github.com/user-attachments/assets/d2ff5056-06fe-4801-97c6-8372c032a13a)  

The contents of the data source (ASCII ROM) are shown below.
```
Line 1: ABCDEFGHIJKLMN  
Line 2: abcdefghijklmn  
Line 3: 0123456789:;<=  
Line 4: OPQRSTUVWXYZyz  
```
VHDL snippet of the data source's content:  
```
   constant CHAR_TABLE: char_type := (00 => x"41",  -- A
                                      01 => x"42",  -- B
                                      02 => x"43",  -- C
                                      03 => x"44",  -- D
                                      04 => x"45",  -- E
                                      05 => x"46",  -- F
                                      06 => x"47",  -- G
                                      07 => x"48",  -- H
                                      08 => x"49",  -- I
                                      09 => x"4A",  -- J
                                      10 => x"4B",  -- K
                                      11 => x"4C",  -- L
                                      12 => x"4D",  -- M
                                      13 => x"4E",  -- N
                                      14 => x"0D",  -- CARRIAGE RETURN
                                      15 => x"0A",  -- LINE FEED
                                       
                                      16 => x"61",  -- a
                                      17 => x"62",  -- b
                                      18 => x"63",  -- c
                                      19 => x"64",  -- d
                                      20 => x"65",  -- e
                                      21 => x"66",  -- f
                                      22 => x"67",  -- g
                                      23 => x"68",  -- h
                                      24 => x"69",  -- i
                                      25 => x"6A",  -- j
                                      26 => x"6B",  -- k
                                      27 => x"6C",  -- l
                                      28 => x"6D",  -- m
                                      29 => x"6E",  -- n
                                      30 => x"0D",  -- CARRIAGE RETURN
                                      31 => x"0A",  -- LINE FEED
                                       
                                      32 => x"30",  -- 0
                                      33 => x"31",  -- 1
                                      34 => x"32",  -- 2
                                      35 => x"33",  -- 3
                                      36 => x"34",  -- 4
                                      37 => x"35",  -- 5
                                      38 => x"36",  -- 6
                                      39 => x"37",  -- 7
                                      40 => x"38",  -- 8
                                      41 => x"39",  -- 9
                                      42 => x"3A",  -- :
                                      43 => x"3B",  -- ;
                                      44 => x"3C",  -- <
                                      45 => x"3D",  -- =
                                      46 => x"0D",  -- CARRIAGE RETURN 
                                      47 => x"0A",  -- LINE FEED
                                       
                                      48 => x"4F",  -- O
                                      49 => x"50",  -- P
                                      50 => x"51",  -- Q
                                      51 => x"52",  -- R
                                      52 => x"53",  -- S
                                      53 => x"54",  -- T
                                      54 => x"55",  -- U
                                      55 => x"56",  -- V
                                      56 => x"57",  -- W
                                      57 => x"58",  -- X
                                      58 => x"59",  -- Y
                                      59 => x"5A",  -- Z
                                      60 => x"79",  -- y
                                      61 => x"7A",  -- z
                                      62 => x"0D",  -- CARRIAGE RETURN
                                      63 => x"0A",  -- LINE FEED
                                      
                                      others => x"00");
```

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board
- Intel Quartus Prime 20.1
- Signal Tap Logic Analyzer 
- CH340 USB-TTL Converter
- Hynix HY57V641620ETP-H SDRAM (on the FPGA board)
- PuTTY

## Project file structure  
- The ``VHDL`` design files are located in the ``src`` and ``lib`` directories  
- The top-level design is the ``sdram_uart_main.vhd``  
- The other modules or design files are located in the ``lib`` directory  
- Testbenches are located in the ``simulation/testbench`` directory  
- The ``simulation/testbench/sdram_behavioural_model/sdram_model.vhd`` is a non-synthesizable HDL code that mimics the behaviour of an actual SDRAM using the working principle of a block RAM. Since the SDRAM is external to the FPGA, there is no direct way of verifying the correctness of the SDRAM controller in simulation without creating a behavioural HDL model to emulate its modes operation.  
```
.
├── constraints
│   └── sdram_uart_main.sdc
├── README.md
├── sdram_uart_main.tcl
├── signal_tap
│   └── sdram_uart.stp
├── simulation
│   ├── sdram.do
│   └── testbench
│       ├── pack_tb_body.vhd
│       ├── pack_tb_header.vhd
│       ├── sdram_behavioural_model
│       │   └── sdram_model.vhd
│       └── sdram_controller_tb.vhd
└── src
    ├── lib
    │   ├── button.vhd
    │   ├── data_source.vhd
    │   ├── fifo
    │   │   ├── fifo_control.vhd
    │   │   ├── fifo_main.vhd
    │   │   └── fifo_ram.vhd
    │   ├── pkg.vhd
    │   ├── pll
    │   │   ├── pll.cmp
    │   │   ├── pll.ppf
    │   │   ├── pll.qip
    │   │   └── pll.vhd
    │   ├── sdram_controller.vhd
    │   └── uart_tx.vhd
    └── sdram_uart_main.vhd
```

## Building the project from a TCL script  
Ensure you're in the ``EP4CE6_Projects/P13_SDRAM/`` directory before running the commands below.  
```
1. mkdir build  
2. cd build
3. quartus_sh -t ../sdram_uart_main.tcl
4. quartus sdram_uart_main.qpf
```

## What to do when Quartus opens  
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``  

## Pinouts   
From the ``sdram_uart_main.tcl`` file:  
```
set_location_assignment PIN_88 -to buttons[0]
set_location_assignment PIN_91 -to buttons[1]
set_location_assignment PIN_59 -to addr[11]
set_location_assignment PIN_75 -to addr[10]
set_location_assignment PIN_60 -to addr[9]
set_location_assignment PIN_64 -to addr[8]
set_location_assignment PIN_65 -to addr[7]
set_location_assignment PIN_66 -to addr[6]
set_location_assignment PIN_67 -to addr[5]
set_location_assignment PIN_68 -to addr[4]
set_location_assignment PIN_83 -to addr[3]
set_location_assignment PIN_80 -to addr[2]
set_location_assignment PIN_77 -to addr[1]
set_location_assignment PIN_76 -to addr[0]
set_location_assignment PIN_74 -to bank[1]
set_location_assignment PIN_73 -to bank[0]
set_location_assignment PIN_70 -to cas_n
set_location_assignment PIN_58 -to cke
set_location_assignment PIN_23 -to clk
set_location_assignment PIN_72 -to cs_n
set_location_assignment PIN_44 -to dq[15]
set_location_assignment PIN_46 -to dq[14]
set_location_assignment PIN_49 -to dq[13]
set_location_assignment PIN_50 -to dq[12]
set_location_assignment PIN_51 -to dq[11]
set_location_assignment PIN_52 -to dq[10]
set_location_assignment PIN_53 -to dq[9]
set_location_assignment PIN_54 -to dq[8]
set_location_assignment PIN_39 -to dq[7]
set_location_assignment PIN_38 -to dq[6]
set_location_assignment PIN_34 -to dq[5]
set_location_assignment PIN_33 -to dq[4]
set_location_assignment PIN_32 -to dq[3]
set_location_assignment PIN_31 -to dq[2]
set_location_assignment PIN_30 -to dq[1]
set_location_assignment PIN_28 -to dq[0]
set_location_assignment PIN_42 -to ldqm
set_location_assignment PIN_55 -to udqm
set_location_assignment PIN_71 -to ras_n
set_location_assignment PIN_25 -to rst_n
set_location_assignment PIN_69 -to we_n
set_location_assignment PIN_43 -to sclk
set_location_assignment PIN_115 -to uart_out
```

## Video Demo  
- [FPGA + SDRAM + UART intro](https://drive.google.com/file/d/1Q0aF_pKKTpE8kjtteRTlMMbw9UD-2cdN/view?usp=sharing)  
- [FPGA + SDRAM + UART demo](https://drive.google.com/file/d/1UTwjL2Go0Yo00Y_TW7jsJJBXwxKjUPyz/view?usp=sharing)  
- [Using the Signal Tap Logic Analyzer](https://drive.google.com/file/d/1tOhgmP-M25bKoNxMrgj8BRlLRTDUJhxo/view?usp=sharing)    

## Helpful resource(s)  
- [SDRAM Wikipedia](https://en.wikipedia.org/wiki/Synchronous_dynamic_random-access_memory)
- [A Practical Introduction to SDR SDRAM Memories Using an FPGA](https://www.hackster.io/salvador-canas/a-practical-introduction-to-sdr-sdram-memories-using-an-fpga-8f5949)    
- [Matthew Hagerty: FPGA VHDL SDRAM Controller](https://dnotq.io/sdram/sdram.html)
- [Hynix HY57V641620ETP-H SDRAM Datasheet](https://drive.google.com/file/d/1KJ6eZQNpEoCSRrVL5XWgRT3wEJ9XMWKl/view?usp=sharing)
- [Micron Synchronous DRAM: MT48LC Series Datasheet](https://drive.google.com/file/d/1-jcAcKIaVkb3LXomLF-RawIMkeygFJGp/view?usp=sharing)     

## Simulating the project with Modelsim  
Ensure you're in the ``EP4CE6_Projects/P13_SDRAM/simulation/`` directory before proceeding to the next steps.  
The ``.do`` macro files are scripts that contain commands ModelSim uses to compile design files and testbenches. These scripts automate the simulation process by preventing the need to open the ModelSim GUI. For projects with multiple ``.do`` files, the process of executing one script is applicable to the rest. Therefore, the simulation procedure for one script is shown below.  

Procedure for the ``sdram.do`` script  
```
mkdir build
cd build
vsim -c -do "do ../sdram.do; quit"  

