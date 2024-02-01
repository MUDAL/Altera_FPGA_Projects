# Interfacing the EP4CE6 FPGA board with a 4-digit 7-segment display  

## Task  
- Implementing a 0000 to 9999 counter on an FPGA and displaying the counts on a 7-segment display.
- The counter increments every second and rolls over to 0000 after 9999.

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board  
- Intel Quartus Prime 20.1  

## How to use  
- Clone the ``Altera_FPGA_Projects`` repository  
- Open the the ``EP4CE6_Projects/P1_7_Segment/`` directory  
- Open the ``seg_display.qpf`` project file  
- Intel Quartus Prime should open after the previous step  
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``

To run the demo, you can just go straight to the programming step and skip the compilation since it has already been done.  

## Project file structure  
- The **VHDL** design files are located in the **src** directory  
- The top-level design is the **seg_display.vhd**  



