# Interfacing an FPGA with a microcontroller and a 16x2 LCD      
## Description  
This task involves configuring an FPGA as a serial-parallel converter that receives data from a microcontroller via SPI, decodes the data, and generates the appropriate signals to drive a 16x2 LCD module. The microcontroller encodes the data and instructions required to drive the LCD in a 16-bit unsigned integer and transmits the data MSB first using the SPI protocol. An SPI mode of 0 (i.e. CPOL = 0 and CPHA = 0) was used in the project. For more information on how SPI communication works, kindly refer to the ``Helpful resources`` section of this README.md document.  

A simple two-digit counter (0 to 99) is implemented in software on the microcontroller. The counter's value is updated every second and transmitted to the FPGA to drive the LCD. The following message is displayed on the LCD: ``Count = <x>``, where ``<x>`` is the current value of the counter which gets incremented every second and stops at ``99``.  

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board
- A Microcontroller (an STM32F401RE Nucleo board was used)
- STM32CubeIDE (v1.6.0 was used)  
- 16x2 LCD  
- Intel Quartus Prime 20.1
- ModelSim (for simulation)  

## How to use  
### 1. Setting up the FPGA  
- Clone the ``Altera_FPGA_Projects`` repository   
- Open the ``EP4CE6_Projects/P08_SPI_LCD/RTL`` directory  
- Open the ``spi_lcd_main.qpf`` project file   
- Intel Quartus Prime should open after the previous step   
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``

### 2. Setting up the microcontroller  
- Open the ``EP4CE6_Projects/P08_SPI_LCD/MCU/SPI_Experiment`` directory
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
![PP_SPI_LCD](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/77cd61f3-bf65-4f05-9a35-cfdccdb77904)  

## SPI Decoding with Saleae Logic Analyzer  
[Link to Logic Analyzer's SPI Scan](https://drive.google.com/file/d/1qqzeK3HX5zqDWV7fekwfmXIulcjnjjfN/view?usp=sharing)  
![Screenshot (493)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/9058bcd0-0be6-43cf-a397-4fa16104684b)  

## Demo  
[Video Demo](https://drive.google.com/file/d/1cUtLpPchJwC3wovYJaJSDl85Mg2qt8qY/view?usp=sharing)      

## Helpful resources  
- [Understanding the SPI Protocol](https://youtu.be/0nVNwozXsIc?si=wSMJ1dM3-kxuAmv1)   
- [Wait Statements in VHDL for Testbenches](https://vhdlwhiz.com/wait-on-wait-until/)     
- [HD44780 Datasheet](https://drive.google.com/file/d/1kYVwqbIjYVIVPkjs03y40AUIAiwOctcV/view?usp=drive_link)
- [STM32F401RE Reference Manual](https://drive.google.com/file/d/1LK3bwaFZ2M6wbdH5Iwcwpu26L6r79ED5/view?usp=sharing)  
- [STM32F401RE Nucleo Board User Manual](https://drive.google.com/file/d/1BZInK09INmOfoSB23rfxrVDFSr6pHv2E/view?usp=sharing)

## Simulation results for the top-level design  
```
Expected: 285, Got: 285, Status: PASS
Expected: 1EB, Got: 1EB, Status: PASS
Expected: 1A7, Got: 1A7, Status: PASS
Expected: 3C6, Got: 3C6, Status: PASS
Expected: 361, Got: 361, Status: PASS
Expected: 2DC, Got: 2DC, Status: PASS
Expected: 1DD, Got: 1DD, Status: PASS
Expected: 25A, Got: 25A, Status: PASS
Expected: 008, Got: 008, Status: PASS
Expected: 19E, Got: 19E, Status: PASS
Expected: 307, Got: 307, Status: PASS
Expected: 086, Got: 086, Status: PASS
Expected: 318, Got: 318, Status: PASS
Expected: 1C9, Got: 1C9, Status: PASS
Expected: 007, Got: 007, Status: PASS
Expected: 3E4, Got: 3E4, Status: PASS
Expected: 30D, Got: 30D, Status: PASS
Expected: 10C, Got: 10C, Status: PASS
Expected: 318, Got: 318, Status: PASS
Expected: 015, Got: 015, Status: PASS
Expected: 0FD, Got: 0FD, Status: PASS
Expected: 244, Got: 244, Status: PASS
Expected: 0A1, Got: 0A1, Status: PASS
Expected: 09E, Got: 09E, Status: PASS
Expected: 0F4, Got: 0F4, Status: PASS
Expected: 0F0, Got: 0F0, Status: PASS
Expected: 037, Got: 037, Status: PASS
Expected: 2A3, Got: 2A3, Status: PASS
Expected: 0F1, Got: 0F1, Status: PASS
Expected: 088, Got: 088, Status: PASS
Expected: 0CD, Got: 0CD, Status: PASS
Expected: 3D7, Got: 3D7, Status: PASS
Expected: 015, Got: 015, Status: PASS
Expected: 211, Got: 211, Status: PASS
Expected: 2E0, Got: 2E0, Status: PASS
Expected: 23D, Got: 23D, Status: PASS
Expected: 259, Got: 259, Status: PASS
Expected: 0C7, Got: 0C7, Status: PASS
Expected: 104, Got: 104, Status: PASS
Expected: 2BF, Got: 2BF, Status: PASS
Expected: 2C5, Got: 2C5, Status: PASS
Expected: 043, Got: 043, Status: PASS
Expected: 35F, Got: 35F, Status: PASS
Expected: 060, Got: 060, Status: PASS
Expected: 1F4, Got: 1F4, Status: PASS
Expected: 108, Got: 108, Status: PASS
Expected: 2EB, Got: 2EB, Status: PASS
Expected: 0CC, Got: 0CC, Status: PASS
Expected: 1E6, Got: 1E6, Status: PASS
Expected: 2B7, Got: 2B7, Status: PASS
Expected: 11D, Got: 11D, Status: PASS
Expected: 36C, Got: 36C, Status: PASS
Expected: 00F, Got: 00F, Status: PASS
Expected: 302, Got: 302, Status: PASS
Expected: 0C4, Got: 0C4, Status: PASS
Expected: 38C, Got: 38C, Status: PASS
Expected: 110, Got: 110, Status: PASS
Expected: 04E, Got: 04E, Status: PASS
Expected: 083, Got: 083, Status: PASS
Expected: 039, Got: 039, Status: PASS
Expected: 276, Got: 276, Status: PASS
Expected: 2C9, Got: 2C9, Status: PASS
Expected: 349, Got: 349, Status: PASS
Expected: 38F, Got: 38F, Status: PASS
Expected: 251, Got: 251, Status: PASS
Expected: 347, Got: 347, Status: PASS
Expected: 0FA, Got: 0FA, Status: PASS
Expected: 29F, Got: 29F, Status: PASS
Expected: 06B, Got: 06B, Status: PASS
Expected: 26D, Got: 26D, Status: PASS
Expected: 329, Got: 329, Status: PASS
Expected: 39F, Got: 39F, Status: PASS
Expected: 267, Got: 267, Status: PASS
Expected: 247, Got: 247, Status: PASS
Expected: 1B7, Got: 1B7, Status: PASS
Expected: 273, Got: 273, Status: PASS
Expected: 388, Got: 388, Status: PASS
Expected: 2E8, Got: 2E8, Status: PASS
Expected: 035, Got: 035, Status: PASS
Expected: 2EB, Got: 2EB, Status: PASS
Expected: 056, Got: 056, Status: PASS
Expected: 157, Got: 157, Status: PASS
Expected: 265, Got: 265, Status: PASS
Expected: 27A, Got: 27A, Status: PASS
Expected: 146, Got: 146, Status: PASS
Expected: 2EE, Got: 2EE, Status: PASS
Expected: 334, Got: 334, Status: PASS
Expected: 059, Got: 059, Status: PASS
Expected: 377, Got: 377, Status: PASS
Expected: 0CB, Got: 0CB, Status: PASS
Expected: 065, Got: 065, Status: PASS
Expected: 003, Got: 003, Status: PASS
Expected: 286, Got: 286, Status: PASS
Expected: 22E, Got: 22E, Status: PASS
Expected: 23E, Got: 23E, Status: PASS
Expected: 3F7, Got: 3F7, Status: PASS
Expected: 214, Got: 214, Status: PASS
Expected: 23A, Got: 23A, Status: PASS
Expected: 25E, Got: 25E, Status: PASS
Expected: 1EE, Got: 1EE, Status: PASS
Expected: 0DA, Got: 0DA, Status: PASS
Expected: 392, Got: 392, Status: PASS
Expected: 2D4, Got: 2D4, Status: PASS
Expected: 301, Got: 301, Status: PASS
Expected: 1B8, Got: 1B8, Status: PASS
Expected: 3F3, Got: 3F3, Status: PASS
Expected: 17E, Got: 17E, Status: PASS
Expected: 391, Got: 391, Status: PASS
Expected: 15B, Got: 15B, Status: PASS
Expected: 0C9, Got: 0C9, Status: PASS
Expected: 2DF, Got: 2DF, Status: PASS
Expected: 3DB, Got: 3DB, Status: PASS
Expected: 2E3, Got: 2E3, Status: PASS
Expected: 3C9, Got: 3C9, Status: PASS
Expected: 337, Got: 337, Status: PASS
Expected: 37B, Got: 37B, Status: PASS
Expected: 0D6, Got: 0D6, Status: PASS
Expected: 244, Got: 244, Status: PASS
Expected: 0CF, Got: 0CF, Status: PASS
Expected: 3AA, Got: 3AA, Status: PASS
Expected: 02B, Got: 02B, Status: PASS
Expected: 289, Got: 289, Status: PASS
Expected: 07D, Got: 07D, Status: PASS
Expected: 391, Got: 391, Status: PASS
Expected: 3CE, Got: 3CE, Status: PASS
Expected: 35D, Got: 35D, Status: PASS
Expected: 3F7, Got: 3F7, Status: PASS
Expected: 2DC, Got: 2DC, Status: PASS
Expected: 22A, Got: 22A, Status: PASS
Expected: 0CE, Got: 0CE, Status: PASS
Expected: 34C, Got: 34C, Status: PASS
Expected: 105, Got: 105, Status: PASS
Expected: 069, Got: 069, Status: PASS
Expected: 27C, Got: 27C, Status: PASS
Expected: 3BD, Got: 3BD, Status: PASS
Expected: 046, Got: 046, Status: PASS
Expected: 339, Got: 339, Status: PASS
Expected: 295, Got: 295, Status: PASS
Expected: 36D, Got: 36D, Status: PASS
Expected: 11B, Got: 11B, Status: PASS
Expected: 148, Got: 148, Status: PASS
Expected: 268, Got: 268, Status: PASS
Expected: 312, Got: 312, Status: PASS
Expected: 33E, Got: 33E, Status: PASS
Expected: 1E7, Got: 1E7, Status: PASS
Expected: 07E, Got: 07E, Status: PASS
Expected: 306, Got: 306, Status: PASS
Expected: 11D, Got: 11D, Status: PASS
Expected: 252, Got: 252, Status: PASS
Expected: 176, Got: 176, Status: PASS
Expected: 142, Got: 142, Status: PASS
Expected: 002, Got: 002, Status: PASS
Expected: 342, Got: 342, Status: PASS
Expected: 147, Got: 147, Status: PASS
Expected: 362, Got: 362, Status: PASS
Expected: 333, Got: 333, Status: PASS
Expected: 366, Got: 366, Status: PASS
Expected: 094, Got: 094, Status: PASS
Expected: 2F4, Got: 2F4, Status: PASS
Expected: 08D, Got: 08D, Status: PASS
Expected: 13C, Got: 13C, Status: PASS
Expected: 081, Got: 081, Status: PASS
Expected: 3A8, Got: 3A8, Status: PASS
Expected: 3C6, Got: 3C6, Status: PASS
Expected: 1E7, Got: 1E7, Status: PASS
Expected: 351, Got: 351, Status: PASS
Expected: 1C2, Got: 1C2, Status: PASS
Expected: 319, Got: 319, Status: PASS
Expected: 264, Got: 264, Status: PASS
Expected: 1A2, Got: 1A2, Status: PASS
Expected: 2D2, Got: 2D2, Status: PASS
Expected: 205, Got: 205, Status: PASS
Expected: 162, Got: 162, Status: PASS
Expected: 060, Got: 060, Status: PASS
Expected: 3BE, Got: 3BE, Status: PASS
Expected: 02C, Got: 02C, Status: PASS
Expected: 1A5, Got: 1A5, Status: PASS
Expected: 354, Got: 354, Status: PASS
Expected: 3BC, Got: 3BC, Status: PASS
Expected: 0F9, Got: 0F9, Status: PASS
Expected: 069, Got: 069, Status: PASS
Expected: 274, Got: 274, Status: PASS
Expected: 323, Got: 323, Status: PASS
Expected: 040, Got: 040, Status: PASS
Expected: 0E7, Got: 0E7, Status: PASS
Expected: 046, Got: 046, Status: PASS
Expected: 178, Got: 178, Status: PASS
Expected: 27A, Got: 27A, Status: PASS
Expected: 1CC, Got: 1CC, Status: PASS
Expected: 13B, Got: 13B, Status: PASS
Expected: 30B, Got: 30B, Status: PASS
Expected: 3BF, Got: 3BF, Status: PASS
Expected: 1F0, Got: 1F0, Status: PASS
Expected: 2E5, Got: 2E5, Status: PASS
Expected: 3FA, Got: 3FA, Status: PASS
Expected: 24B, Got: 24B, Status: PASS
Expected: 0CE, Got: 0CE, Status: PASS
Expected: 08D, Got: 08D, Status: PASS
Expected: 3FF, Got: 3FF, Status: PASS
Expected: 32D, Got: 32D, Status: PASS
Expected: 227, Got: 227, Status: PASS
Expected: 3E4, Got: 3E4, Status: PASS
Expected: 232, Got: 232, Status: PASS
Expected: 3D1, Got: 3D1, Status: PASS
Expected: 1B0, Got: 1B0, Status: PASS
Expected: 2EC, Got: 2EC, Status: PASS
Expected: 11D, Got: 11D, Status: PASS
Expected: 2D2, Got: 2D2, Status: PASS
Expected: 113, Got: 113, Status: PASS
Expected: 30D, Got: 30D, Status: PASS
Expected: 0C9, Got: 0C9, Status: PASS
Expected: 330, Got: 330, Status: PASS
Expected: 3F6, Got: 3F6, Status: PASS
Expected: 094, Got: 094, Status: PASS
Expected: 225, Got: 225, Status: PASS
Expected: 25C, Got: 25C, Status: PASS
Expected: 1A4, Got: 1A4, Status: PASS
Expected: 1E2, Got: 1E2, Status: PASS
Expected: 0EA, Got: 0EA, Status: PASS
Expected: 343, Got: 343, Status: PASS
Expected: 20B, Got: 20B, Status: PASS
Expected: 248, Got: 248, Status: PASS
Expected: 20B, Got: 20B, Status: PASS
Expected: 1E7, Got: 1E7, Status: PASS
Expected: 30A, Got: 30A, Status: PASS
Expected: 051, Got: 051, Status: PASS
Expected: 213, Got: 213, Status: PASS
Expected: 17E, Got: 17E, Status: PASS
Expected: 2BF, Got: 2BF, Status: PASS
Expected: 1F2, Got: 1F2, Status: PASS
Expected: 014, Got: 014, Status: PASS
Expected: 18B, Got: 18B, Status: PASS
Expected: 08D, Got: 08D, Status: PASS
Expected: 0D0, Got: 0D0, Status: PASS
Expected: 27C, Got: 27C, Status: PASS
Expected: 286, Got: 286, Status: PASS
Expected: 2F4, Got: 2F4, Status: PASS
Expected: 10B, Got: 10B, Status: PASS
Expected: 1B6, Got: 1B6, Status: PASS
Expected: 2BA, Got: 2BA, Status: PASS
Expected: 07F, Got: 07F, Status: PASS
Expected: 374, Got: 374, Status: PASS
Expected: 3B8, Got: 3B8, Status: PASS
Expected: 13A, Got: 13A, Status: PASS
Expected: 150, Got: 150, Status: PASS
Expected: 0C5, Got: 0C5, Status: PASS
Expected: 3A5, Got: 3A5, Status: PASS
Expected: 3BC, Got: 3BC, Status: PASS
Expected: 1DB, Got: 1DB, Status: PASS
Expected: 2C4, Got: 2C4, Status: PASS
Expected: 0A3, Got: 0A3, Status: PASS
Expected: 39D, Got: 39D, Status: PASS
Expected: 224, Got: 224, Status: PASS
Expected: 39A, Got: 39A, Status: PASS
Expected: 027, Got: 027, Status: PASS
Expected: 0FE, Got: 0FE, Status: PASS
Expected: 0F8, Got: 0F8, Status: PASS
Expected: 348, Got: 348, Status: PASS
Expected: 227, Got: 227, Status: PASS
Expected: 230, Got: 230, Status: PASS
Expected: 2A8, Got: 2A8, Status: PASS
Expected: 361, Got: 361, Status: PASS
Expected: 252, Got: 252, Status: PASS
Expected: 3B9, Got: 3B9, Status: PASS
Expected: 222, Got: 222, Status: PASS
Expected: 302, Got: 302, Status: PASS
Expected: 373, Got: 373, Status: PASS
Expected: 15C, Got: 15C, Status: PASS
Expected: 16E, Got: 16E, Status: PASS
Expected: 080, Got: 080, Status: PASS
Expected: 339, Got: 339, Status: PASS
Expected: 0C9, Got: 0C9, Status: PASS
Expected: 10E, Got: 10E, Status: PASS
Expected: 16C, Got: 16C, Status: PASS
Expected: 0E1, Got: 0E1, Status: PASS
Expected: 019, Got: 019, Status: PASS
Expected: 32B, Got: 32B, Status: PASS
Expected: 291, Got: 291, Status: PASS
Expected: 13C, Got: 13C, Status: PASS
Expected: 095, Got: 095, Status: PASS
Expected: 32A, Got: 32A, Status: PASS
Expected: 160, Got: 160, Status: PASS
Expected: 2A1, Got: 2A1, Status: PASS
Expected: 220, Got: 220, Status: PASS
Expected: 1DC, Got: 1DC, Status: PASS
Expected: 31E, Got: 31E, Status: PASS
Expected: 2E4, Got: 2E4, Status: PASS
Expected: 3D3, Got: 3D3, Status: PASS
Expected: 009, Got: 009, Status: PASS
Expected: 2C1, Got: 2C1, Status: PASS
Expected: 133, Got: 133, Status: PASS
Expected: 10F, Got: 10F, Status: PASS
Expected: 273, Got: 273, Status: PASS
Expected: 39D, Got: 39D, Status: PASS
Expected: 2F6, Got: 2F6, Status: PASS
Expected: 2A6, Got: 2A6, Status: PASS
Expected: 230, Got: 230, Status: PASS
Expected: 1E8, Got: 1E8, Status: PASS
Expected: 036, Got: 036, Status: PASS
Expected: 142, Got: 142, Status: PASS
Passed tests: 300, Failed tests: 0
```
