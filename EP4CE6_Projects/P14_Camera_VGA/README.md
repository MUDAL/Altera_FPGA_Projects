# Interfacing the EP4CE6 FPGA board with an OV7670 camera for image capture and display   
![ov7670_image](https://github.com/user-attachments/assets/9415d8d6-3545-4711-9a9c-54a1849d59e5)   

## Description  
This project interfaces the Altera Cyclone IV FPGA board with an OV7670 camera module and displays a grayscale image on a VGA monitor. The RTL design performs the following operations:
1. Generates a 25MHz clock signal to drive the camera.  
2. Waits for an external button input to trigger the **FPGA-Camera Interface** logic. This activates a finite state machine that samples the camera for pixels.  
3. Extracts YCbCr22 pixel data from the camera and temporarily stores it in a FIFO buffer (I've called this FIFO the **Camera FIFO**).  
4. Moves the **Camera FIFO** data to an external SDRAM to store a frame. This operation occurs when the FIFO is almost full and the SDRAM has enough room for additional pixel data to complete a frame.  
5. Moves pixel data from the SDRAM to a **VGA FIFO**. This FIFO temporarily holds the YCbCr422 pixel data before sending it to the **Grayscale Circuit** for extracting the grayscale component of the pixel data. The SDRAM-FIFO transfer occurs when the **VGA FIFO** is almost empty and the SDRAM hasn't finished transferring all pixels in a frame.  
6. Transfers the output of the **Grayscale Circuit** i.e. grayscale component of the YCbCr422 pixel data to the **VGA** block for driving a VGA monitor. The Red (R), Green (G), and Blue (B) channels of the VGA monitor are made equal to the Y-component/grayscale value of each pixel so that the monitor can display a grayscale image properly.     

## Video Demos  
1. [Demo 1](https://drive.google.com/file/d/1hyCfR6MCVKNZgMHqDQ0QiwqhTbvfTtTr/view?usp=sharing)    
2. [Demo 2](https://drive.google.com/file/d/19gjCazF4Rb4gBiK5P6o5fEhqkvj4tZh7/view?usp=sharing)     
3. [Demo 3](https://drive.google.com/file/d/1_qkbfj5sArfDHk0tcXBcBg_l4YmisaVn/view?usp=sharing)       




