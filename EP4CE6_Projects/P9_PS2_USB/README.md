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
- Open the ``EP4CE6_Projects/P9_PS2_USB/RTL`` directory  
- Open the ``ps2_uart_main.qpf`` project file   
- Intel Quartus Prime should open after the previous step   
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``

### 2. Setting up the microcontroller  
- Open the ``EP4CE6_Projects/P9_PS2_USB/MCU/UART_USB`` directory
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
![Screenshot (506)](https://github.com/MUDAL/FPGA_PS2_UART/assets/46250887/12f99c86-6b1a-4cea-8b96-ba37148bb875)  
 
## Decoding the FPGA design (PS/2-to-UART interface)  
![Screenshot (507)](https://github.com/MUDAL/FPGA_PS2_UART/assets/46250887/63d7cf00-10a2-40b9-854f-d6ee8cbf6106)   
  
## Demo  
[TO BE ADDED]      

## Project Setup  
![20240427_181320](https://github.com/MUDAL/P9_PS2_USB/assets/46250887/e75ef3dc-514e-41c3-924f-507d69c74b8a)  
![20240427_181233](https://github.com/MUDAL/P9_PS2_USB/assets/46250887/da6c7ed0-abb7-4a47-aa7c-b1d5eae526e4)  
![20240427_181252](https://github.com/MUDAL/P9_PS2_USB/assets/46250887/1726c799-66b9-4141-9cbd-791c4e06e7b1)  

## Helpful resources  
- [PS/2 Protocol Timing](http://www.pyroelectro.com/tutorials/ps2_keyboard_interface/theory.html)  
- [PS/2 Keyboard Scan Codes](https://techdocs.altium.com/display/FPGA/PS2+Keyboard+Scan+Codes)
- [STM32 as a USB HID Keyboard](https://www.youtube.com/watch?v=tj1_hsQ5PR0&list=PLfIJKC1ud8ggIvCHlwZv0W25JjQ4Hc3aT&index=4&t=574s)   
- [USB HID Usage Tables](https://drive.google.com/file/d/17hRtNIAqpqUihBY9VkXl9vElMqQnp7lT/view?usp=sharing) [See Chapter 10]  
- [USB Device Class Definition for Human Interface Devices (HID)](https://drive.google.com/file/d/1BABTfBDyvYt_BpdM_NCTHxbm8gGNLNiA/view?usp=sharing) [See pg. 56, 59, 60, 69]  
- FPGA Prototyping By VHDL Examples (Xilinx Spartan-3 Version) - Pong P.Chu (Check timing diagrams for UART and PS/2)  
- [STM32F103C8 Datasheet](https://drive.google.com/file/d/1Rm6P6-ArzKIR0c0EaC8duT7rH70hhuPG/view?usp=sharing)
- [STM32F103 Reference Manual](https://drive.google.com/file/d/1geeY-mbH-PinQzvFmtgG6RA3AFqcVXZV/view?usp=drive_link)  
