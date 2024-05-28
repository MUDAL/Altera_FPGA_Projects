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
- Open the ``EP4CE6_Projects/P03_7_Segment_DHT22/Version_x/`` directory  
- Open the ``weather_sensor.qpf`` project file  
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
- The top-level design is the **weather_sensor.vhd**  
- The other modules or design files are located in the **lib** directory  

## Timing verification with a logic analyzer  
The DHT22 sensor operates loosely on the 1-Wire protocol. Since it doesn't use a standard variant that is supported  
by the logic analyzer, the logic analyzer wouldn't decode the data. However, the logic analyzer will display the  
waveforms properly and with the correct timings. The image(s) show the distinction between a logic 0 and 1 for the  
DHT22 sensor.  
```
Minimum pulse widths  
Bit 0: 26-28uS high pulse after initial 50uS low pulse for each DHT22 bit  
Bit 1: 69-71uS high pulse after initial 50uS low pulse for each DHT22 bit  
```
![Screenshot (575)_LI](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/fcbcbd65-3bc4-4c4f-b830-f244342c420e)   

## Video demo  
[FPGA and DHT22 demo](https://drive.google.com/file/d/1tKdiLZJzvGX-FAQMI-R3c6fMzs4Az06o/view?usp=sharing)  

## Pinouts  
- Check the **Location** column in the image below for the pin mappings used in this project.  
![dht22_PP (2)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/081db829-68f9-4ac4-bff6-af8171f3b195)  

## Helpful resource(s)  
- [DHT22 datasheet](https://drive.google.com/file/d/1UODtRw4yKURxbqgQWCb-GDCVGRq6kBUn/view?usp=sharing)   
- FPGA Prototyping By VHDL Examples (Xilinx Spartan-3 Version) - Pong P. Chu (Check Binary-BCD Conversion Circuit)  
- [Double Dabble Algorithm](https://www.youtube.com/watch?v=eXIfZ1yKFlA&t=186s)  
- [Driving a 7-Segment Display](https://www.electronics-tutorials.ws/blog/7-segment-display-tutorial.html)  
