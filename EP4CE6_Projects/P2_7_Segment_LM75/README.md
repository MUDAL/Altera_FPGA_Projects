# Interfacing the EP4CE6 FPGA board with an LM75 temperature sensor and a 4-digit 7-segment display  

## Description    
- Implementing a digital thermometer using an EP4CE6 FPGA board, an LM75 sensor, and a 7-segment display

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board  
- Intel Quartus Prime 20.1  

## How to use  
- Clone the ``Altera_FPGA_Projects`` repository  
- Open the the ``EP4CE6_Projects/P2_7_Segment_LM75/`` directory  
- Open the ``digital_thermometer.qpf`` project file  
- Intel Quartus Prime should open after the previous step  
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``

To run the demo, you can just go straight to the programming step and skip the compilation since it has already been done.  

## Project file structure  
- The **VHDL** design files are located in the **src** and **lib** directories  
- The top-level design is the **digital_thermometer.vhd**  
- The other modules or design files are located in the **lib** directory  

## Video demo  
[FPGA and LM75 demo](https://drive.google.com/file/d/1IZYVgDwNJIAutpPY_AHlGprcI9oUSNfm/view?usp=sharing)




