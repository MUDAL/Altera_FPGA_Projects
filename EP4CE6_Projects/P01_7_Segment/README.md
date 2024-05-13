# Interfacing the EP4CE6 FPGA board with a 4-digit 7-segment display  

## Description    
- Implementing a 0000 to 9999 counter on an FPGA and displaying the counts on a 7-segment display.
- The counter increments every second and rolls over to 0000 after 9999.

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board  
- Intel Quartus Prime 20.1  

## How to use  
- Clone the ``Altera_FPGA_Projects`` repository  
- Open the ``EP4CE6_Projects/P01_7_Segment/`` directory  
- Open the ``seg_display.qpf`` project file  
- Intel Quartus Prime should open after the previous step  
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``

## Project file structure  
- The **VHDL** design files are located in the **src** directory  
- The top-level design is the **seg_display.vhd**

## Video demo  
[Demo of 0000-9999 counter](https://drive.google.com/file/d/18HfrSjUTn52hrJCpAqxuSTBJbvyD67L0/view?usp=sharing)  

## Pinouts  
- Check the Location column in the image below for the pin mappings used in this project.  
![PP_1](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/7777a5f1-e19d-4855-8cc9-40cfad824e8b)



