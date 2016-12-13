 

Here the address of the file having hex codes (included in this file, name : "UART_Send")
is entered. The hex codes are read from the file and sent over the UART to FPGA.

The FPGA receives the 6 bytes of Data (1 byte : x"04" to indicate write process, 1 byte for the address on which the instruction will be written on the data memory,
4 bytes of data which is the actual instruction.)

Presently, we are able to receive the correct instructions, and address on which instruction is to be written. We have verified that the instruction and address received at the Instruction memory
is correct. However, due to some reason, probably  due to synchorinization, the instruction being actually written is getting corrupted in some cases.

It can been implemented if given a little more time.



