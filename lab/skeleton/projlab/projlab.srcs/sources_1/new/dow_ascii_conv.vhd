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
		bcd_signal : in std_logic_vector(2 downto 0);
		ascii_signal : out std_logic_vector(15 downto 0)
       );
end bcd_ascii_conv;

  architecture Behavioral of bcd_ascii_conv is

begin

	process(bcd_signal)
	begin
		case bcd_signal is
			when "000" =>
				ascii_signal <= x"536f"; -- So
			when "001" =>
				ascii_signal <= x"4d6f"; -- Mo
			when "010" =>
				ascii_signal <= x"4469"; -- Di
			when "011" =>
				ascii_signal <= x"4d69"; -- Mi
			when "100" =>
				ascii_signal <= x"446f"; -- Do
			when "101" =>
				ascii_signal <= x"4672"; -- Fr
			when "110" =>
				ascii_signal <= x"5361"; -- Sa
			when others =>
				ascii_signal <= x"20";
		end case;
	end process;
end Behavioral;

