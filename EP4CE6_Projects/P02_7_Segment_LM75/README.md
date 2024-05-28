# Interfacing the EP4CE6 FPGA board with an LM75 temperature sensor and a 4-digit 7-segment display  

## Description    
- Implementing a digital thermometer using an EP4CE6 FPGA board, an LM75 sensor, and a 7-segment display

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board  
- Intel Quartus Prime 20.1  

## How to use  
- Clone the ``Altera_FPGA_Projects`` repository  
- Open the ``EP4CE6_Projects/P02_7_Segment_LM75/Version_x/`` directory  
- Open the ``digital_thermometer.qpf`` project file  
- Intel Quartus Prime should open after the previous step  
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start`` 

## Versions  
- Version 1 uses a brute force algorithm for the binary to BCD conversion.  
- Version 2 uses the ``double dabble algorithm`` for binary to BCD conversion.  
- You can compare the resource utilization and Fmax of both designs.  

## Project file structure  
- The **VHDL** design files are located in the **src** and **lib** directories  
- The top-level design is the **digital_thermometer.vhd**  
- The other modules or design files are located in the **lib** directory  

## Video demo  
[FPGA and LM75 demo](https://drive.google.com/file/d/1eEwnFMIoJQOzV3jgmHSaW-fhe6PS-aEH/view?usp=sharing)  

## Pinouts  
- Check the **Location** column in the image below for the pin mappings used in this project.  
![PP_2](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/69888839-1d70-479d-b965-18ce3b878e52)

## Logic Analyzer Scans (Debugging the I2C protocol)   
### 30.5 degree Celsius  
![Screenshot (568)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/99c43e05-9284-4f83-bfe3-3452989f7fa0)  
### 31.0 degree Celsius  
![Screenshot (569)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/d1f9fd36-ad73-4fa7-81fe-b4e39451b401)  
### 33.5 degree Celsius  
![Screenshot (497)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/a03eb5cb-55f9-42f9-89a0-6e393c078cd2)  
### 34.0 degree Celsius  
![Screenshot (498)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/737295c3-3c22-4a44-a117-4e0d68ca2b44)  
### 34.5 degree Celsius  
![Screenshot (499)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/2a40ac7e-20c9-48a8-ab4e-5c4138f61a2e)   

## Helpful resource(s)  
- [NXP I2C specification](https://drive.google.com/file/d/1EDwk_8Na_DUPKeOmK8ht-_JMiNgwNDw2/view?usp=drive_link)
- [LM75 datasheet](https://drive.google.com/file/d/1u7oas4GsBgyu3CEFFpHg-WD4h4YXIpEZ/view?usp=drive_link)  
- FPGA Prototyping By VHDL Examples (Xilinx Spartan-3 Version) - Pong P. Chu (Check Binary-BCD Conversion Circuit)  
- [Double Dabble Algorithm](https://www.youtube.com/watch?v=eXIfZ1yKFlA&t=186s)  
- [Driving a 7-Segment Display](https://www.electronics-tutorials.ws/blog/7-segment-display-tutorial.html)  
