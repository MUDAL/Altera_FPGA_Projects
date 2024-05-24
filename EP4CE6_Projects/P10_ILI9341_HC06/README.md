# Interfacing an FPGA with an ILI9341 TFT module and HC06 Bluetooth Module        
## Description  
In this project, the FPGA decodes commands received from an HC06 Bluetooth module to determine the colour  
that should be displayed on the ILI9341 module. There are four colours that can be displayed on the TFT  
screen. These are: red, green, blue, and white.   
- When ``R`` or ``r`` is received, the screen will be filled with red.    
- When ``G`` or ``g`` is received, the screen will be filled with green.   
- When ``B`` or ``b`` is received, the screen will be filled with blue.   
- When characters other than the aforementioned ones are received, the screen will be filled with white.   

System specs:     
- 50 MHz main clock     
-  2 MHz: PLL clock    
-  1 MHz: SPI clock for the ILI9341      
- 9600 baud rate for the HC06    

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board
- ILI9341 TFT Display Module (2.4 inches, 240 x 320)    
- HC06 Bluetooth Module     
- Intel Quartus Prime 20.1
- ModelSim (for simulation)  

## How to use   
- Clone the ``Altera_FPGA_Projects`` repository   
- Open the ``EP4CE6_Projects/P10_ILI9341_HC06/`` directory  
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
[Video Demo](https://drive.google.com/file/d/1j0V4eVPRZ2ItI5fE4JJh-jrtvqcAinYw/view?usp=sharing)   

## Helpful resources   
- [ILITEK ILI9341 Specifications Document](https://drive.google.com/file/d/1omF5Pk9mfnfzifMGQ6iuK6_T9_BTqp32/view?usp=sharing)
- FPGA Prototyping By VHDL Examples (Xilinx Spartan-3 Version) - Pong P. Chu (Check timing diagrams for UART)   
- [Altera: Quartus II Handbook, Volume 3. Verification](https://drive.google.com/file/d/1oJjXx_n8-xdQk2OVQpPyZaf3n0bG2LTP/view?usp=sharing) - A very helpful document from Altera that allowed me to simulate this project in ModelSim. I wasn't able to simulate the top level design initially because of the Altera PLL IP. After searching online (forums) and discovering this document, I was able to compile the top level design (with an instantiated PLL IP) in ModelSim and run the simulation for it. In order to compile and simulate designs that use Altera IP cores, kindly check ``Chapter 1: Mentor Graphics, ModelSim Support, Simulating VHDL Designs. Pg 1-5``.

## Simulating VHDL Designs and Altera IP cores (in ModelSim)  
### Important commands (from [Altera: Quartus II Handbook, Volume 3. Verification](https://drive.google.com/file/d/1oJjXx_n8-xdQk2OVQpPyZaf3n0bG2LTP/view?usp=sharing))   

The following instructions will help you to perform a functional RTL simulation for VHDL designs in the ModelSim-Altera software.  

The following steps assume you have already created a ModelSim project.  

#### Create Simulation Libraries
Creating a simulation library is not required if you are using the ModelSim-Altera software. Simulation libraries are needed to simulate a design that contains an LPM function or an Altera megafunction. If you are using the Model TechnologyTM ModelSim software version, you need to create the simulation libraries and correctly link them to your design.       

1. Choose New > Library (File menu).
2. In the Create a New Library dialog box select a new Library and a logical linking to it.
3. Enter the name of the newly created library in the Library Name box.   
4. Click OK.  

```   
vlib altera_mf  
vmap altera_mf altera_mf  
vlib lpm  
vmap lpm lpm
```

The name of the libraries should be altera_mf (for Altera megafunctions) and lpm (for LPM and Megawizard-generated entities).     

#### Compile Simulation Models into Simulation Libraries
The following steps are not required for the ModelSim-Altera software.   
1. Choose Add to Project (File menu) and select Existing File.
2. Browse to the ``<quartus installation folder>/eda/sim_lib>`` and add the necessary simulation model files to your project.  
4. Select the simulation model file and select Properties (View menu).
5. Set the Compile to Library to the correct library.
   
The altera_mf.vhd should be compiled into the altera_mf library.   
The 220model.vhd should be compiled into the lpm library.  

```
vcom -work altera_mf <quartus installation directory>/eda/sim_lib/altera_mf_components.vhd>
vcom -work altera_mf <quartus installation folder/eda/sim_lib/altera_mf.vhd>

vcom -work lpm <quartus installation folder/eda/sim_lib/220pack.vhd>
vcom -work lpm <quartus installation folder/eda/sim_lib/220model.vhd>  
```
## Compiling Altera IP cores with the ModelSim GUI (without using ModelSim commands)  
One way to compile designs in ModelSim is to use the GUI. By default, designs are compiled to the ``work`` library. We've  
seen that some IP cores must be compiled to special libraries (``altera_mf`` and ``lpm``). The ``PLL`` IP in this project  
compiles to the ``altera_mf`` library. We could invoke the ``vcom`` command to compile it to this library or we could use  
the GUI as follows:  
1. Add the design file (``pll.vhd``) to the ModelSim project.
2. Right click on the file and select ``Properties``.
3. Check the dialog box that says ``Compile to library`` and select ``altera_mf`` instead of ``work``.
4. Click ``OK``.
5. Right click the file again and click ``Compile Selected``.

The image below illustrates this process.  
![Screenshot (544)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/a7efffa1-00f2-4c50-80d6-1a228a8b5ea2)  

Also, if you'd like to check the command generated by compiling the IP core with the ModelSim GUI (applies to all design files),    
simply click on the green message on the terminal that indicates successful compilation. The image below illustrates this  
explanation.   
![Screenshot (546)](https://github.com/MUDAL/Altera_FPGA_Projects/assets/46250887/140b4e12-8f0e-4e6e-87e0-d0fe7895472e)    

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
