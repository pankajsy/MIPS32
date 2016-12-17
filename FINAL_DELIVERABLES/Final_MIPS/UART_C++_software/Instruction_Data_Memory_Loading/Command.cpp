
/******************************************************************************/
#include "ALL_header.h"


/******************************************************************************/
command_cCommand::command_cCommand( char * ppArgV[],  char * pOptionList)
: m_ppArgV(ppArgV), 
  m_ppCurrentArg(ppArgV+1),
  m_pOptionList(pOptionList)
{ }
/******************************************************************************/

char command_cCommand::Next()
{
	if (*m_ppCurrentArg == NULL)
	{
		return 0;
	}

	if ((*m_ppCurrentArg)[0] != '-')
	{
		m_pArg = *m_ppCurrentArg++;
		return m_Option = '.';
	}

	if ((*m_ppCurrentArg)[1] == '\0') 
	{
		m_ppCurrentArg++;
		return m_Option = '-';
	}

	const char * pOption = strchr(m_pOptionList, (*m_ppCurrentArg)[1]);

	if (pOption == NULL)
	{
		return m_Option = (*m_ppCurrentArg)[1];
	}

	m_Option = *pOption;
    
	if (pOption[1] != ':')
	{
		m_ppCurrentArg++;
		return m_Option;  
	}

	if ((*m_ppCurrentArg)[2] != '\0')
	{
		m_pArg = &(*m_ppCurrentArg)[2];
		m_ppCurrentArg++;
		return m_Option;  
	}

	m_ppCurrentArg++;

	if (*m_ppCurrentArg == NULL || (*m_ppCurrentArg)[0] == '-')
	{
		m_pArg   = NULL;
		return m_Option;
	}

	m_pArg = *m_ppCurrentArg++;

	return m_Option;
}
