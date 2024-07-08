
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ram is
    Port 
    (
        clk : in std_logic;
        reset            : in std_logic;
        dcf_str_print    : in std_logic;
        read_addr : in std_logic_vector(9 downto 0); -- read address 0 to 1024
        date_time_i :in std_logic_vector(58 downto 0);
        mode : in std_logic_vector(2 downto 0);
        data_out : out std_logic_vector(7 downto 0)

    );
end ram;

architecture Behavioral of ram is

    type ram_array is array ( 0 to 1023 ) of std_logic_vector ( 7 downto 0 );

    signal ram: ram_array := (

        -- init instructions
        "00111000", -- 0x0 function set : 8 bit bus mode, 2 line display mode, 5x8 dots display mode  
        "00000001", -- 0x1 clear display
        "00001110", -- 0x2 turn display on, cursor is turned on, cursor blink is disabled
        "00000010", -- 0x3 return home
        "00000110", -- 0x4 set entry mode to increase cursor and don't shift entire display
        
        "00000000", -- 0x5
        "00000000", -- 0x6
        "00000000", -- 0x7
        "00000000", -- 0x8
        "00000000", -- 0x9
        -- display_time  -- 10
        -- first row
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"54", -- T
        x"69", -- i
        x"6d", -- m
        x"65", -- e
        x"3a", -- :
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        -- second row
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20",
        x"20",
        x"20",
        x"20",
        x"20",
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        -- third row
        x"41", -- A
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", -- hour 1
        x"20", -- hour 2
        x"3a", -- :
        x"10", -- minute 1
        x"10", -- minute 2
        x"3a", -- :
        x"20", -- second 1
        x"20", -- second 2
        x"20",
        x"20",
        x"20", -- D
        x"20", -- C
        x"20", -- F
        x"20",
        x"53", -- S
        -- fourth row
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20",
        x"20",
        x"20",
        x"20",
        x"20",
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        -- padding
        x"20",
        x"20",
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 

        -- display time -- 100

        others => x"20"
);

component bcd_ascii_conv is
  Port (
           clk : in std_logic;
           bcd_signal : in std_logic_vector(3 downto 0);
           ascii_signal : out std_logic_vector(7 downto 0)
       );
end component;

begin

    DOW : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(23 downto 20),
                ascii_signal => ram(35) 
           );

    hour_1_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(23 downto 20),
                ascii_signal => ram(35) 
           );

    hour_2_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(19 downto 16),
                ascii_signal => ram(36) 
           );

    minute_1_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(15 downto 12),
                ascii_signal => ram(38) 
           );

    minute_2_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(11 downto 8),
                ascii_signal => ram(39) 
           );

    second_1_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(7 downto 4),
                ascii_signal => ram(41) 
           );

    second_2_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(3 downto 0),
                ascii_signal => ram(42) 
           );
    
    year_1_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(3 downto 0),
                ascii_signal => ram(42) 
           );

    year_2_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(3 downto 0),
                ascii_signal => ram(42) 
           );

    year_3_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(3 downto 0),
                ascii_signal => ram(42) 
           );

    year_4_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(3 downto 0),
                ascii_signal => ram(42) 
           );

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then

                else
                    if dcf_str_print = '1' then
                        ram(45) <= x"44"; -- D
                        ram(46) <= x"43";
                        ram(47) <= x"46";
                    else
                        ram(45) <= x"01";
                        ram(46) <= x"01";
                        ram(47) <= x"01";
                    end if;
                end if;
            end if;
        end process;


    data_out <= ram(to_integer(unsigned(read_addr)));



end Behavioral;
