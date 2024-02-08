# Interfacing the EP4CE6 FPGA board with an HCSR04 sensor and a 4-digit 7-segment display  

## Description    
- Implementing a distance measurement system using an EP4CE6 FPGA board, an HCSR04 sensor, and a 7-segment display

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board
- HCSR04 ultrasonic sensor
- Wires  
- Intel Quartus Prime 20.1  

## How to use  
- Clone the ``Altera_FPGA_Projects`` repository  
- Open the the ``EP4CE6_Projects/P4_7_Segment_HCSR04/`` directory  
- Open the ``distance_sensor.qpf`` project file  
- Intel Quartus Prime should open after the previous step  
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start`` 

## Project file structure  
- The **VHDL** design files are located in the **src** and **lib** directories  
- The top-level design is the **distance_sensor.vhd**  
- The other modules or design files are located in the **lib** directory  

## Video demo  
![FPGA and HCSR04](https://drive.google.com/file/d/1daxeoCYMT9oGF4qxWWH_68sKgZeNWnto/view?usp=sharing)  

## Pinouts  
- Check the **Location** column in the image below for the pin mappings used in this project.    
![PP_4](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/15e88835-f6bf-49bd-af3e-d34e7ea3d236)  



