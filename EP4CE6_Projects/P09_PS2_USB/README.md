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

## How to use  
### 1. Setting up the FPGA  
- Clone the ``Altera_FPGA_Projects`` repository   
- Open the ``EP4CE6_Projects/P09_PS2_USB/RTL`` directory  
- Open the ``ps2_uart_main.qpf`` project file   
- Intel Quartus Prime should open after the previous step   
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``

### 2. Setting up the microcontroller  
- Open the ``EP4CE6_Projects/P09_PS2_USB/MCU/UART_USB`` directory
- If you have ``STM32CubeIDE`` installed, you can open the project, compile the source code, and flash the STM32 MCU  

## Project file structure (RTL)   
- The VHDL design files are located in the ``src`` and ``lib`` directories  
- The top-level design is the ``ps2_uart_main.vhd``  
- The other modules or design files are located in the ``lib`` directory
- Testbenches are located in the ``simulation/testbench`` directory
- Test vectors for each module in the design can be found in the ``simulation/file/`` directory
- Test vectors are generated using the python script in each ``simulation/file/`` directory  

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

## Simulation results for the top-level design  
```
Expected: DF, Got: DF, Status: PASS
Expected: B8, Got: B8, Status: PASS
Expected: C3, Got: C3, Status: PASS
Expected: 49, Got: 49, Status: PASS
Expected: 30, Got: 30, Status: PASS
Expected: 63, Got: 63, Status: PASS
Expected: 45, Got: 45, Status: PASS
Expected: F0, Got: F0, Status: PASS
Expected: 0C, Got: 0C, Status: PASS
Expected: D5, Got: D5, Status: PASS
Expected: AD, Got: AD, Status: PASS
Expected: 01, Got: 01, Status: PASS
Expected: CA, Got: CA, Status: PASS
Expected: 27, Got: 27, Status: PASS
Expected: AE, Got: AE, Status: PASS
Expected: C6, Got: C6, Status: PASS
Expected: C6, Got: C6, Status: PASS
Expected: D3, Got: D3, Status: PASS
Expected: 15, Got: 15, Status: PASS
Expected: AE, Got: AE, Status: PASS
Expected: 2B, Got: 2B, Status: PASS
Expected: 1F, Got: 1F, Status: PASS
Expected: 0A, Got: 0A, Status: PASS
Expected: 02, Got: 02, Status: PASS
Expected: 25, Got: 25, Status: PASS
Expected: C3, Got: C3, Status: PASS
Expected: F4, Got: F4, Status: PASS
Expected: 54, Got: 54, Status: PASS
Expected: BF, Got: BF, Status: PASS
Expected: A6, Got: A6, Status: PASS
Expected: 83, Got: 83, Status: PASS
Expected: 57, Got: 57, Status: PASS
Expected: 76, Got: 76, Status: PASS
Expected: 4C, Got: 4C, Status: PASS
Expected: 56, Got: 56, Status: PASS
Expected: 52, Got: 52, Status: PASS
Expected: 72, Got: 72, Status: PASS
Expected: EB, Got: EB, Status: PASS
Expected: 93, Got: 93, Status: PASS
Expected: 34, Got: 34, Status: PASS
Expected: D1, Got: D1, Status: PASS
Expected: E3, Got: E3, Status: PASS
Expected: CF, Got: CF, Status: PASS
Expected: FC, Got: FC, Status: PASS
Expected: 38, Got: 38, Status: PASS
Expected: 6C, Got: 6C, Status: PASS
Expected: 65, Got: 65, Status: PASS
Expected: AD, Got: AD, Status: PASS
Expected: BC, Got: BC, Status: PASS
Expected: A4, Got: A4, Status: PASS
Expected: 10, Got: 10, Status: PASS
Expected: 9D, Got: 9D, Status: PASS
Expected: 94, Got: 94, Status: PASS
Expected: A8, Got: A8, Status: PASS
Expected: D3, Got: D3, Status: PASS
Expected: BE, Got: BE, Status: PASS
Expected: AF, Got: AF, Status: PASS
Expected: 43, Got: 43, Status: PASS
Expected: 20, Got: 20, Status: PASS
Expected: 79, Got: 79, Status: PASS
Expected: DA, Got: DA, Status: PASS
Expected: 80, Got: 80, Status: PASS
Expected: 2C, Got: 2C, Status: PASS
Expected: F7, Got: F7, Status: PASS
Expected: 15, Got: 15, Status: PASS
Expected: 5B, Got: 5B, Status: PASS
Expected: 29, Got: 29, Status: PASS
Expected: 51, Got: 51, Status: PASS
Expected: 84, Got: 84, Status: PASS
Expected: 07, Got: 07, Status: PASS
Expected: 5D, Got: 5D, Status: PASS
Expected: 4B, Got: 4B, Status: PASS
Expected: B0, Got: B0, Status: PASS
Expected: 78, Got: 78, Status: PASS
Expected: 04, Got: 04, Status: PASS
Expected: FF, Got: FF, Status: PASS
Expected: 5C, Got: 5C, Status: PASS
Expected: 23, Got: 23, Status: PASS
Expected: 1A, Got: 1A, Status: PASS
Expected: BD, Got: BD, Status: PASS
Expected: 97, Got: 97, Status: PASS
Expected: 83, Got: 83, Status: PASS
Expected: B1, Got: B1, Status: PASS
Expected: 4F, Got: 4F, Status: PASS
Expected: 97, Got: 97, Status: PASS
Expected: 24, Got: 24, Status: PASS
Expected: D1, Got: D1, Status: PASS
Expected: 69, Got: 69, Status: PASS
Expected: 40, Got: 40, Status: PASS
Expected: 3A, Got: 3A, Status: PASS
Expected: C0, Got: C0, Status: PASS
Expected: 88, Got: 88, Status: PASS
Expected: 70, Got: 70, Status: PASS
Expected: DB, Got: DB, Status: PASS
Expected: 8E, Got: 8E, Status: PASS
Expected: D8, Got: D8, Status: PASS
Expected: 66, Got: 66, Status: PASS
Expected: 88, Got: 88, Status: PASS
Expected: 3E, Got: 3E, Status: PASS
Expected: 6E, Got: 6E, Status: PASS
Expected: 1F, Got: 1F, Status: PASS
Expected: 8F, Got: 8F, Status: PASS
Expected: 68, Got: 68, Status: PASS
Expected: 3C, Got: 3C, Status: PASS
Expected: D3, Got: D3, Status: PASS
Expected: 50, Got: 50, Status: PASS
Expected: FC, Got: FC, Status: PASS
Expected: 51, Got: 51, Status: PASS
Expected: 66, Got: 66, Status: PASS
Expected: E3, Got: E3, Status: PASS
Expected: 4A, Got: 4A, Status: PASS
Expected: 30, Got: 30, Status: PASS
Expected: B9, Got: B9, Status: PASS
Expected: 87, Got: 87, Status: PASS
Expected: 3B, Got: 3B, Status: PASS
Expected: FE, Got: FE, Status: PASS
Expected: 29, Got: 29, Status: PASS
Expected: 38, Got: 38, Status: PASS
Expected: EE, Got: EE, Status: PASS
Expected: 03, Got: 03, Status: PASS
Expected: CA, Got: CA, Status: PASS
Expected: 19, Got: 19, Status: PASS
Expected: A2, Got: A2, Status: PASS
Expected: 51, Got: 51, Status: PASS
Expected: 1C, Got: 1C, Status: PASS
Expected: 88, Got: 88, Status: PASS
Expected: F9, Got: F9, Status: PASS
Expected: 33, Got: 33, Status: PASS
Expected: F4, Got: F4, Status: PASS
Expected: 93, Got: 93, Status: PASS
Expected: 59, Got: 59, Status: PASS
Expected: 1E, Got: 1E, Status: PASS
Expected: 94, Got: 94, Status: PASS
Expected: CB, Got: CB, Status: PASS
Expected: 6C, Got: 6C, Status: PASS
Expected: 81, Got: 81, Status: PASS
Expected: 05, Got: 05, Status: PASS
Expected: 85, Got: 85, Status: PASS
Expected: 3D, Got: 3D, Status: PASS
Expected: D2, Got: D2, Status: PASS
Expected: A0, Got: A0, Status: PASS
Expected: 4F, Got: 4F, Status: PASS
Expected: C9, Got: C9, Status: PASS
Expected: EC, Got: EC, Status: PASS
Expected: 57, Got: 57, Status: PASS
Expected: 8C, Got: 8C, Status: PASS
Expected: FF, Got: FF, Status: PASS
Expected: 36, Got: 36, Status: PASS
Expected: AA, Got: AA, Status: PASS
Expected: EA, Got: EA, Status: PASS
Expected: DC, Got: DC, Status: PASS
Expected: F1, Got: F1, Status: PASS
Expected: 66, Got: 66, Status: PASS
Expected: 6C, Got: 6C, Status: PASS
Expected: 60, Got: 60, Status: PASS
Expected: AD, Got: AD, Status: PASS
Expected: 25, Got: 25, Status: PASS
Expected: DA, Got: DA, Status: PASS
Expected: 1D, Got: 1D, Status: PASS
Expected: 83, Got: 83, Status: PASS
Expected: 7A, Got: 7A, Status: PASS
Expected: 5F, Got: 5F, Status: PASS
Expected: 34, Got: 34, Status: PASS
Expected: 75, Got: 75, Status: PASS
Expected: 88, Got: 88, Status: PASS
Expected: A0, Got: A0, Status: PASS
Expected: 58, Got: 58, Status: PASS
Expected: C6, Got: C6, Status: PASS
Expected: 30, Got: 30, Status: PASS
Expected: D2, Got: D2, Status: PASS
Expected: B7, Got: B7, Status: PASS
Expected: 04, Got: 04, Status: PASS
Expected: 69, Got: 69, Status: PASS
Expected: 75, Got: 75, Status: PASS
Expected: 0A, Got: 0A, Status: PASS
Expected: EF, Got: EF, Status: PASS
Expected: 4F, Got: 4F, Status: PASS
Expected: 28, Got: 28, Status: PASS
Expected: 91, Got: 91, Status: PASS
Expected: BC, Got: BC, Status: PASS
Expected: 40, Got: 40, Status: PASS
Expected: 34, Got: 34, Status: PASS
Expected: DA, Got: DA, Status: PASS
Expected: 86, Got: 86, Status: PASS
Expected: F5, Got: F5, Status: PASS
Expected: A8, Got: A8, Status: PASS
Expected: AC, Got: AC, Status: PASS
Expected: 4A, Got: 4A, Status: PASS
Expected: F5, Got: F5, Status: PASS
Expected: 39, Got: 39, Status: PASS
Expected: 8D, Got: 8D, Status: PASS
Expected: 0C, Got: 0C, Status: PASS
Expected: A5, Got: A5, Status: PASS
Expected: 7B, Got: 7B, Status: PASS
Expected: 67, Got: 67, Status: PASS
Expected: AD, Got: AD, Status: PASS
Expected: 43, Got: 43, Status: PASS
Expected: 78, Got: 78, Status: PASS
Expected: FB, Got: FB, Status: PASS
Expected: 5B, Got: 5B, Status: PASS
Expected: 29, Got: 29, Status: PASS
Expected: 1F, Got: 1F, Status: PASS
Expected: B5, Got: B5, Status: PASS
Expected: 7B, Got: 7B, Status: PASS
Expected: CD, Got: CD, Status: PASS
Expected: B5, Got: B5, Status: PASS
Expected: 30, Got: 30, Status: PASS
Expected: 98, Got: 98, Status: PASS
Expected: B2, Got: B2, Status: PASS
Expected: 69, Got: 69, Status: PASS
Expected: 8E, Got: 8E, Status: PASS
Expected: 15, Got: 15, Status: PASS
Expected: 30, Got: 30, Status: PASS
Expected: 21, Got: 21, Status: PASS
Expected: FE, Got: FE, Status: PASS
Expected: C5, Got: C5, Status: PASS
Expected: DF, Got: DF, Status: PASS
Expected: BA, Got: BA, Status: PASS
Expected: C2, Got: C2, Status: PASS
Expected: 0A, Got: 0A, Status: PASS
Expected: E1, Got: E1, Status: PASS
Expected: D3, Got: D3, Status: PASS
Expected: DC, Got: DC, Status: PASS
Expected: F1, Got: F1, Status: PASS
Expected: 4F, Got: 4F, Status: PASS
Expected: CE, Got: CE, Status: PASS
Expected: 8D, Got: 8D, Status: PASS
Expected: 70, Got: 70, Status: PASS
Expected: 33, Got: 33, Status: PASS
Expected: 49, Got: 49, Status: PASS
Expected: B6, Got: B6, Status: PASS
Expected: 0E, Got: 0E, Status: PASS
Expected: A6, Got: A6, Status: PASS
Expected: DA, Got: DA, Status: PASS
Expected: E6, Got: E6, Status: PASS
Expected: 1F, Got: 1F, Status: PASS
Expected: 30, Got: 30, Status: PASS
Expected: AB, Got: AB, Status: PASS
Expected: 1C, Got: 1C, Status: PASS
Expected: 05, Got: 05, Status: PASS
Expected: 6F, Got: 6F, Status: PASS
Expected: 1D, Got: 1D, Status: PASS
Expected: CF, Got: CF, Status: PASS
Expected: C8, Got: C8, Status: PASS
Expected: B2, Got: B2, Status: PASS
Expected: FF, Got: FF, Status: PASS
Expected: AC, Got: AC, Status: PASS
Expected: F5, Got: F5, Status: PASS
Expected: D0, Got: D0, Status: PASS
Expected: FC, Got: FC, Status: PASS
Expected: E7, Got: E7, Status: PASS
Expected: 28, Got: 28, Status: PASS
Expected: E1, Got: E1, Status: PASS
Expected: 64, Got: 64, Status: PASS
Expected: 7E, Got: 7E, Status: PASS
Expected: 2B, Got: 2B, Status: PASS
Expected: FC, Got: FC, Status: PASS
Expected: 69, Got: 69, Status: PASS
Expected: 8F, Got: 8F, Status: PASS
Expected: FE, Got: FE, Status: PASS
Expected: 1C, Got: 1C, Status: PASS
Expected: 80, Got: 80, Status: PASS
Expected: 1D, Got: 1D, Status: PASS
Expected: B3, Got: B3, Status: PASS
Expected: EF, Got: EF, Status: PASS
Expected: 92, Got: 92, Status: PASS
Expected: AC, Got: AC, Status: PASS
Expected: C5, Got: C5, Status: PASS
Expected: 35, Got: 35, Status: PASS
Expected: D5, Got: D5, Status: PASS
Expected: F9, Got: F9, Status: PASS
Expected: A4, Got: A4, Status: PASS
Expected: B8, Got: B8, Status: PASS
Expected: 8A, Got: 8A, Status: PASS
Expected: 71, Got: 71, Status: PASS
Expected: D7, Got: D7, Status: PASS
Expected: 0E, Got: 0E, Status: PASS
Expected: 4C, Got: 4C, Status: PASS
Expected: 4E, Got: 4E, Status: PASS
Expected: 59, Got: 59, Status: PASS
Expected: 90, Got: 90, Status: PASS
Expected: 28, Got: 28, Status: PASS
Expected: F3, Got: F3, Status: PASS
Expected: 8C, Got: 8C, Status: PASS
Expected: 57, Got: 57, Status: PASS
Expected: 3F, Got: 3F, Status: PASS
Expected: 8E, Got: 8E, Status: PASS
Expected: 12, Got: 12, Status: PASS
Expected: 38, Got: 38, Status: PASS
Expected: 08, Got: 08, Status: PASS
Expected: D0, Got: D0, Status: PASS
Expected: 38, Got: 38, Status: PASS
Expected: F4, Got: F4, Status: PASS
Expected: DA, Got: DA, Status: PASS
Expected: 79, Got: 79, Status: PASS
Expected: B1, Got: B1, Status: PASS
Expected: F9, Got: F9, Status: PASS
Expected: B4, Got: B4, Status: PASS
Expected: 8B, Got: 8B, Status: PASS
Expected: 5D, Got: 5D, Status: PASS
Passed tests: 300, Failed tests: 0
```
