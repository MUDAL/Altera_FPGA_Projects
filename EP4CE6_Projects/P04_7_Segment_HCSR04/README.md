# Interfacing the EP4CE6 FPGA board with an HCSR04 sensor and a 4-digit 7-segment display  

## Description    
- Measuring distance in centimeters using an EP4CE6 FPGA board, an HCSR04 sensor, and a 7-segment display

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board
- HCSR04 ultrasonic sensor
- Wires  
- Intel Quartus Prime 20.1  

## Project file structure  
- The ``VHDL`` design files are located in the ``src`` and ``lib`` directories  
- The top-level design is the ``distance_sensor.vhd``  
- The other modules or design files are located in the ``lib`` directory  
```
.
├── README.md
├── Version_1
│   ├── distance_sensor.tcl
│   └── src
│       ├── distance_sensor.vhd
│       └── lib
│           ├── dec_to_bcd.vhd
│           ├── hcsr04.vhd
│           ├── seg_display.vhd
│           └── seg_rom.vhd
└── Version_2
    ├── distance_sensor.tcl
    └── src
        ├── distance_sensor.vhd
        └── lib
            ├── bin_to_bcd.vhd
            ├── hcsr04.vhd
            ├── seg_display.vhd
            └── seg_rom.vhd
```

## Building the project from a TCL script  
Ensure you're in the ``EP4CE6_Projects/P04_7_Segment_HCSR04/Version_x`` directory before running the commands below.  
```
1. mkdir build  
2. cd build
3. quartus_sh -t ../distance_sensor.tcl
4. quartus distance_sensor.qpf
```

## What to do when Quartus opens   
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``   

## Versions  
- Version 1 uses a brute force algorithm for the binary to BCD conversion.  
- Version 2 uses the ``double dabble`` algorithm for binary to BCD conversion.  
- You can compare the resource utilization and ``Fmax`` of both designs.  

## Video demo  
[FPGA and HCSR04](https://drive.google.com/file/d/1daxeoCYMT9oGF4qxWWH_68sKgZeNWnto/view?usp=sharing)  

## Pinouts  
- Check the ``Location`` column in the image below for the pin mappings used in this project.    
![PP_4](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/15e88835-f6bf-49bd-af3e-d34e7ea3d236)   

## Verification with an Oscilloscope  
```
Distance (in centimeters) ~= pulse width (in microseconds) / 58.
For a distance of 226.2 cm, the width of the echo pulse should be 13.1 ms approximately.
For more information on how to calculate the distance, kindly refer to the datasheet.  
```
![image](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/611ff037-3cfc-4fd0-89de-83d912101b7f)  

## Helpful resource(s)  
- [HCSR04 datasheet](https://drive.google.com/file/d/16QAANfYQO59LjlhRBzEFDkZxpB2MxlI5/view?usp=sharing)   
- FPGA Prototyping By VHDL Examples (Xilinx Spartan-3 Version) - Pong P. Chu (Check Binary-BCD Conversion Circuit)  
- [Double Dabble Algorithm](https://www.youtube.com/watch?v=eXIfZ1yKFlA&t=186s)  
- [Driving a 7-Segment Display](https://www.electronics-tutorials.ws/blog/7-segment-display-tutorial.html)  
