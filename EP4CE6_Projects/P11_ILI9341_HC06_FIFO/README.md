# Interfacing an FPGA with an ILI9341 TFT module and HC06 Bluetooth Module        
## Description  
In this project, the FPGA decodes commands received from an HC06 Bluetooth module to determine the colour  
that should be displayed on the ILI9341 module. There are four colours that can be displayed on the TFT  
screen. These are: red, green, blue, and white.   
- When ``R`` or ``r`` is received, the screen will be filled with red.    
- When ``G`` or ``g`` is received, the screen will be filled with green.   
- When ``B`` or ``b`` is received, the screen will be filled with blue.   
- When characters other than the aforementioned ones are received, the screen will be filled with white.   

Unlike Project 10, this design uses a RAM-based Synchronous FIFO buffer to ensure that data isn't lost whenever the ``UART RX`` module transmits data faster than the ``SPI TX`` module can receive and decode.
  
The FIFO consists of two parts:  
1. The memory section (RAM)   
2. The controller (address and status signal generator)  

The ``Intel Quartus Prime User Guide: Design Recommendations`` was referenced in order to correctly infer a RAM.   
The ``Single-Clock, Simple Dual-Port Synchronous RAM with Old Data Read-During-Write Behaviour`` was inferred.    

System specs:     
- Main clock: 50 MHz       
- PLL clock: 5 MHz (drives all modules in the design)  
- SPI clock: PLL clock / 2        
- UART baud rate: 9600  
- FIFO address width: 6 (bits)  
- FIFO data width: 2 (bits)      

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board
- ILI9341 TFT Display Module (2.4 inches, 240 x 320)    
- HC06 Bluetooth Module     
- Intel Quartus Prime 20.1
- ModelSim (for simulation)  

## How to use   
- Clone the ``Altera_FPGA_Projects`` repository   
- Open the ``EP4CE6_Projects/P11_ILI9341_HC06_FIFO/`` directory  
- Open the ``rgb_display.qpf`` project file   
- Intel Quartus Prime should open after the previous step   
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start`` 

## Project file structure     
- The VHDL design files are located in the ``src`` and ``lib`` directories  
- The top-level design is the ``rgb_display.vhd``  
- The other modules or design files are located in the ``lib`` directory
- Testbenches are located in the ``simulation/testbench`` directory
- Test vectors for each module in the design can be found in the ``simulation/file/`` directory
- Test vectors are generated using the python script in each ``simulation/file/`` directory  

## Pinouts  
- Check the ``Location`` column in the image below for the pin mappings used in this project.      
![Screenshot (527)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/14a0cb04-4df8-407e-a317-71a74a7a0157)  

## Decoding SPI (ILI9341) and UART (HC06) with a Logic Analyzer        
### 1. Configuring the registers of the ILI9341 using data/command sent via SPI from the FPGA     
![Screenshot (528)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/7dd359b2-165c-475a-abd1-dd0fb038b282)  
![Screenshot (529)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/aa73fe3b-c8a1-4cfe-a5c4-5379f2561e1f)  

### 2. FPGA receives UART command (``R``) and sends pixel data (Red) to the ILI9341 via SPI   
![Screenshot (530)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/9d5f9ccf-91c2-427a-9c4a-73b2e9d2ca31)  
![Screenshot (531)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/2ebbc1a2-6c3f-42cb-a08e-cec818bfb2ee)  

## Demo         
[Video Demo](https://drive.google.com/file/d/1rIX9XqvOrwfmkejMT1Yashc0A4uNj5Mf/view?usp=sharing)      

## Helpful resources   
- [ILITEK ILI9341 Specifications Document](https://drive.google.com/file/d/1omF5Pk9mfnfzifMGQ6iuK6_T9_BTqp32/view?usp=sharing)
- FPGA Prototyping By VHDL Examples (Xilinx Spartan-3 Version) - Pong P. Chu (Check timing diagrams for UART)   
- RTL Hardware Design Using VHDL - Pong P. Chu (Check how FIFO buffers work)   
- [Intel Quartus Prime User Guide: Design Recommendations](https://drive.google.com/file/d/10ceeMwrubd7WwAiYCywm3BV2gu6W5p9I/view?usp=sharing)  
- [Altera: Quartus II Handbook, Volume 3. Verification](https://drive.google.com/file/d/1oJjXx_n8-xdQk2OVQpPyZaf3n0bG2LTP/view?usp=sharing)  
- [Project 10](https://github.com/MUDAL/Altera_FPGA_Projects/tree/main/EP4CE6_Projects/P10_ILI9341_HC06)     

## Simulation results for the top-level design  
```
Expected: 00, Got: 00, Status: PASS
Expected: 1F, Got: 1F, Status: PASS
Expected: 00, Got: 00, Status: PASS
Expected: 1F, Got: 1F, Status: PASS
Expected: 00, Got: 00, Status: PASS
Expected: 1F, Got: 1F, Status: PASS
Expected: 00, Got: 00, Status: PASS
Expected: 1F, Got: 1F, Status: PASS
Expected: 00, Got: 00, Status: PASS
Expected: 1F, Got: 1F, Status: PASS
Passed tests: 10, Failed tests: 0
```
