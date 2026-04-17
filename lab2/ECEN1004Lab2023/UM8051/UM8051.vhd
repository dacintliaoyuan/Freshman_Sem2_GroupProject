LIBRARY ieee;
USE ieee.std_logic_1164.all; 

library work;
use work.mc8051_p.all;

ENTITY UM8051 IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		T0, T1, INT0, INT1, RX : IN STD_LOGIC;
		TX : OUT STD_LOGIC;
		P0in, P1in, P2in, P3in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		P0out, P1out, P2out, P3out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END UM8051;

ARCHITECTURE bdf_type OF UM8051 IS 

COMPONENT control_sch
   PORT(clock : in std_logic; -- clock input
        reset : in std_logic; -- reset input 
		  task : out std_logic_vector(C_IMPL_N_TSK-1 downto 0)
   );
END COMPONENT;

COMPONENT mc8051_core
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 all_rxd_i : IN STD_LOGIC_VECTOR(0 TO 0);
		 all_t0_i : IN STD_LOGIC_VECTOR(0 TO 0);
		 all_t1_i : IN STD_LOGIC_VECTOR(0 TO 0);
		 datax_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 int0_i : IN STD_LOGIC_VECTOR(0 TO 0);
		 int1_i : IN STD_LOGIC_VECTOR(0 TO 0);
		 p0_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 p1_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 p2_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 p3_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 ram_data_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 rom_data_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 ram_wr_o : OUT STD_LOGIC;
		 ram_en_o : OUT STD_LOGIC;
		 wrx_o : OUT STD_LOGIC;
		 adrx_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 all_rxd_o : OUT STD_LOGIC_VECTOR(0 TO 0);
		 all_rxdwr_o : OUT STD_LOGIC_VECTOR(0 TO 0);
		 all_txd_o : OUT STD_LOGIC_VECTOR(0 TO 0);
		 datax_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 p0_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 p1_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 p2_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 p3_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 ram_adr_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 ram_data_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 rom_adr_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mc8051_clk
	PORT(inclk0 : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT mc8051_ram
	PORT(wren : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 clken : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mc8051_rom
	PORT(clock : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mc8051_xram
	PORT(address	: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q			: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	RAMAddress :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	RAMClkEn :  STD_LOGIC;
SIGNAL	RAMDateIn :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	RAMDateOut :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	RamWrEn :  STD_LOGIC;
SIGNAL	xRAMAddress :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	xRAMDateIn :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	xRAMDateOut :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	xRamWrEn :  STD_LOGIC;
SIGNAL	ROMAddress :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	ROMDate :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SysClk :  STD_LOGIC;
SIGNAL	Task : STD_LOGIC_VECTOR(C_IMPL_N_TSK-1 DOWNTO 0);


BEGIN 


b2v_inst : mc8051_core
PORT MAP(clk => clock,
		 reset => reset,
		 all_rxd_i(0) => RX,
		 all_t0_i(0) => T0,
		 all_t1_i(0) => T1,
		 int0_i(0) => INT0,
		 int1_i(0) => INT1,
		 p0_i => P0in,
		 p1_i => P1in,
		 p2_i => P2in,
		 p3_i => P3in,
--		 wrx_o : OUT STD_LOGIC;
--		 adrx_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		 all_rxd_o : OUT STD_LOGIC_VECTOR(0 TO 0);
--		 all_rxdwr_o : OUT STD_LOGIC_VECTOR(0 TO 0);
		 all_txd_o(0) => TX,
		 p0_o => P0out,
		 p1_o => P1out,
		 p2_o => P2out,
		 p3_o => P3out,		 
		 datax_i => xRAMDateOut,
		 datax_o => xRAMDateIn,
		 wrx_o => xRamWrEn,
		 adrx_o => xRAMAddress,
		 ram_data_i => RAMDateOut,
		 ram_data_o => RAMDateIn,
		 ram_wr_o => RamWrEn,
		 ram_en_o => RAMClkEn,
		 ram_adr_o => RAMAddress,
		 rom_data_i => ROMDate,
		 rom_adr_o => ROMAddress);


b2v_inst2 : mc8051_ram
PORT MAP(wren => RamWrEn,
		 clock => clock,
		 clken => RAMClkEn,
		 address => RAMAddress,
		 data => RAMDateIn,
		 q => RAMDateOut);


b2v_inst3 : mc8051_rom
PORT MAP(clock => clock,
		 address => ROMAddress(11 DOWNTO 0),
		 q => ROMDate);
		 
b2v_inst4 : mc8051_xram
PORT MAP(wren => xRamWrEn,
		 clock => clock,
		 address => xRAMAddress(13 DOWNTO 0),
		 data => xRAMDateIn,
		 q => xRAMDateOut);


		 

END bdf_type;