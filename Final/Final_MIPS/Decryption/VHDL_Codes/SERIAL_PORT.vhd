----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:34:48 11/23/2016 
-- Design Name: 
-- Module Name:    SERIAL_PORT - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 

-- Hardware testbed to show that the UART works on the Nexys4 DDR board.
-- For each character received at 9600bps, echo it back.
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity SERIAL_PORT  is
		 port (CLK			: in std_logic;
				 UART_RXD	: in std_logic;
				 UART_TXD	: out std_logic;
				 SSEG_CA		: out std_logic_vector(7 downto 0);
				 SSEG_AN		: out std_logic_vector(7 downto 0));
end SERIAL_PORT;

architecture behaviour of SERIAL_PORT  is
    -- The UART component simulates a 9600 bps serial port
    -- and there is a receive (RX) and transmit (TX) component
    component UART_RX_CTRL is
				  port ( UART_RX	: in   STD_LOGIC;
						   CLK			: in   STD_LOGIC;
						   DATA		: out  STD_LOGIC_VECTOR (7 downto 0);
						   READ_DATA	: out  STD_LOGIC := '0';
						   RESET_READ: in   STD_LOGIC);
	 end component;
    
    component UART_TX_CTRL is
				  Port ( SEND		: in  STD_LOGIC;
						   DATA		: in  STD_LOGIC_VECTOR (7 downto 0);
						   CLK			: in  STD_LOGIC;
						   READY		: out  STD_LOGIC;
						   UART_TX 	: out  STD_LOGIC);
	 end component;

    -- Used to show received characters
    component hex_7seg is
				  port (CLK				: in std_logic;
						  DATA				: in std_logic_vector(31 downto 0);
						  DIGIT_ENABLE	: in std_logic_vector(7 downto 0);
						  SSEG_CA			: out std_logic_vector(7 downto 0);
						  SSEG_AN			: out std_logic_vector(7 downto 0));
	 end component;
    
    -- Signals to hold the data in from and out to the UART
    signal uart_data_in: std_logic_vector(7 downto 0);
    signal uart_data_out: std_logic_vector(7 downto 0);

    -- UART receive signals: data is available, and
    -- a line to tell the UART that we have absorbed the data
    signal data_available: std_logic;
    signal reset_read: std_logic := '0';

    -- UART transmit signals: the component is ready to send
    -- a character, and a line to tell it to send the data now
    signal tx_is_ready: std_logic;
    signal send_data: std_logic := '0';
    
    -- Once the READ_DATA line goes high, we strobe the send_data
    -- line and move to the SENT state. Then we move into the
    -- WAITING state until READ_DATA drops, and we return to READY.

    type SEND_STATE_TYPE is (READY, SENT, WAITING);
    signal SEND_STATE : SEND_STATE_TYPE := READY;

    -- Diagnostic: store the last four characters here
    --signal last_four_chars: std_logic_vector(31 downto 0) := (others => '0');
    signal last_five_chars: std_logic_vector(39 downto 0) := (others => '0');
    
begin
    -- Instantiation of the UART receive component
    inst_UART_RX_CTRL: UART_RX_CTRL
        port map(
          UART_RX => UART_RXD,
          CLK => CLK,
          DATA => uart_data_in,
          READ_DATA => data_available,
          RESET_READ => reset_read
        );
    
    -- Instantiation of the UART transmit component
    inst_UART_TX_CTRL: UART_TX_CTRL
        port map(
          SEND => send_data,
          CLK => CLK,
          DATA => uart_data_out,
	  READY => tx_is_ready,
          UART_TX => UART_TXD
        );

    -- Instantiation of the 7-segment hex digit component
    inst_hex: hex_7seg 
        port map(
	    CLK => CLK,
            --DATA => last_four_chars,
            DATA => last_five_chars(31 downto 0),
				DIGIT_ENABLE => "11111111",
            SSEG_CA => SSEG_CA,
            SSEG_AN => SSEG_AN
        );
    
    uart_receive: process(CLK, SEND_STATE, data_available)
    begin
	if (rising_edge(CLK)) then
            case SEND_STATE is
                when READY =>
		    -- We are waiting for data to arrive.
		    -- If data is available and the transmitter is ready
                    if (data_available = '1' and tx_is_ready = '1') then
		  	-- Copy the data read in to the transmitter
			-- and initiate the transmission
			uart_data_out <= uart_data_in;
			last_five_chars(39 downto 8) <= last_five_chars(31 downto 0);
			last_five_chars(7 downto 0) <= uart_data_in;
                        send_data <= '1';
                        SEND_STATE <= SENT;
                    end if;
                
                when SENT =>
		    -- On the next clock cycle, tell the UART receiver
		    -- that we read the data, and reset the transmit initiation
                    reset_read <= '1';
                    send_data <= '0';
                    SEND_STATE <= WAITING;
                
                when WAITING =>
		    -- Once the receiver knows that we have absorbed the
		    -- data, lower the line that we used to tell it so.
		    -- We are now back in the READY state, waiting for the
		    -- next character to arrive on the receiver.
                    if (data_available = '0') then
                        reset_read <= '0';
                        SEND_STATE <= READY;
                    end if;
            end case;
	end if;
    end process;
    
end architecture;
