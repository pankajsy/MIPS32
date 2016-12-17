#ifndef _Command_h
#define _Command_h

#include <string>

class command_cCommand {
public:
	command_cCommand(char *[],  char * = "");

	char * Arg()    { return m_pArg; }
	char   Option() { return m_Option; }
	void   Reset()  { m_ppCurrentArg = m_ppArgV; }
	char   Next();

private:
	char    m_Option;
	char *  m_pArg;
	char ** m_ppCurrentArg;
	char  * m_pOptionList;
	char ** m_ppArgV;
};

#endif
//cmd_cCmd