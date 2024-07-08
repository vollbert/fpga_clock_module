library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_ascii_conv is
  Port (
	       clk : in std_logic;
		bcd_signal : in std_logic_vector(3 downto 0);
		ascii_signal : out std_logic_vector(7 downto 0)
       );
end bcd_ascii_conv;

  architecture Behavioral of bcd_ascii_conv is

begin

	process(bcd_signal)
	begin
		case bcd_signal is
			when "0000" =>
				ascii_signal <= x"30"; -- '0'
			when "0001" =>
				ascii_signal <= x"31"; -- '1'
			when "0010" =>
				ascii_signal <= x"32"; -- '2'
			when "0011" =>
				ascii_signal <= x"33"; -- '3'
			when "0100" =>
				ascii_signal <= x"34"; -- '4'
			when "0101" =>
				ascii_signal <= x"35"; -- '5'
			when "0110" =>
				ascii_signal <= x"36"; -- '6'
			when "0111" =>
				ascii_signal <= x"37"; -- '7'
			when "1000" =>
				ascii_signal <= x"38"; -- '8'
			when "1001" =>
				ascii_signal <= x"39"; -- '9'
			when others =>
				ascii_signal <= x"3F"; -- '?'
		end case;
	end process;
end Behavioral;

