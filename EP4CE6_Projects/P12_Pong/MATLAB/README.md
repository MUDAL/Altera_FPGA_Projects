# MATLAB Scripts to generate Memory Initialization Files (MIF) 

## Description  
The MATLAB scripts generate .mif files to initialize Altera FPGA Block RAMs.  

In this project, the block RAMs are used as synchronous ROMs to store the binary (or bitmap) variants of the ``game_menu.jpg`` and ``game_over.jpg`` files which contain respective texts of ``PONG`` and ``GAME OVER``.   

The images are first converted to grayscale before a thresholding algorithm is performed (with colour inversion). All white pixels are represented with bit 1, while the black ones are represented with 0. These ones and zeros are embedded in the .mif file. The FPGA design can manipulate the final colour of the images by manipulating the bits from the .mif files. The images below summarize the entire operation.   

### 1. Original images  
![game_menu](https://github.com/user-attachments/assets/5cc4d6c4-7f01-41b7-b694-4bb91d62ca9f)  
![game_over](https://github.com/user-attachments/assets/93c9323a-e8f7-40a6-9416-d1014edab165)  
### 2. Inverted images  
![gamemenu_inverted](https://github.com/user-attachments/assets/43750630-4866-45d9-96bd-653c3914211c)  
![gameover_inverted](https://github.com/user-attachments/assets/529b9181-8c45-47a4-971b-eea393d34e85)     
