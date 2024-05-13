# Interfacing an FPGA with an ILI9341 TFT module and HC06 Bluetooth Module        
## Description  
In this project, the FPGA decodes commands received from an HC06 Bluetooth module to determine the colour  
that should be displayed on the ILI9341 module. There are four colours that can be displayed on the TFT  
screen. These are: red, green, blue, and white.   
- When ``R`` or ``r`` is received, the screen will be filled with red.    
- When ``G`` or ``g`` is received, the screen will be filled with green.   
- When ``B`` or ``b`` is received, the scrren will be filled with blue.   
- When characters other than the aforementioned ones are received, the screen will be filled with white.   

System specs:     
- 50 MHz main clock     
-  2 MHz: PLL clock    
-  1 MHz: SPI clock for the ILI9341      
- 9600 baud rate for the HC06    

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board
- ILI9341 TFT Display Module  
- HC06 Bluetooth Module     
- Intel Quartus Prime 20.1
- ModelSim (for simulation)  

## How to use   
- Clone the ``Altera_FPGA_Projects`` repository   
- Open the ``EP4CE6_Projects/P10_ILI9341_HC06/RTL`` directory  
- Open the ``rgb_display.qpf`` project file   
- Intel Quartus Prime should open after the previous step   
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start`` 

## Project file structure (RTL)   
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
  
## Demo         

## Helpful resources   
