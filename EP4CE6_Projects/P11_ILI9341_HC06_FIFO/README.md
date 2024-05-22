# Interfacing an FPGA with an ILI9341 TFT module and HC06 Bluetooth Module        
## Description  
In this project, the FPGA decodes commands received from an HC06 Bluetooth module to determine the colour  
that should be displayed on the ILI9341 module. There are four colours that can be displayed on the TFT  
screen. These are: red, green, blue, and white.   
- When ``R`` or ``r`` is received, the screen will be filled with red.    
- When ``G`` or ``g`` is received, the screen will be filled with green.   
- When ``B`` or ``b`` is received, the scrren will be filled with blue.   
- When characters other than the aforementioned ones are received, the screen will be filled with white.   

Unlike ``Project 10``, this design uses a RAM-based Synchronous FIFO buffer to ensure that data isn't lost  
whenever the ``UART RX`` module transmits data faster than the ``SPI TX`` module can receive and decode.
  
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
![Screenshot (527)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/6c0cce9a-9c37-49e1-9f8b-279e9a46faed)  

## Decoding SPI (ILI9341) and UART (HC06) with a Logic Analyzer        
### 1. Configuring the registers of the ILI9341 using data/command sent via SPI from the FPGA     
![Screenshot (528)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/0282292f-eb6c-4044-9875-005c0e704c82)   
![Screenshot (529)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/549daa4c-344e-4ed1-b3dc-109f7c86737c)    
### 2. FPGA receives UART command (``R``) and sends pixel data (Red) to the ILI9341 via SPI   
![Screenshot (530)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/895cb303-5fae-438e-8b9e-c1635fcc4015)   
![Screenshot (531)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/0c286f7f-25bb-4f35-9ee9-a1aca96e0abe)    

## Demo         
[TO BE ADDED]    

## Helpful resources   
- [ILITEK ILI9341 Specifications Document](https://drive.google.com/file/d/1omF5Pk9mfnfzifMGQ6iuK6_T9_BTqp32/view?usp=sharing)
- FPGA Prototyping By VHDL Examples (Xilinx Spartan-3 Version) - Pong P.Chu (Check timing diagrams for UART)   
- RTL Hardware Design Using VHDL - Pong P. Chu (Check how FIFO buffers work. Apply the knowledge of register-based FIFOs)   
- [Intel Quartus Prime User Guide: Design Recommendations](https://drive.google.com/file/d/10ceeMwrubd7WwAiYCywm3BV2gu6W5p9I/view?usp=sharing)  
- [Altera: Quartus II Handbook, Volume 3. Verification](https://drive.google.com/file/d/1oJjXx_n8-xdQk2OVQpPyZaf3n0bG2LTP/view?usp=sharing) - A very helpful document from Altera that allowed me to simulate this project in ModelSim. I wasn't able to simulate the top level design initially because of the Altera PLL IP. After searching online (forums) and discovering this document, I was able to compile the top level design (with an instantiated PLL IP) in ModelSim and run the simulation for it. In order to compile and simulate designs that use Altera IP cores, kindly check ``Chapter 1: Mentor Graphics, ModelSim Support, Simulating VHDL Designs. Pg 1-5``.
- [Project 10](https://github.com/MUDAL/Altera_FPGA_Projects/tree/main/EP4CE6_Projects/P10_ILI9341_HC06)    

