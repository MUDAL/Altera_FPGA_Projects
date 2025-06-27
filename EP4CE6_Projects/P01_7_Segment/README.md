# Interfacing the EP4CE6 FPGA board with a 4-digit 7-segment display  

## Description    
- Implementing a 0000 to 9999 counter on an FPGA and displaying the counts on a 7-segment display.
- The counter increments every second and rolls over to 0000 after 9999.

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board  
- Intel Quartus Prime 20.1  

## Project file structure  
- The ``VHDL`` design files are located in the ``src`` and ``lib`` directories    
- The top-level design is the ``seg_display.vhd``  
- The other modules or design files are located in the ``lib`` directory  
```
.
├── README.md
├── seg_display.tcl
└── src
    ├── lib
    │   ├── seg_counter.vhd
    │   └── seg_rom.vhd
    └── seg_display.vhd
```

## Building the project from a TCL script  
Ensure you're in the ``EP4CE6_Projects/P01_7_Segment/`` directory before running the commands below.  
```
1. mkdir build  
2. cd build
3. quartus_sh -t ../seg_display.tcl
4. quartus seg_display.qpf
```

## What to do when Quartus opens    
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``

## Video demo  
[Demo of 0000-9999 counter](https://drive.google.com/file/d/18HfrSjUTn52hrJCpAqxuSTBJbvyD67L0/view?usp=sharing)  

## Pinouts  
- Check the ``Location`` column in the image below for the pin mappings used in this project.  
![PP_1](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/7777a5f1-e19d-4855-8cc9-40cfad824e8b)

## Helpful resource(s)  
[Driving a 7-Segment Display](https://www.electronics-tutorials.ws/blog/7-segment-display-tutorial.html)  
