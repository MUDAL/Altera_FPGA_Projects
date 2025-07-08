# Interfacing an FPGA with a microcontroller and a 16x2 LCD      
## Description  
This task involves configuring an FPGA as a serial-parallel converter that receives data from a microcontroller via SPI, decodes the data, and generates the appropriate signals to drive a 16x2 LCD module. The microcontroller encodes the data and instructions required to drive the LCD in a 16-bit unsigned integer and transmits the data MSB first using the SPI protocol. An SPI mode of 0 (i.e. CPOL = 0 and CPHA = 0) was used in the project. For more information on how SPI communication works, kindly refer to the ``Helpful resources`` section of this README.md document.  

A simple two-digit counter (00 to 99) is implemented in software on the microcontroller. The counter's value is updated every second and transmitted to the FPGA to drive the LCD. The following message is displayed on the LCD: ``Count = X``, where ``X`` is the current value of the counter which gets incremented every second and stops at ``99``.  

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board
- A Microcontroller (an STM32F401RE Nucleo board was used)
- STM32CubeIDE (v1.6.0 was used)  
- 16x2 LCD  
- Intel Quartus Prime 20.1  
- ModelSim (for simulation)  

## Project file structure (RTL)   
- The VHDL design files are located in the ``src`` and ``lib`` directories  
- The top-level design is the ``spi_lcd_main.vhd``  
- The other modules or design files are located in the ``lib`` directory
- Testbenches are located in the ``simulation/testbench`` directory
- Test vectors for each module in the design can be found in the directories within the ``simulation/file/`` directory.  
- Test vectors are generated using the python script in the ``simulation/python_scripts/`` directory  

```
.
├── simulation
│   ├── lcd.do
│   ├── main.do
│   ├── python_scripts
│   │   ├── lcd_testvectors.py
│   │   ├── main_testvectors.py
│   │   └── spi_testvectors.py
│   ├── spi.do
│   └── testbench
│       ├── lcd_driver_tb.vhd
│       ├── pack_tb_body.vhd
│       ├── pack_tb_header.vhd
│       ├── spi_lcd_main_tb.vhd
│       └── spi_receiver_tb.vhd
├── spi_lcd_main.tcl
└── src
    ├── lib
    │   ├── lcd_driver.vhd
    │   └── spi_receiver.vhd
    └── spi_lcd_main.vhd
```
## How to use  
### 1. Setting up the FPGA  
### a. Building the project from a TCL script  
Ensure you're in the ``EP4CE6_Projects/P08_SPI_LCD/RTL/`` directory before running the commands below.  
```
1. mkdir build  
2. cd build
3. quartus_sh -t ../spi_lcd_main.tcl
4. quartus spi_lcd_main.qpf
```
### b. What to do when Quartus opens    
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``

### 2. Setting up the microcontroller  
- Open the ``EP4CE6_Projects/P08_SPI_LCD/MCU/SPI_Experiment`` directory
- If you have ``STM32CubeIDE`` installed, you can open the project, compile the source code, and flash the STM32 MCU  

## Pinouts  
- Check the ``Location`` column in the image below for the pin mappings used in this project.     
![PP_SPI_LCD](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/77cd61f3-bf65-4f05-9a35-cfdccdb77904)  

## SPI Decoding with Saleae Logic Analyzer  
![Screenshot (493)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/9058bcd0-0be6-43cf-a397-4fa16104684b)  

## Demo  
[Video Demo](https://drive.google.com/file/d/1cUtLpPchJwC3wovYJaJSDl85Mg2qt8qY/view?usp=sharing)      

## Helpful resources  
- [Understanding the SPI Protocol](https://youtu.be/0nVNwozXsIc?si=wSMJ1dM3-kxuAmv1)   
- [Wait Statements in VHDL for Testbenches](https://vhdlwhiz.com/wait-on-wait-until/)     
- [HD44780 Datasheet](https://drive.google.com/file/d/1kYVwqbIjYVIVPkjs03y40AUIAiwOctcV/view?usp=drive_link)
- [STM32F401RE Reference Manual](https://drive.google.com/file/d/1LK3bwaFZ2M6wbdH5Iwcwpu26L6r79ED5/view?usp=sharing)  
- [STM32F401RE Nucleo Board User Manual](https://drive.google.com/file/d/1BZInK09INmOfoSB23rfxrVDFSr6pHv2E/view?usp=sharing)

## Simulating the project with Modelsim  
Ensure you're in the ``EP4CE6_Projects/P08_SPI_LCD/RTL/simulation/`` directory before proceeding to the next steps.  
The ``.do`` macro files are scripts that contain commands ModelSim uses to compile design files and testbenches. These scripts automate the simulation process by preventing the need to open the ModelSim GUI. For projects with multiple ``.do`` files, the process of executing one script is applicable to the rest. Therefore, the simulation procedure for one script is shown below.  

Procedure for the ``main.do`` script (Same for the other scripts).  
```
mkdir build
cd build
vsim -c -do "do ../main.do; quit"
```
Do not panic if the following output shows up on the command line: ``# ** Failure: Simulation done``. This is a VHDL quirk. However, you need to ensure no test fails. Simulation results can be found in the ``status_reports.txt`` files generated by the Python scripts invoked by ModelSim. Refer to the tree diagram in the [Project file structure (RTL)](#project-file-structure-rtl) section of this README document.   
