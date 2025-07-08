# PS/2 to USB conversion using an FPGA and a microcontroller       
## Description  
This task involves configuring an FPGA as a PS/2-to-UART converter that decodes signals from a PS/2 keyboard and transfers the decoded data to an STM32F103 microcontroller via UART. The microcontroller receives the decoded PS/2 signals (scan codes) and converts them to USB HID reports that will be sent to a computer. To sum up, the project enables a PS/2 keyboard to communicate with a computer through the computer's USB port using the FPGA and microcontroller as a PS/2-to-USB bridge (or interface).  

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board
- A Microcontroller (an STM32F103 Blue Pill board was used)
- STM32CubeIDE (v1.6.0 was used)  
- A PS/2 Keyboard    
- Intel Quartus Prime 20.1  
- ModelSim (for simulation)  

## Project file structure (RTL)   
- The VHDL design files are located in the ``src`` and ``lib`` directories  
- The top-level design is the ``ps2_uart_main.vhd``  
- The other modules or design files are located in the ``lib`` directory
- Testbenches are located in the ``simulation/testbench`` directory
- Test vectors for each module in the design can be found in the directories within the ``simulation/file/`` directory.  
- Test vectors are generated using the python script in the ``simulation/python_scripts/`` directory  

```
.
├── ps2_uart_main.tcl
├── simulation
│   ├── main.do
│   ├── ps2.do
│   ├── python_scripts
│   │   ├── main_testvectors.py
│   │   ├── ps2_testvectors.py
│   │   └── uart_testvectors.py
│   ├── testbench
│   │   ├── pack_tb_body.vhd
│   │   ├── pack_tb_header.vhd
│   │   ├── ps2_tb.vhd
│   │   ├── ps2_uart_main_tb.vhd
│   │   └── uart_tb.vhd
│   └── uart.do
└── src
    ├── lib
    │   ├── ps2.vhd
    │   └── uart.vhd
    └── ps2_uart_main.vhd
```

## How to use  
### 1. Setting up the FPGA  
### a. Building the project from a TCL script  
Ensure you're in the ``EP4CE6_Projects/P09_PS2_USB/RTL/`` directory before running the commands below.  
```
1. mkdir build  
2. cd build
3. quartus_sh -t ../ps2_uart_main.tcl
4. quartus ps2_uart_main.qpf
```
### b. What to do when Quartus opens    
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``

### 2. Setting up the microcontroller  
- Open the ``EP4CE6_Projects/P09_PS2_USB/MCU/UART_USB`` directory
- If you have ``STM32CubeIDE`` installed, you can open the project, compile the source code, and flash the STM32 MCU  

## Pinouts  
- Check the ``Location`` column in the image below for the pin mappings used in this project.      
![Screenshot (506)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/afd8d1e4-497f-4943-9ea2-0cd6bd13e7fc)  

## Decoding the FPGA design (PS/2-to-UART interface)  
![Screenshot (507)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/d3b84650-86d8-4381-b935-5300a6171b16)   
  
## Demo  
[Video Demo](https://drive.google.com/file/d/17dOrSqlr-xDw76ZnJK9NwBabNZB0npRc/view?usp=sharing)        

## Project Setup  
![20240427_181320](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/27cece61-abb1-4e53-8746-534403732a88)  
![20240427_181233](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/f65fe8f3-8a53-4002-bcfe-3fec135f7642)  
![20240427_181252](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/ca7db8da-da42-43e9-ab69-ceb9f32889a9)  

## Helpful resources  
- [PS/2 Protocol Timing](http://www.pyroelectro.com/tutorials/ps2_keyboard_interface/theory.html)  
- [PS/2 Keyboard Scan Codes](https://techdocs.altium.com/display/FPGA/PS2+Keyboard+Scan+Codes)
- [STM32 as a USB HID Keyboard](https://www.youtube.com/watch?v=tj1_hsQ5PR0&list=PLfIJKC1ud8ggIvCHlwZv0W25JjQ4Hc3aT&index=4&t=574s)   
- [USB HID Usage Tables](https://drive.google.com/file/d/17hRtNIAqpqUihBY9VkXl9vElMqQnp7lT/view?usp=sharing) [See Chapter 10]  
- [USB Device Class Definition for Human Interface Devices (HID)](https://drive.google.com/file/d/1BABTfBDyvYt_BpdM_NCTHxbm8gGNLNiA/view?usp=sharing) [See pg. 56, 59, 60, 69]  
- FPGA Prototyping By VHDL Examples (Xilinx Spartan-3 Version) - Pong P. Chu (Check timing diagrams for UART and PS/2)  
- [STM32F103C8 Datasheet](https://drive.google.com/file/d/1Rm6P6-ArzKIR0c0EaC8duT7rH70hhuPG/view?usp=sharing)
- [STM32F103 Reference Manual](https://drive.google.com/file/d/1geeY-mbH-PinQzvFmtgG6RA3AFqcVXZV/view?usp=drive_link)

## Simulating the project with Modelsim  
Ensure you're in the ``EP4CE6_Projects/P09_PS2_USB/RTL/simulation/`` directory before proceeding to the next steps.  
The ``.do`` macro files are scripts that contain commands ModelSim uses to compile design files and testbenches. These scripts automate the simulation process by preventing the need to open the ModelSim GUI. For projects with multiple ``.do`` files, the process of executing one script is applicable to the rest. Therefore, the simulation procedure for one script is shown below.  

Procedure for the ``ps2.do`` script (Same for the other scripts).  
```
mkdir build
cd build
vsim -c -do "do ../ps2.do; quit"
```
Do not panic if the following output shows up on the command line: ``# ** Failure: Simulation done``. This is a VHDL quirk. However, you need to ensure no test fails. Simulation results can be found in the ``status_reports.txt`` files generated by the Python scripts invoked by ModelSim. Refer to the tree diagram in the [Project file structure (RTL)](#project-file-structure-rtl) section of this README document.   
