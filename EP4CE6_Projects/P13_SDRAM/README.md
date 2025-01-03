# Interfacing the EP4CE6 FPGA board with an SDRAM
 
## Description    
[TO BE ADDED]  
![sdram_controller_flowchart drawio_page-0001](https://github.com/user-attachments/assets/f293b8dc-ebec-4dbd-8c5b-98ab187111dd)  
![Screenshot (635)](https://github.com/user-attachments/assets/d2ff5056-06fe-4801-97c6-8372c032a13a)  

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board
- Intel Quartus Prime 20.1
- Signal Tap Logic Analyzer 
- CH340 USB-TTL Converter
- Hynix HY57V641620ETP-H SDRAM (on the FPGA board)
- PuTTY

## How to use  
- Clone the ``Altera_FPGA_Projects`` repository  
- Open the ``EP4CE6_Projects/P13_SDRAM/`` directory  
- Open the ``sdram_uart_main.qpf`` project file  
- Intel Quartus Prime should open after the previous step  
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start`` 

## Project file structure  
- The ``VHDL`` design files are located in the ``src`` and ``lib`` directories  
- The top-level design is the ``sdram_uart_main.vhd``  

## Pinouts   
From the ``sdram_uart_main.qsf`` file:
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
[TO BE ADDED] 

## RTL compilation report
### 1. Resource utilization    
![Screenshot (633)](https://github.com/user-attachments/assets/6152fa4e-2398-42bd-9f61-644ceef6163c)  

### 2. Timing report  
![Screenshot (634)](https://github.com/user-attachments/assets/811ff500-41d0-45fe-9b29-d8f1cc9fa9b2)  

## Helpful resource(s)  
- [SDRAM Wikipedia](https://en.wikipedia.org/wiki/Synchronous_dynamic_random-access_memory)
- [A Practical Introduction to SDR SDRAM Memories Using an FPGA](https://www.hackster.io/salvador-canas/a-practical-introduction-to-sdr-sdram-memories-using-an-fpga-8f5949)    
- [Matthew Hagerty: FPGA VHDL SDRAM Controller](https://dnotq.io/sdram/sdram.html)
- [Hynix HY57V641620ETP-H SDRAM Datasheet](https://drive.google.com/file/d/1KJ6eZQNpEoCSRrVL5XWgRT3wEJ9XMWKl/view?usp=sharing)
- [Micron Synchronous DRAM: MT48LC Series Datasheet](https://drive.google.com/file/d/1-jcAcKIaVkb3LXomLF-RawIMkeygFJGp/view?usp=sharing)     
