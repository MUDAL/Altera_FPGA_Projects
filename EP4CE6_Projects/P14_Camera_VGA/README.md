# Interfacing the EP4CE6 FPGA board with an OV7670 camera for image capture and display   
![ov7670_image](https://github.com/user-attachments/assets/9415d8d6-3545-4711-9a9c-54a1849d59e5)   

## Description  
This project interfaces the Altera Cyclone IV FPGA board with an OV7670 camera module and displays a grayscale image on a VGA monitor. The RTL design performs the following operations:
1. Generates a 25MHz clock signal to drive the camera.  
2. Waits for an external button input to trigger the **FPGA-Camera Interface** logic. This activates a finite state machine that samples the camera for pixels.  
3. Obtains YCbCr422 pixel data from the camera and temporarily stores it in a FIFO buffer (**Camera FIFO**).  
4. Moves the **Camera FIFO** data to an external SDRAM to store a frame. This operation occurs when the FIFO is almost full and the SDRAM has enough room for additional pixel data to complete a frame.  
5. Moves pixel data from the SDRAM to a **VGA FIFO**. This FIFO temporarily holds YCbCr422 pixel data before sending it to the **Grayscale Circuit** for extraction of the grayscale component. The SDRAM-FIFO transfer occurs when the **VGA FIFO** is almost empty and the SDRAM controller hasn't yet finished transferring all the pixels in a frame to it.  
6. Transfers the output of the **Grayscale Circuit** (i.e. grayscale component of the YCbCr422 pixel data) to the **VGA** block for driving a VGA monitor. The Red (R), Green (G), and Blue (B) channels of the VGA monitor are set to the Y-component/grayscale value of each pixel so the monitor can display a grayscale image properly.

### Block Diagram
<img width="1101" height="101" alt="project_14_block_diagram" src="https://github.com/user-attachments/assets/c4b82ecb-63fd-4c1e-8291-96026e7b7b77" />   

## Tools  
- EP4CE6E22C8N Cyclone IV FPGA development board
- Intel Quartus Prime 20.1
- OV7670 Camera
- Signal Tap Logic Analyzer 
- CH340 USB-TTL Converter
- Hynix HY57V641620ETP-H SDRAM (on the FPGA board)

## Project file structure   
- The ``VHDL`` design files are located in the ``src`` and ``lib`` directories  
- The top-level design is the ``frame_capture_main.vhd``  
- The other modules or design files are located in the ``lib`` directory  
- Testbenches are located in the ``simulation/testbench`` directory  
- The ``simulation/testbench/sdram_behavioural_model/sdram_model.vhd`` is a non-synthesizable HDL code that mimics the behaviour of an actual SDRAM using the working principle of a block RAM. Since the SDRAM is external to the FPGA, there is no direct way of verifying the correctness of the SDRAM controller in simulation without creating a behavioural HDL model to emulate the SDRAM's operation.  
```
.
├── constraints
│   └── frame_capture_main.sdc
├── frame_capture_main.tcl
├── README.md
├── simulation
│   ├── main.do
│   └── testbench
│       ├── camera_interface_tb.vhd
│       ├── clock_divider_tb.vhd
│       ├── fifo_control_tb.vhd
│       ├── frame_capture_main_tb.vhd
│       ├── grayscale_circuit_tb.vhd
│       ├── pack_tb_body.vhd
│       ├── pack_tb_header.vhd
│       ├── sdram_behavioural_model
│       │   └── sdram_model.vhd
│       ├── sdram_controller_tb.vhd
│       └── vga_main_tb.vhd
└── src
    ├── frame_capture_main.vhd
    └── lib
        ├── button.vhd
        ├── camera_interface.vhd
        ├── clock_divider.vhd
        ├── fifo
        │   ├── fifo_control.vhd
        │   ├── fifo_main.vhd
        │   └── fifo_ram.vhd
        ├── grayscale_circuit.vhd
        ├── pkg.vhd
        ├── pll
        │   ├── pll.ppf
        │   ├── pll.qip
        │   └── pll.vhd
        ├── sdram_controller.vhd
        └── vga
            ├── vga_main.vhd
            └── vga_sync.vhd
```
## Building the project from a TCL script 
Ensure you're in the ``EP4CE6_Projects/P14_Camera_VGA/`` directory before running the commands below.  
```
1. mkdir build  
2. cd build
3. quartus_sh -t ../frame_capture_main.tcl
4. quartus frame_capture_main.qpf
```

## What to do when Quartus opens  
- After Quartus opens, click on the ``Processing`` tab  
- Click on ``Start Compilation``  
- After compilation, click on ``Program Device(Open Programmer)``  
- When the Programmer window opens, load the demo project into the FPGA by clicking ``Start``  

## Pinouts  

## Video Demos  
1. [Demo 1](https://drive.google.com/file/d/1hyCfR6MCVKNZgMHqDQ0QiwqhTbvfTtTr/view?usp=sharing)    
2. [Demo 2](https://drive.google.com/file/d/19gjCazF4Rb4gBiK5P6o5fEhqkvj4tZh7/view?usp=sharing)     

## Helpful resource(s)  
- [Embedded Programmer: Hacking the OV7670 camera module (SCCB cheat sheet inside)](http://embeddedprogrammer.blogspot.com/2012/07/hacking-ov7670-camera-module-sccb-cheat.html)
- [OmniVision OV7670 Implementation Guide](https://drive.google.com/file/d/1TMuVWfwtu-uQOzcBpEOGpMJvtCAg0mx-/view?usp=sharing)   
- [OmniVision OV7670 Datasheet Timing](https://drive.google.com/file/d/1lBcHDXMsr5cDwFlDF8KQCbkqq5Mts-zV/view?usp=sharing)   












