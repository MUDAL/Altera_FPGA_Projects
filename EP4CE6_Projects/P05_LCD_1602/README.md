# Interfacing FPGA with 16x2 LCD module 

## Description    
- Driving a 16x2 LCD module with an EP4CE6 FPGA board.
- Displaying ``HELLO WORLD`` on the first line and ``RJX`` on the second.  

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board
- 16x2 LCD
- Intel Quartus Prime 20.1  

## Project file structure  
- The ``VHDL`` design files are located in the ``src`` and ``lib`` directories  
- The top-level design is the ``lcd_main.vhd``  
- The other modules or design files are located in the ``lib`` directory  
```
.
├── lcd_main.tcl
├── README.md
└── src
    ├── lcd_main.vhd
    └── lib
        ├── lcd_driver.vhd
        └── prog_mem.vhd
```

## Building the project from a TCL script  
Ensure you're in the ``EP4CE6_Projects/P05_LCD_1602/`` directory before running the commands below.  
```
1. mkdir build  
2. cd build
3. quartus_sh -t ../lcd_main.tcl
4. quartus lcd_main.qpf
```

## What to do when Quartus opens    
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``

## Pinouts  
- Check the ``Location`` column in the image below for the pin mappings used in this project.    
![PP_5](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/2e42a448-83b7-41f6-9ed2-506079b5d871)

## Timing verification with a logic analyzer  
### 1. Delay after 1st ``Function Set`` instruction (~ 4.5 ms)  
![lcd_1](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/f34fe7a0-cd06-4b00-8505-6dae3be1ca59)  
### 2. Execution time for the ``Clear Display`` instruction (~ 1.665 ms)  
![lcd_2](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/e3971d5c-f749-4949-8eb2-14e8f0791ef7)  
### 3. Execution time for other instructions except ``Return Home`` (~ 45 uS)  
![lcd_3](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/fad6df68-e933-4662-a3af-8fd93ceef4cc)  

## Demo  
![fpga_lcd](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/add71547-826c-44c8-8487-06129b02a6c7)  

## Helpful resource(s)  
[HD44780 datasheet](https://drive.google.com/file/d/1kYVwqbIjYVIVPkjs03y40AUIAiwOctcV/view?usp=sharing)  




