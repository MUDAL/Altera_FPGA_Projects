# Interfacing the EP4CE6 FPGA board with an LM75 temperature sensor and a 4-digit 7-segment display  

## Description    
- Implementing a digital thermometer using an EP4CE6 FPGA board, an LM75 sensor, and a 7-segment display

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board  
- Intel Quartus Prime 20.1  

## How to use  
- Clone the ``Altera_FPGA_Projects`` repository  
- Open the ``EP4CE6_Projects/P2_7_Segment_LM75/`` directory  
- Open the ``digital_thermometer.qpf`` project file  
- Intel Quartus Prime should open after the previous step  
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start`` 

## Project file structure  
- The **VHDL** design files are located in the **src** and **lib** directories  
- The top-level design is the **digital_thermometer.vhd**  
- The other modules or design files are located in the **lib** directory  

## Video demo  
[FPGA and LM75 demo](https://drive.google.com/file/d/1IZYVgDwNJIAutpPY_AHlGprcI9oUSNfm/view?usp=sharing)

## Pinouts  
- Check the **Location** column in the image below for the pin mappings used in this project.  
![PP_2](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/69888839-1d70-479d-b965-18ce3b878e52)

## Logic Analyzer Scans (Debugging the I2C protocol)  
The data received from the LM75 sensor during this scan was 0x20 which translates to 32 in decimal. Therefore,  
the temperature at that point was 32 degrees Celsius.
### 1. Start condition
![i2c_start](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/9b604072-3510-46fc-86c2-94f13696dc7b)   

### 2. Stop condition
![i2c_stop](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/7a26e543-74b4-4dd9-b4a5-3793e2226d4d)  

## Helpful resource(s)  
- [NXP I2C specification](https://drive.google.com/file/d/1EDwk_8Na_DUPKeOmK8ht-_JMiNgwNDw2/view?usp=drive_link)
- [LM75 datasheet](https://drive.google.com/file/d/1u7oas4GsBgyu3CEFFpHg-WD4h4YXIpEZ/view?usp=drive_link)  
