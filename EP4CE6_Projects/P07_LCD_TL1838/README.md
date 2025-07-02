# Interfacing an FPGA with a TL1838 IR receiver and 16x2 LCD    
## Description  
Decoding IR signals from a TL1838 IR receiver using an EP4CE6 FPGA and displaying the decoded data on an LCD.  
The IR signals being decoded are transmitted by a remote that is based on the ``NEC`` protocol. When the IR remote's  
keys are pressed, pulse distance encoded signals are sent to the IR receiver for demodulation. The demodulated signals   
(output of the IR receiver) are decoded by the FPGA to determine the key that was pressed. Once the signals for the  
numeric keys are decoded, the corresponding numbers will be displayed on the LCD. The ``PREV`` and ``NEXT`` keys are 
used in selecting the first and second rows of the LCD for data display, while other non-numeric keys will clear the  
display when pressed.     

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board
- 16x2 LCD
- IR remote (NEC protocol compliant)  
- Intel Quartus Prime 20.1
- ModelSim (for simulation)  

## Project file structure  
- The VHDL design files are located in the ``src`` and ``lib`` directories  
- The top-level design is the ``ir_lcd_main.vhd``  
- The other modules or design files are located in the ``lib`` directory
- Testbenches are located in the ``simulation/testbench`` directory
- Test vectors for each module in the design can be found in the directories within the ``simulation/file/`` directory.  
```
.
├── ir_lcd_main.tcl
├── README.md
├── simulation
│   ├── file
│   │   ├── ir
│   │   │   ├── expected_outputs.txt
│   │   │   ├── status_reports.txt
│   │   │   └── testcases.txt
│   │   ├── ir_lcd
│   │   │   ├── expected_outputs.txt
│   │   │   ├── status_reports.txt
│   │   │   └── testcases.txt
│   │   ├── lcd
│   │   │   ├── expected_outputs.txt
│   │   │   ├── status_reports.txt
│   │   │   └── testcases.txt
│   │   └── main
│   │       ├── expected_outputs.txt
│   │       ├── status_reports.txt
│   │       └── testcases.txt
│   ├── ir.do
│   ├── ir_lcd.do
│   ├── lcd.do
│   ├── main.do
│   └── testbench
│       ├── ir_lcd_main_tb.vhd
│       ├── lcd_driver_tb.vhd
│       ├── pack_tb_body.vhd
│       ├── pack_tb_header.vhd
│       ├── tl1838_decoder_tb.vhd
│       └── tl1838_lcd_interface_tb.vhd
└── src
    ├── ir_lcd_main.vhd
    └── lib
        ├── lcd_driver.vhd
        ├── tl1838_decoder.vhd
        └── tl1838_lcd_interface.vhd
```

## Building the project from a TCL script  
Ensure you're in the ``EP4CE6_Projects/P07_LCD_TL1838/`` directory before running the commands below.  
```
1. mkdir build  
2. cd build
3. quartus_sh -t ../ir_lcd_main.tcl
4. quartus ir_lcd_main.qpf
```

## What to do when Quartus opens    
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``

## Pinouts  
- Check the ``Location`` column in the image below for the pin mappings used in this project.   
![ir_lcd_main](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/41ac8c2d-b343-4167-b42b-620e50b5457f)   

## NEC protocol decoding with a DSO150 oscilloscope     
From the oscilloscope's waveform, we can see that the signal starts with an initial low pulse of about 9 ms, followed  
by a high pulse of about 4.5 ms as expected (according to the NEC protocol). The data line is idle high.    
![NEC](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/8e3bbd63-6ec4-4dc6-a570-4563cf178864)  

## Setup    
![20240410_083308](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/13abb2c0-a762-499d-b388-083469d9e9a7)  

## Demo  
[Video Demo](https://drive.google.com/file/d/16wB_Ut3Pbu6KI1LPfc0oO00kMDnGC6wa/view?usp=sharing)    

## Helpful resources  
- [NEC Protocol](https://techdocs.altium.com/display/FPGA/NEC%2bInfrared%2bTransmission%2bProtocol)  
- [NEC Protocol and IR Key Codes](https://exploreembedded.com/wiki/NEC_IR_Remote_Control_Interface_with_8051)  
- [TL1838 Datasheet](https://drive.google.com/file/d/1RJ-HkZsTznqVyAxnRvhQzwTLbh1ikSYC/view?usp=sharing)  
- [HD44780 Datasheet](https://drive.google.com/file/d/1kYVwqbIjYVIVPkjs03y40AUIAiwOctcV/view?usp=drive_link)    

## Simulating the project with Modelsim  
Ensure you're in the ``EP4CE6_Projects/P07_LCD_TL1838/simulation/`` directory before proceeding to the next steps.  
The ``.do`` macro files are scripts that contain commands ModelSim uses to compile design files and testbenches. These scripts automate the simulation process by preventing the need to open the ModelSim GUI. For projects with multiple ``.do`` files, the process of executing one script is applicable to the rest. Therefore, the simulation procedure for one script is shown below.  

Procedure for the ``lcd.do`` script (Same for the other scripts).  
```
mkdir build
cd build
vsim -c -do "do ../lcd.do; quit"
```
Do not panic if the following output shows up on the command line: ``# ** Failure: Simulation done``. This is a VHDL quirk. However, you need to ensure no test fails. Simulation results can be found in the ``status_reports.txt`` files. Refer to the tree diagram in the [Project file structure](#project-file-structure) section of this README document.   
