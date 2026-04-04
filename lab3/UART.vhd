----------------------------------------------------------------------
-- File Downloaded from http://www.nandland.com
----------------------------------------------------------------------
-- This file contains the UART Transmitter.  This transmitter is able
-- to transmit 8 bits of serial data, one start bit, one stop bit,
-- and no parity bit.  When transmit is complete o_TX_Done will be
-- driven high for one clock cycle.
--
-- Set Generic g_CLKS_PER_BIT as follows:
-- g_CLKS_PER_BIT = (Frequency of i_Clk)/(Frequency of UART)
-- Example: 10 MHz Clock, 115200 baud UART
-- (10000000)/(115200) = 87
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_TX is
	generic (
		g_CLKS_PER_BIT : integer := 20000     -- 24MHz / 20000 = 1200bps Needs to be set correctly
		);
	port (
		i_Clk       : in  std_logic;
		i_TX_DV     : in  std_logic;
		i_TX_Byte   : in  std_logic_vector(7 downto 0);
		o_TX_Active : out std_logic;
		o_TX_Serial : out std_logic;
		o_TX_Done   : out std_logic
		);
end UART_TX;

architecture RTL of UART_TX is

	type t_SM_Main is (s_Idle, s_TX_Start_Bit, s_TX_Data_Bits, s_TX_Stop_Bit, s_Cleanup);
	signal r_SM_Main : t_SM_Main := s_Idle;
	signal r_Clk_Count : integer range 0 to g_CLKS_PER_BIT-1 := 0;
	signal r_Bit_Index : integer range 0 to 7 := 0;  -- 8 Bits Total
	signal r_TX_Data   : std_logic_vector(7 downto 0) := (others => '0');
	signal r_TX_Done   : std_logic := '0';

	
begin
	p_UART_TX : process (i_Clk)
	begin
		if rising_edge(i_Clk) then
			case r_SM_Main is
				when s_Idle =>
					o_TX_Active <= '0';
					o_TX_Serial <= '1';         -- Drive Line High for Idle
					r_TX_Done   <= '0';
					r_Clk_Count <= 0;
					r_Bit_Index <= 0;
					if i_TX_DV = '0' then
						r_TX_Data <= i_TX_Byte;
						r_SM_Main <= s_TX_Start_Bit;
					else
						r_SM_Main <= s_Idle; 
					end if; -- Send out Start Bit. Start bit = 0 
				when s_TX_Start_Bit =>
					o_TX_Active <= '1';
					o_TX_Serial <= '0';

					-- Wait g_CLKS_PER_BIT-1 clock cycles for start bit to finish
					if r_Clk_Count < g_CLKS_PER_BIT-1 then
						r_Clk_Count <= r_Clk_Count + 1;
						r_SM_Main   <= s_TX_Start_Bit;
					else
						r_Clk_Count <= 0;
						r_SM_Main   <= s_TX_Data_Bits; 
					end if; -- Wait g_CLKS_PER_BIT-1 clock cycles for data bits to finish 
				when s_TX_Data_Bits =>
					o_TX_Serial <= r_TX_Data(r_Bit_Index);

					if r_Clk_Count < g_CLKS_PER_BIT-1 then
						r_Clk_Count <= r_Clk_Count + 1;
						r_SM_Main   <= s_TX_Data_Bits;
					else
						r_Clk_Count <= 0;
						-- Check if we have sent out all bits
						if r_Bit_Index < 7 then
							r_Bit_Index <= r_Bit_Index + 1;
							r_SM_Main   <= s_TX_Data_Bits;
						else
							r_Bit_Index <= 0;
							r_SM_Main   <= s_TX_Stop_Bit; 
						end if; 
					end if; -- Send out Stop bit. Stop bit = 1 
				when s_TX_Stop_Bit =>
					o_TX_Serial <= '1';

					-- Wait g_CLKS_PER_BIT-1 clock cycles for Stop bit to finish
					if r_Clk_Count < g_CLKS_PER_BIT-1 then
						r_Clk_Count <= r_Clk_Count + 1;
						r_SM_Main   <= s_TX_Stop_Bit;
					else
						r_TX_Done   <= '1';
						r_Clk_Count <= 0;
						r_SM_Main   <= s_Cleanup; 
					end if; -- Stay here 1 clock 
				when s_Cleanup =>
					o_TX_Active <= '0';
					r_TX_Done   <= '1';
					if i_TX_DV = '1' then
						r_SM_Main   <= s_Idle; 
					else
						r_SM_Main   <= s_Cleanup; 
					end if; -- Send out Start Bit. Start bit = 0 
				when others =>
					r_SM_Main <= s_Idle;
				end case;
		end if;
	end process p_UART_TX;
	o_TX_Done <= r_TX_Done;
end RTL;

----------------------------------------------------------------------
-- File Downloaded from http://www.nandland.com
----------------------------------------------------------------------
-- This file contains the UART Receiver.  This receiver is able to
-- receive 8 bits of serial data, one start bit, one stop bit,
-- and no parity bit.  When receive is complete o_rx_dv will be
-- driven high for one clock cycle.
-- 
-- Set Generic g_CLKS_PER_BIT as follows:
-- g_CLKS_PER_BIT = (Frequency of i_Clk)/(Frequency of UART)
-- Example: 10 MHz Clock, 115200 baud UART
-- (10000000)/(115200) = 87
--
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity UART_RX is
	generic (
		g_CLKS_PER_BIT : integer := 20000     -- Needs to be set correctly
		);
	port (
		i_Clk       : in  std_logic;
		i_RX_Serial : in  std_logic;
		o_RX_DV     : out std_logic;
		o_RX_Byte   : out std_logic_vector(7 downto 0)
		);
end UART_RX;

architecture rtl of UART_RX is
	type t_SM_Main is (s_Idle, s_RX_Start_Bit, s_RX_Data_Bits, s_RX_Stop_Bit, s_Cleanup);
	signal r_SM_Main : t_SM_Main := s_Idle;
	signal r_RX_Data_R : std_logic := '0';
	signal r_RX_Data   : std_logic := '0';
	signal r_Clk_Count : integer range 0 to g_CLKS_PER_BIT-1 := 0;
	signal r_Bit_Index : integer range 0 to 7 := 0;  -- 8 Bits Total
	signal r_RX_Byte   : std_logic_vector(7 downto 0) := (others => '0');
	signal r_RX_DV     : std_logic := '0';

begin
	-- Purpose: Double-register the incoming data.
	-- This allows it to be used in the UART RX Clock Domain.
	-- (It removes problems caused by metastabiliy)
	p_SAMPLE : process (i_Clk)
	begin
		if rising_edge(i_Clk) then
			r_RX_Data_R <= i_RX_Serial;
			r_RX_Data   <= r_RX_Data_R; 
		end if; 
	end process p_SAMPLE; -- Purpose: Control RX state machine 
	p_UART_RX : process (i_Clk) 
	begin 
		if rising_edge(i_Clk) then 
			case r_SM_Main is 
				when s_Idle =>
					r_RX_DV     <= '0';
					r_Clk_Count <= 0;
					r_Bit_Index <= 0;
					if r_RX_Data = '0' then       -- Start bit detected
						r_SM_Main <= s_RX_Start_Bit;
					else
						r_SM_Main <= s_Idle; 
					end if; -- Check middle of start bit to make sure it's still low 
				when s_RX_Start_Bit =>
					if r_Clk_Count = (g_CLKS_PER_BIT-1)/2 then
						if r_RX_Data = '0' then
							r_Clk_Count <= 0;  -- reset counter since we found the middle
							r_SM_Main   <= s_RX_Data_Bits;
						else
							r_SM_Main   <= s_Idle;
						end if;
					else
						r_Clk_Count <= r_Clk_Count + 1;
						r_SM_Main   <= s_RX_Start_Bit; 
					end if; -- Wait g_CLKS_PER_BIT-1 clock cycles to sample serial data 
				when s_RX_Data_Bits =>
					if r_Clk_Count < g_CLKS_PER_BIT-1 then
						r_Clk_Count <= r_Clk_Count + 1;
						r_SM_Main   <= s_RX_Data_Bits;
					else
						r_Clk_Count            <= 0;
						r_RX_Byte(r_Bit_Index) <= r_RX_Data;
					-- Check if we have sent out all bits
						if r_Bit_Index < 7 then
							r_Bit_Index <= r_Bit_Index + 1;
							r_SM_Main   <= s_RX_Data_Bits;
						else
							r_Bit_Index <= 0;
							r_SM_Main   <= s_RX_Stop_Bit; 
						end if;
					end if; -- Receive Stop bit. Stop bit = 1 
				when s_RX_Stop_Bit =>	-- Wait g_CLKS_PER_BIT-1 clock cycles for Stop bit to finish
					if r_Clk_Count < g_CLKS_PER_BIT-1 then
						r_Clk_Count <= r_Clk_Count + 1;
						r_SM_Main   <= s_RX_Stop_Bit;
					else
						r_RX_DV     <= '1';
						r_Clk_Count <= 0;
						r_SM_Main   <= s_Cleanup; 
					end if; -- Stay here 1 clock 
				when s_Cleanup =>
					r_SM_Main <= s_Idle;
					r_RX_DV   <= '0'; 
				when others =>
					r_SM_Main <= s_Idle;
			end case;
		end if;
	end process p_UART_RX;

	o_RX_DV   <= r_RX_DV;
	o_RX_Byte <= r_RX_Byte;
end rtl;

-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized     @	   	   €ú	  P  ÿ ÿ	 S M I   C o r p o r a t i o n                               U S B   D I S K                                                                                                                           
    @ 	   €ú	  P @ ÿ@ ÿ €smiSMI     USB DISK        1100                  =€  Žÿ?ÿ  ‡×@ (_   0P      ’  f!!Û H  ÀO1230_SC           2   0.654 ÿÿÿÿÿÿÿÿÿÿ
		clock :  IN  STD_LOGIC;
		Rx :  IN  STD_LOGIC;
		DV :  IN  STD_LOGIC;
		PDi:  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Tx :  OUT  STD_LOGIC;
		PDo:  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END UART;

ARCHITECTURE bdf_type OF UART IS 

COMPONENT uart_rx
GENERIC (g_CLKS_PER_BIT : INTEGER
			);
	PORT(i_Clk : IN STD_LOGIC;
		 i_RX_Serial : IN STD_LOGIC;
		 o_RX_DV : OUT STD_LOGIC;
		 o_RX_Byte : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT uart_tx
GENERIC (g_CLKS_PER_BIT : INTEGER
			);
	PORT(i_Clk : IN STD_LOGIC;
		 i_TX_DV : IN STD_LOGIC;
		 i_TX_Byte : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 o_TX_Active : OUT STD_LOGIC;
		 o_TX_Serial : OUT STD_LOGIC;
		 o_TX_Done : OUT STD_LOGIC
	);
END COMPONENT;



BEGIN 



b2v_inst : uart_rx
GENERIC MAP(g_CLKS_PER_BIT => g_CLKS_PER_BIT
			)
PORT MAP(i_Clk => clock,
		 i_RX_Serial => Rx,
		 o_RX_Byte => PDo);


b2v_inst1 : uart_tx
GENERIC MAP(g_CLKS_PER_BIT => g_CLKS_PER_BIT
			)
PORT MAP(i_Clk => clock,
		 i_TX_DV => DV,
		 i_TX_Byte => PDi,
		 o_TX_Serial => Tx);


END bdf_type;