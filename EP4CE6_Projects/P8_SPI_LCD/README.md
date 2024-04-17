# Interfacing an FPGA with a microcontroller and a 16x2 LCD      
## Description  
This task involves configuring an FPGA as a serial-parallel converter that receives data from a microcontroller via SPI, decodes the data, and generates the appropriate signals to drive a 16x2 LCD module.  

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board
- A microcontroller (an STM32F401RE Nucleo board was used)
- STM32CubeIDE (v1.6.0 was used)  
- 16x2 LCD  
- Intel Quartus Prime 20.1
- ModelSim (for simulation)  

## How to use  
### 1. Setting up the FPGA  
- Clone the ``Altera_FPGA_Projects`` repository   
- Open the ``EP4CE6_Projects/P8_SPI_LCD/RTL`` directory  
- Open the ``spi_lcd_main.qpf`` project file   
- Intel Quartus Prime should open after the previous step   
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``

### 2. Setting up the microcontroller  
- Open the ``EP4CE6_Projects/P8_SPI_LCD/MCU/SPI_Experiment`` directory
- If you have ``STM32CubeIDE`` installed, you can open the project, compile the source code, and flash the STM32 MCU  

## Project file structure (RTL)   
- The VHDL design files are located in the ``src`` and ``lib`` directories  
- The top-level design is the ``spi_lcd_main.vhd``  
- The other modules or design files are located in the ``lib`` directory
- Testbenches are located in the ``simulation/testbench`` directory
- Test vectors for each module in the design can be found in the ``simulation/file/`` directory
- Test vectors are generated using the python script in each ``simulation/file/`` directory  

## Pinouts  
- Check the ``Location`` column in the image below for the pin mappings used in this project.   
![PP_SPI_LCD](https://github.com/MUDAL/FPGA_SPI_LCD/assets/46250887/ddd27018-4065-41d5-a454-d9ae979e40a4)  

## SPI Decoding with Saleae Logic Analyzer      
![LA_SPI](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/64c4b5ef-a050-4d47-acdc-c03bcdfece85)  

## Demo  
[Video Demo](https://drive.google.com/file/d/1cUtLpPchJwC3wovYJaJSDl85Mg2qt8qY/view?usp=sharing)      

## Helpful resources  
- [SPI Protocol](https://youtu.be/0nVNwozXsIc?si=wSMJ1dM3-kxuAmv1)   
- [Wait Statements in VHDL for Testbenches](https://vhdlwhiz.com/wait-on-wait-until/)     
- [HD44780 Datasheet](https://drive.google.com/file/d/1kYVwqbIjYVIVPkjs03y40AUIAiwOctcV/view?usp=drive_link)   
