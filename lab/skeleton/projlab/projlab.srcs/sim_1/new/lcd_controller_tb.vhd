library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lcd_controller_tb is
end lcd_controller_tb;

architecture Behavioral of lcd_controller_tb is


	signal clk : std_logic := '0';
	signal reset : std_logic := '0';
	signal dcf_str_print : std_logic := '0';
	signal mode : std_logic_vector(2 downto 0) := "000";
	signal date_time : std_logic_vector(58 downto 0) := "000" & x"00000000000000";
	signal lcd_en : std_logic := '0';
	signal lcd_rw : std_logic := '0';
	signal lcd_rs : std_logic := '0';
	signal lcd_data : std_logic_vector(7 downto 0) := "00000000";

	constant clk_period : time := 100 us;

	component lcd_controller is
		Port 
		( 
			clk              : in std_logic;
			reset            : in std_logic;
			dcf_str_print    : in std_logic;
			mode             : in std_logic_vector(2 downto 0);
			date_time_i      : in std_logic_vector(58 downto 0);
			lcd_en           : out std_logic;
			lcd_rw           : out std_logic;
			lcd_rs           : out std_logic;
			lcd_data         : out std_logic_vector(7 downto 0)
		);
	end component;

        -- fsm signals

begin

	clk_gen : process
	begin
		while true loop
			clk <= '0';
			wait for clk_period / 2;
			clk <= '1';
			wait for clk_period / 2;
		end loop;
	end process;

	lcd_controller_inst :  lcd_controller 
		port map
		( 
			clk  => clk, 
			reset => reset, 
			dcf_str_print => dcf_str_print,
			mode => mode,    
			date_time_i => date_time,
			lcd_en => lcd_en,
			lcd_rw => lcd_rw,
			lcd_rs => lcd_rs, 
			lcd_data => lcd_data 
			
		);

		p1 : process
		begin
			reset <= '1';
			mode <= "000";
			wait for 351 us;
			reset <= '0';
			wait for 8 ms;
			date_time <= "000" & x"00210508301549";
			dcf_str_print <= '1';
			wait;
		end process;


end Behavioral;
