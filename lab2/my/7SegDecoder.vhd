library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hex_decoder_8bit is
    Port ( 
        PIN_IN  : in  STD_LOGIC_VECTOR (7 downto 0);
        HEX_OUT : out STD_LOGIC_VECTOR (6 downto 0)
    );
end hex_decoder_8bit;

architecture Behavioral of hex_decoder_8bit is
begin
    process(PIN_IN)
    begin
        case PIN_IN is
            when X"00" => HEX_OUT <= "1000000";
            when X"01" => HEX_OUT <= "1111001";
            when X"02" => HEX_OUT <= "0100100";
            when X"03" => HEX_OUT <= "0110000";
            when X"04" => HEX_OUT <= "0011001";
            when X"05" => HEX_OUT <= "0010010";
            when X"06" => HEX_OUT <= "0000010";
            when X"07" => HEX_OUT <= "1111000";
            when X"08" => HEX_OUT <= "0000000";
            when X"09" => HEX_OUT <= "0010000";
            when X"88" => HEX_OUT <= "0001000";
            when X"83" => HEX_OUT <= "0000011";
            when X"C6" => HEX_OUT <= "1000110";
            when X"A1" => HEX_OUT <= "0100001";
            when X"86" => HEX_OUT <= "0000110";
            when X"8E" => HEX_OUT <= "0001110";
            when others => HEX_OUT <= "1111111";
        end case;
    end process;
end Behavioral;