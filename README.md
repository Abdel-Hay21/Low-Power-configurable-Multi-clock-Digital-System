# **Introduction** 
The system is responsible of receiving commands through UART receiver to do different system functions as register file reading/writing or doing some processing using ALU block and send result to UART transmitter through asynchronous FIFO for handling different clock rates and avoid data loss.

# **Block Diagram**

![image](https://github.com/user-attachments/assets/37e2ec44-5c1d-4d18-9a52-ef0ba1afd1cb)

# **System Specifications** 
- Reference clock (REF_CLK) is 50 MHz.
- UART clock (UART_CLK) is 3.6864 MHz.
- Clock Divider is always on (clock divider enable = 1).

# **Supported Commands**
- Register file write.
  
![image](https://github.com/user-attachments/assets/27b3329c-4535-411e-bd0f-35c19714a93f)

- Register file read.

![image](https://github.com/user-attachments/assets/654c4b1f-58a1-4a03-831e-12b887295234)


- ALU operation with input operands.

![image](https://github.com/user-attachments/assets/0d05cb13-b2d2-4694-9de8-f8994faa39b9)


- ALU operation with default operands.

![image](https://github.com/user-attachments/assets/ce6e3981-1e61-44a5-892b-d14154ce911b)


 ## Supported ALU Operations

 - Addition
 - Subtraction
 - Multiplication
 - Division
 - AND
 - OR
 - NAND
 - NOR
 - XOR
 - XNOR
 - CMP: A = B
 - CMP: A > B
 - SHIFT right by one bit: A >> 1
 - SHIFT left by one bit: A << 1

# **Main blocks**

 ## UART RX

 ![image](https://github.com/user-attachments/assets/cd10bf5e-363b-400d-98c0-4a2c2b33c818)

 ## UART TX

 ![image](https://github.com/user-attachments/assets/07b69a43-e8df-409c-bebf-d90e701b9d89)

 ## FIFO 
 
![image](https://github.com/user-attachments/assets/a62da064-f13e-4db2-b6b3-d65d730fbd51)


for more details kindly check attached pdf file.
