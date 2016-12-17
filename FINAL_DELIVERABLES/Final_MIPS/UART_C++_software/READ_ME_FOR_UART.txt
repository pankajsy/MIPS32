 

Here the address of the file having hex codes (included in this file, name : "UART_Send")
is entered. The hex codes are read from the file and sent over the UART to FPGA.

The FPGA receives the 6 bytes of Data (1 byte : x"04" to indicate write process, 1 byte for the address on which the instruction will be written on the data memory,
4 bytes of data which is the actual instruction.)

The UART module and Software is complete and working. We have verified the sample 2 code using UART. The software has the feature to read the inputs such as "memory location" and "instruction" from a text file, and then send the 6 bytes of data over the UART (1 byte fixed "04" to indicate write operation, 1 byte Instruction memory address, 4 bytes of Instruction data).

After reception of the complete packet, the UART segregates and sends the address and the instruction, to be written on the instruction memory.

The manual clock is provided to processor using a "button" to perform single stepping execution.



