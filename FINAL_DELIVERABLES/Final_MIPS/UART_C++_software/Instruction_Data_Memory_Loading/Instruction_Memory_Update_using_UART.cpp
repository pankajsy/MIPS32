#include "ALL_header.h"
#include <iostream>

using namespace std;

char Ins_Buffer[1024];

HANDLE Connect (HANDLE *pComDev,  char *pPortName, char *pBaudRate);
BOOL   Write_COM_PORT (HANDLE *pComdDev, char *pBuffer ,  int BytesToWrite);
int    Read_COM_PORT  (HANDLE *pComdDev, char *pBuffer,   int MaxLength);
BOOL   DisConnect(HANDLE *pComdDev);

void   How_to_use(void);
void   SendHexFile(HANDLE *pComDev, FILE * pFile, Module_Family Family);
int    ReceiveData(HANDLE *pComDev, char * pBuffer, int BytesToReceive);

module Available_modules[] =
{
	{"Dummy0", 0x00, Dummy0 },
	{"Dummy1", 0x01, Dummy1 },
	{"NEXYS4DDR", 0x0A, Nexys4DDR},
	{NULL, 0}
};
 
/******************************************************************************/
int _tmain(int argc, _TCHAR* argv[])
{
	HANDLE   ComDev ;
	command_cCommand Command(argv, "i:b:");
	char *   pInterfaceName = NULL;
	char *   pReadPMAddress = NULL;
	char *   pReadEEAddress = NULL;
	char *   pBaudRate      = "9600";
	FILE *   pFile          = NULL;
	Module_Family  Family;

	while (Command.Next())
	{
		switch (Command.Option())
		{
			case 'i': /*Interface*/
				if (Command.Arg() == NULL)
				{
					printf("\n-i Enter correct COM Port\n");
					How_to_use();
					return 0;
				}
				else
				{
					pInterfaceName = Command.Arg();
					cout << "Interface : "<<pInterfaceName;
				}
		
				break;

			case 'b': /*Baudrate for communication using UART*/
				if (Command.Arg() == NULL)
				{
					printf("\n-b Enter Baudrate\n");
					How_to_use();
					return 0;
				}
				else
				{
					pBaudRate = Command.Arg();
					cout << "\n Baud Rate "<<pBaudRate;
				}
		
				break;

			case '.':
				if ((pFile = fopen(Command.Arg(), "r")) == NULL)
				{
					printf("\nFile Not Opening: %s\n", Command.Arg());
					return 0;
				}
				/*cout << "\nfile opened\n";
				char ch;
				while ((ch = fgetc(pFile)) != EOF)
					printf("%c", ch);

				fclose(pFile);
				//cout << *pFile;
				cout << "\n";*/
				break;

			default:
				printf("\nUnknown option `%c'\n", Command.Option());
				How_to_use();
				return 0;
		}
	}

	if(pInterfaceName == NULL)
	{
		printf("\nUse -i followed with interface name: Example COM1, COM2\n");
		How_to_use();
		getch();
		return 0;
	}

	assert(Connect(&ComDev, pInterfaceName, pBaudRate) != NULL);

	Family = Nexys4DDR;

	if(pFile == NULL)
	{
		printf("\nNo Hex File\n");
		How_to_use();
		return 0;
	}
	SendHexFile(&ComDev, pFile, Family);
		
	DisConnect(&ComDev);

 	return 0;
}
/******************************************************************************/
void SendHexFile(HANDLE *pComDev, FILE * pFile, Module_Family Family)
{
	char Buffer[BUFFER_SIZE];
	unsigned int  counter = 0;
	unsigned int count_max = 0;
	
	printf("\nReading HexFile having Instruction Memory Address and Data");
	while(fgets(Buffer, sizeof(Buffer), pFile) != NULL)
	{
		int Instruction = 0;
		int Address;
		int ByteCount = 5;

		//sscanf(Buffer, "%2x%8x", &Address, &Instruction);
		sscanf(Buffer, "%2x%8x", &Address, &Instruction);

		/*cout << "\nAddress = " << hex << Address;
		getch();
		cout << "\nInstruction = " << hex << ((Instruction));
		cout << "\nInstruction = " << hex << ((Instruction >> 24) & 0xFF);
		cout << "\nInstruction = " << hex << ((Instruction >> 16) & 0xFF);
		cout << "\nInstruction = " << hex << ((Instruction >> 8) & 0xFF);
		cout << "\nInstruction = " << hex << ((Instruction) & 0xFF);

		getch();*/


		Ins_Buffer[counter] = Address & 0xFF;
		Ins_Buffer[counter + 1] = (Instruction >> 24) & 0xFF;
		Ins_Buffer[counter + 2] = (Instruction >> 16) & 0xFF;
		Ins_Buffer[counter + 3] = (Instruction >> 8) & 0xFF;
		Ins_Buffer[counter + 4] = (Instruction) & 0xFF;

		/*cout << "\n";
		cout << sizeof(Ins_Buffer[counter]);
		cout << "\n";
		cout << sizeof(Ins_Buffer[counter + 1]);
		cout << "\n";
		cout << sizeof(Ins_Buffer[counter + 2]);
		cout << "\n";
		cout << sizeof(Ins_Buffer[counter + 3]);
		cout << "\n";
		cout << sizeof(Ins_Buffer[counter + 4]);
		cout << "\n";
		*/
		cout << "\n Ins_Buffer[counter + 0] = "  << int (Ins_Buffer[counter] & 0xFF);
		getch();
		cout << "\n Ins_Buffer[counter + 1] = " << int(Ins_Buffer[counter+1] & 0xFF);
		getch();
		cout << "\n Ins_Buffer[counter + 2] = " << int (Ins_Buffer[counter+2] & 0xFF);
		getch();
		cout << "\n Ins_Buffer[counter + 3] = " << int (Ins_Buffer[counter+3] & 0xFF);
		getch();
		cout << "\n Ins_Buffer[counter + 4] = " << int (Ins_Buffer[counter+4] & 0xFF);
		getch();
		cout << "\n\n";

		if ((int (Ins_Buffer[counter + 1] & 0xFF) == 0xFC) && (int (Ins_Buffer[counter + 2]&0xFF) == 0x00) && (int (Ins_Buffer[counter + 3] & 0xFF) == 0x00) && (int (Ins_Buffer[counter + 4] & 0xFF) == 0x00))
		{
			count_max = counter + 4;
			cout << "count max = " << int(count_max);
			counter = 0;
			cout << "break";
			break;
		}
		/*else if (counter == 0xF0)
		{
			cout << "\nnew break";
			break;
		}*/
		else
		{
			counter = counter + 5;
		}
		cout << hex << "\n"<<counter;
	}
       
	for (int i = 0; i <= count_max; i++)
	{
		cout << "\nIns_Buffer[" << dec<<i << "] = " << hex<<(int (Ins_Buffer[i]) & 0xFF);
	}

	unsigned int j = 0;
	unsigned int flag = 0;
	while (1)
	{
		while ((Buffer[0] != COMMAND_ACK))// | (flag == 1))
		{
			if (j < count_max)
			{
				flag = 0;
				cout << "\nj = " << int(j);
				Buffer[0] = COMMAND_WRITE_PM & 0xFF;
				Buffer[1] = Ins_Buffer[j + 0] & 0xFF;
				Buffer[2] = Ins_Buffer[j + 1] & 0xFF;
				Buffer[3] = Ins_Buffer[j + 2] & 0xFF;
				Buffer[4] = Ins_Buffer[j + 3] & 0xFF;
				Buffer[5] = Ins_Buffer[j + 4] & 0xFF;
				Buffer[6] = 0x00;

				Write_COM_PORT(pComDev, Buffer, 7);
				flag = ReceiveData(pComDev, &Buffer[0], 1);
				//cout << "\nflag = " << flag;
				cout << "data received = " << int(Buffer[0]);
				getch();
			}
			else
			{
				break;
			}
		}

		if (j < count_max)
		{
			j = j + 5;
			if (Buffer[0] == COMMAND_ACK)
			{
				Buffer[0] = COMMAND_WRITE_PM & 0xFF;
			}
		}
		else
		{
			cout << "\nBreak";
			cout << "\nj = " << j;
			cout << "\ncount max = " << count_max;
			getch();
			break;
		}	
	}
	
	getch();

	printf("UART Operation Complete\n");
}
/******************************************************************************/

void How_to_use(void)
{
	printf("\nUsage: \"Instruction_Data_Memory_Loading.exe\" -i interface [-bpe] hexfile\n\n");
	printf("Options:\n\n");
	printf("  -i	:	specifies serial interface name\n\n");
	printf("  -b	:	specifies baudrate for serial interface (Default Baudrate : 9600)\n\n");
}
/******************************************************************************/
int ReceiveData(HANDLE *pComDev, char * pBuffer, int BytesToReceive)
{
	int Size = 0;
	unsigned int count = 0;
	int flag;

	flag = 0;

	while(Size != BytesToReceive)
	{
		Size += Read_COM_PORT(pComDev, pBuffer + Size, BytesToReceive - Size);
		count++;
		/*if (count == 100000000)
		{
			flag = 1;
			break;
		}*/
	}
	return flag;
}
/******************************************************************************/
BOOL Write_COM_PORT(HANDLE * pComDev, char *pBuffer , int BytesToWrite)
{
	BOOL       bWriteStat   = 0;
	DWORD      BytesWritten = 0;
	COMSTAT    ComStat      = {0};
	OVERLAPPED osWrite      = {0,0,0};

	printf(".");

	if(WriteFile(*pComDev,pBuffer,BytesToWrite,&BytesWritten,&osWrite) == FALSE)
	{
		assert(GetLastError() == ERROR_IO_PENDING);
		return (FALSE);
	}

	return (TRUE);
}
/******************************************************************************/
int Read_COM_PORT(HANDLE *pComDev, char * pBuffer, int MaxLength )
{
	DWORD      Length;
	COMSTAT    ComStat    = {0};
	DWORD      ErrorFlags = 0;
	OVERLAPPED osRead     = {0,0,0};

   ClearCommError(*pComDev, &ErrorFlags, &ComStat);

	Length = min((DWORD)MaxLength, ComStat.cbInQue);
   
	if(Length > 0)
	{
		if(ReadFile(*pComDev, pBuffer, Length, &Length, &osRead) == FALSE)
		{
			Length = 0 ;

			ClearCommError(*pComDev, &ErrorFlags, &ComStat);

			assert(ErrorFlags == 0);
		}
	}
	else
	{
		Length = 0;
		Sleep(1);
	}

	return (Length);
}
/******************************************************************************/
HANDLE Connect(HANDLE * pComDev, char * pPortName, char * pBaudRate)
{
	int BaudRate;
	COMMTIMEOUTS CommTimeOuts;
	DCB          Dcb;

   sscanf(pBaudRate, "%d", &BaudRate);

	*pComDev = CreateFile(pPortName,GENERIC_READ|GENERIC_WRITE,0,NULL,OPEN_EXISTING,FILE_ATTRIBUTE_NORMAL|FILE_FLAG_OVERLAPPED,NULL);
	  
	if(*pComDev == NULL)
	{
		return (*pComDev);
	}

	SetCommMask(*pComDev, EV_RXCHAR);

	/*buffers */
	SetupComm(*pComDev, 10000, 10000);

	/* purge information in buffer*/
	PurgeComm(*pComDev,  PURGE_TXABORT|PURGE_RXABORT |PURGE_TXCLEAR |PURGE_RXCLEAR);

	/*Input output Overlap*/
	CommTimeOuts.ReadIntervalTimeout         = MAXDWORD;
	CommTimeOuts.ReadTotalTimeoutMultiplier  = 0;
	CommTimeOuts.ReadTotalTimeoutConstant    = 0;
	CommTimeOuts.WriteTotalTimeoutMultiplier = 2*CBR_9600/BaudRate;
	CommTimeOuts.WriteTotalTimeoutConstant   = 0 ;

	assert(SetCommTimeouts(*pComDev, &CommTimeOuts) == TRUE);

	Dcb.DCBlength = sizeof(DCB);

	assert(GetCommState(*pComDev, &Dcb) == TRUE);

	Dcb.BaudRate     = BaudRate;
	Dcb.ByteSize     = BYTESIZE;
	Dcb.Parity       = PARITY;
	Dcb.StopBits     = STOPBITS;
	Dcb.fOutxDsrFlow = FALSE;
	Dcb.fDtrControl  = DTR_CONTROL_DISABLE;
	Dcb.fOutxCtsFlow = FALSE ;
	Dcb.fRtsControl  = RTS_CONTROL_DISABLE;
	Dcb.fInX         = FALSE;
	Dcb.fOutX        = FALSE;
	Dcb.XonLim       = 0x800;
	Dcb.XoffLim      = 0x200;
	Dcb.fBinary      = TRUE ;
	Dcb.fParity      = TRUE ;

	assert(SetCommState(*pComDev, &Dcb) == TRUE);

	return (*pComDev);
}
/******************************************************************************/
BOOL DisConnect(HANDLE * pComDev)
{
	PurgeComm(*pComDev,  PURGE_TXABORT|PURGE_RXABORT |PURGE_TXCLEAR |PURGE_RXCLEAR);

	return(CloseHandle(*pComDev));
}
