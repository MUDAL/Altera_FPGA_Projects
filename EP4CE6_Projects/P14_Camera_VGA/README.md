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

## Building the project from a TCL script 

## What to do when Quartus opens  

## Pinouts  

## Video Demos  
1. [Demo 1](https://drive.google.com/file/d/1hyCfR6MCVKNZgMHqDQ0QiwqhTbvfTtTr/view?usp=sharing)    
2. [Demo 2](https://drive.google.com/file/d/19gjCazF4Rb4gBiK5P6o5fEhqkvj4tZh7/view?usp=sharing)     

## Helpful resource(s)  
- [Embedded Programmer: Hacking the OV7670 camera module (SCCB cheat sheet inside)](http://embeddedprogrammer.blogspot.com/2012/07/hacking-ov7670-camera-module-sccb-cheat.html)
- [OmniVision OV7670 Implementation Guide](https://drive.google.com/file/d/1TMuVWfwtu-uQOzcBpEOGpMJvtCAg0mx-/view?usp=sharing)   
- [OmniVision OV7670 Datasheet Timing](https://drive.google.com/file/d/1lBcHDXMsr5cDwFlDF8KQCbkqq5Mts-zV/view?usp=sharing)   












