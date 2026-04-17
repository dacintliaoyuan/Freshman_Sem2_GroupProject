library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity count_16bit is
    Port ( clk : in std_logic; -- clock input
           reset : in std_logic; -- reset input 
           count_in : in std_logic_vector(15 downto 0);
			  clk_out : out std_logic
     );
end count_16bit;


architecture Behavioral of count_16bit is
signal counter_up: std_logic_vector(15 downto 0);
begin
-- up counter
process(clk,reset, count_in)
	begin
		if((reset='1') or (count_in=x"0000")) then
			counter_up <= x"0000";
			clk_out <= '0';
		else
			if(rising_edge(clk)) then
				if (counter_up = count_in - 1) then
					counter_up <= x"0000";
					clk_out <= '1';
				else
					counter_up <= counter_up + x"1";
					clk_out <= '0';
				end if;
			end if;
		end if;
	end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity control_sch is
    Port ( clock : in std_logic; -- clock input
           reset : in std_logic; -- reset input 
			  taskclk, task0, task1, task2, task3, task4 : in std_logic_vector(15 downto 0);
			  task : out std_logic_vector(7 downto 0)
     );
end control_sch;


architecture Behavioral of control_sch is

component count_16bit is
    Port ( clk : in std_logic; -- clock input
           reset : in std_logic; -- reset input 
           count_in : in std_logic_vector(15 downto 0);
			  clk_out : out std_logic
     );
end component;

signal clk : std_logic;
	
begin
	C1ms: count_16bit port map(clock, reset, taskclk, clk);
	Ctk0: count_16bit port map(clk, reset, task0, task(0));
	Ctk1: count_16bit port map(clk, reset, task1, task(1));
	Ctk2: count_16bit port map(clk, reset, task2, task(2));
	Ctk3: count_16bit port map(clk, reset, task3, task(3));
	Ctk4: count_16bit port map(clk, reset, task4, task(4));
	task(5) <= '1';
	task(6) <= '1';
	task(7) <= '1';	
end Behavioral;

