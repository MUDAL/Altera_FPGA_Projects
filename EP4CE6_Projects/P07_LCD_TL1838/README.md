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

## How to use  
- Clone the ``Altera_FPGA_Projects`` repository   
- Open the ``EP4CE6_Projects/P07_LCD_TL1838/`` directory  
- Open the ``ir_lcd_main.qpf`` project file   
- Intel Quartus Prime should open after the previous step   
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``

## Project file structure  
- The VHDL design files are located in the ``src`` and ``lib`` directories  
- The top-level design is the ``ir_lcd_main.vhd``  
- The other modules or design files are located in the ``lib`` directory
- Testbenches are located in the ``simulation/testbench`` directory
- Test vectors for each module in the design can be found in the ``simulation/file/`` directory

## Pinouts  
- Check the ``Location`` column in the image below for the pin mappings used in this project.   
![ir_lcd_main](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/41ac8c2d-b343-4167-b42b-620e50b5457f)   

## NEC protocol decoding with a DSO150 oscilloscope     
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
