#ifndef _Instruction_Memory_Update_using_UART_h
#define _Instruction_Memory_Update_using_UART_h

#define SCI_INTERFACE_NAME "COM"

#define BYTESIZE   8
#define PARITY     NOPARITY
#define STOPBITS   ONESTOPBIT
#define ASCII_XON  0x11
#define ASCII_XOFF 0x13

#define BUFFER_SIZE         4096
#define READ_BUFFER_TIMEOUT 1000

#define COMMAND_ACK      0x01
#define COMMAND_WRITE_PM 0x04

enum Module_Family
{
	Dummy0,
	Dummy1,
	Nexys4DDR
};

typedef struct
{
	char               * pName;
	unsigned short int   Id;
	Module_Family        Family;
} module;

#endif



