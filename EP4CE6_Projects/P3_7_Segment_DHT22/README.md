# Interfacing the EP4CE6 FPGA board with a DHT22 sensor and a 4-digit 7-segment display  

## Description    
- Implementing a temperature and humidity measurement system using an EP4CE6 FPGA board, a DHT22 sensor, and a 7-segment display

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board
- DHT22 Humidity and Temperature sensor
- Wires  
- Intel Quartus Prime 20.1  

## How to use  
- Clone the ``Altera_FPGA_Projects`` repository  
- Open the the ``EP4CE6_Projects/P3_7_Segment_DHT22/`` directory  
- Open the ``weather_sensor.qpf`` project file  
- Intel Quartus Prime should open after the previous step  
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``

To run the demo, you can just go straight to the programming step and skip the compilation since it has already been done.  

## Project file structure  
- The **VHDL** design files are located in the **src** and **lib** directories  
- The top-level design is the **weather_sensor.vhd**  
- The other modules or design files are located in the **lib** directory  

## Video demo  
[FPGA and DHT22 demo](https://drive.google.com/file/d/1Pk7GPQSu7bS2-IVy8dPdvYJIUd7pJAdc/view?usp=sharing)  




