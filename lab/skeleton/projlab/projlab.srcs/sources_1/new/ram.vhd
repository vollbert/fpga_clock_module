
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
        --"00000010", -- 0x3 return home
        "00000110", -- 0x4 set entry mode to increase cursor and don't shift entire display
        x"00",
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

        -- display date -- 100
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
        x"44", -- D
        x"41", -- A
        x"54", -- T
        x"45", -- E
        x"3a", -- :
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
        x"20", -- weekday to do bcd to weekday_conv
        x"20", --
        x"20", --
        x"20",
        x"20", -- day 1
        x"20", -- day 2
        x"2F", -- /
        x"20", -- month 1
        x"20", -- month 2
        x"2F", -- /
        x"20", -- year 3
        x"20", -- ear 4
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
        
                -- display alarm -- 200
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
        x"41", -- A 
        x"4c", -- L
        x"41", -- A
        x"52", -- R
        x"4d", -- M
        x"3a", -- :
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
        x"30", -- 0
        x"30", -- 0
        x"3a", -- :
        x"30", -- 0
        x"30", -- 0
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
        
                    -- display time_switch_on -- 300
                -- first row
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"4f", -- O
        x"6e", -- n
        x"3a", -- :
        x"20", 
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
        x"4f", -- O
        x"66", -- f
        x"66", -- f
        x"3a", -- :
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
        x"2a", -- * 
        x"20", 
        x"30", -- 0
        x"30", -- 0
        x"3a", -- :
        x"30", -- 0
        x"30", -- 0
        x"3a", -- :
        x"30", -- 0
        x"30", -- 0
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
        x"30", -- 0
        x"3a", -- 0
        x"3a", -- :
        x"30", -- 0
        x"30", -- 0
        x"3a", -- :
        x"30", -- 0
        x"30", -- 0
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
        
        -- display time_switch_off -- 400
        -- first row
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"20", 
        x"4f", -- O
        x"6e", -- n
        x"3a", -- :
        x"20", 
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
        x"4f", -- O
        x"66", -- f
        x"66", -- f
        x"3a", -- :
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
        x"30", -- 0
        x"30", -- 0
        x"3a", -- :
        x"30", -- 0
        x"30", -- 0
        x"3a", -- :
        x"30", -- 0
        x"30", -- 0
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
        x"2a", -- *
        x"30", -- 0
        x"3a", -- 0
        x"3a", -- :
        x"30", -- 0
        x"30", -- 0
        x"3a", -- :
        x"30", -- 0
        x"30", -- 0
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
        
        -- display countdown -- 500
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
        x"54", -- T 
        x"69", -- i
        x"6d", -- m
        x"65", -- e
        x"72", -- r
        x"3a", -- :
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
        x"30", -- 0
        x"30", -- 0
        x"3a", -- :
        x"30", -- 0
        x"30", -- 0
        x"3a", -- :
        x"30", -- 0
        x"30", -- 0
        x"20",
        x"4f", -- O
        x"66", -- f
        x"66", -- f
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
        
        -- display countdown -- 600
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
        x"53", -- S 
        x"74", -- t
        x"6f", -- o
        x"70", -- p 
        x"20",
        x"57", -- W
        x"61", -- a
        x"74", -- t
        x"63", -- c
        x"68", -- h
        x"3a", -- :
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
        x"30", -- 0
        x"30", -- 0
        x"3a", -- :
        x"30", -- 0
        x"30", -- 0
        x"3a", -- :
        x"30", -- 0
        x"30", -- 0
        x"2e", -- .
        x"30", -- 0
        x"30", -- 0
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

          
        others => x"20"
);

component bcd_ascii_conv is
  Port (
           clk : in std_logic;
           bcd_signal : in std_logic_vector(3 downto 0);
           ascii_signal : out std_logic_vector(7 downto 0)
       );
end component;

component dow_ascii_conv is
  Port (
           clk : in std_logic;
           bcd_signal : in std_logic_vector(2 downto 0);
           ascii_signal : out std_logic_vector(15 downto 0)
       );
end component;

signal dow : std_logic_vector(15 downto 0) := x"2020";
signal second_1 : std_logic_vector(7 downto 0) := x"30";
signal second_2 : std_logic_vector(7 downto 0) := x"30";
signal minute_1 : std_logic_vector(7 downto 0) := x"30";
signal minute_2 : std_logic_vector(7 downto 0) := x"30";
signal hour_1 : std_logic_vector(7 downto 0) := x"30";
signal hour_2 : std_logic_vector(7 downto 0) := x"30";


begin

    dow_conv : dow_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(58 downto 56),
                ascii_signal => dow
           );


    second_1_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(55 downto 52),
                ascii_signal => second_1
           );

     

    second_2_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(51 downto 48),
                ascii_signal => second_2 
           );

           
    minute_1_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(47 downto 44),
                ascii_signal => minute_1 
           );


    minute_2_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(43 downto 40),
                ascii_signal => minute_2
           );

           
   hour_1_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(39 downto 36),
                ascii_signal => hour_1 
           );


    hour_2_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(35 downto 32),
                ascii_signal => hour_2 
           );


                                 
   day_1_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(31 downto 28),
                ascii_signal => ram(168) 
           );
           
  day_2_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(27 downto 24),
                ascii_signal => ram(169) 
           );
           
   month_1_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(23 downto 20),
                ascii_signal => ram(171) 
           );
           
  month_2_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(19 downto 16),
                ascii_signal => ram(172) 
           );  

    year_3_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(7 downto 4),
                ascii_signal => ram(174) --to do 
           );

    year_4_conv : bcd_ascii_conv
    port map(
                clk => clk,
                bcd_signal => date_time_i(3 downto 0),
                ascii_signal => ram(175) -- to do
           );

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
            
            -- to do
            -- add reset values for dynamic ram 

                else
                    if dcf_str_print = '1' then
                        -- time
                        ram(65) <= x"44"; -- D
                        ram(66) <= x"43"; -- C
                        ram(67) <= x"46"; -- F
                        
                        -- date
                        ram(155) <= x"44"; -- D
                        ram(156) <= x"43"; -- C
                        ram(157) <= x"46"; -- F
                        
                        -- alarm
                        ram(255) <= x"44"; -- D
                        ram(256) <= x"43"; -- C
                        ram(257) <= x"46"; -- F
                        
                        -- time switch on
                        ram(355) <= x"44"; -- D
                        ram(356) <= x"43"; -- C
                        ram(357) <= x"46"; -- F
                        
                        -- time switch off
                        ram(455) <= x"44"; -- D
                        ram(456) <= x"43"; -- C
                        ram(457) <= x"46"; -- F
                        
                        -- countdown
                        ram(555) <= x"44"; -- D
                        ram(556) <= x"43"; -- C
                        ram(557) <= x"46"; -- F
                        
                        -- stop watch
                        ram(655) <= x"44"; -- D
                        ram(656) <= x"43"; -- C
                        ram(657) <= x"46"; -- F
                        
                        -- to do
                    else 
                        -- time
                        ram(65) <= x"20"; -- 0
                        ram(66) <= x"20"; -- 0
                        ram(67) <= x"20"; -- 0
                        
                        -- date
                        ram(155) <= x"20"; -- 0
                        ram(156) <= x"20"; -- 0
                        ram(157) <= x"20"; -- 0
                        
                        -- alarm
                        ram(255) <= x"20"; -- 0
                        ram(256) <= x"20"; -- 0
                        ram(257) <= x"20"; -- 0
                        
                        -- time switch on
                        ram(355) <= x"20"; -- 0
                        ram(356) <= x"20"; -- 0
                        ram(357) <= x"20"; -- 0
                        
                        -- time switch off
                        ram(455) <= x"20"; -- 0
                        ram(456) <= x"20"; -- 0
                        ram(457) <= x"20"; -- 0
                        
                        -- countdown
                        ram(555) <= x"20"; -- 0
                        ram(556) <= x"20"; -- 0
                        ram(557) <= x"20"; -- 0
                        
                        -- stop watch
                        ram(655) <= x"20"; -- 0
                        ram(656) <= x"20"; -- 0
                        ram(657) <= x"20"; -- 0
                        
                    end if;
                        
                        -- assign dow signals to ram
                    ram(165) <= dow(15 downto 8);
                    ram(166) <=dow(7 downto 0);
                    
                     -- assign sec1 signals     
                     ram(61) <=  second_1;
                     ram(151) <= second_1;
                     ram(251) <= second_1;
                     ram(451) <= second_1;
                     ram(551) <= second_1;
                     ram(651) <= second_1;
                     
                     -- assign sec2 signals      
                     ram(62) <= second_2;
                     ram(152) <= second_2;
                     ram(252) <= second_2;
                     ram(452) <= second_2;
                     ram(552) <= second_2;
                     ram(652) <= second_2;
                     
                     -- assgin min1 signals      
                     ram(58) <= minute_1;
                     ram(148) <= minute_1;
                     ram(248) <= minute_1;
                     ram(448) <= minute_1;
                     ram(548) <= minute_1;
                     ram(648) <= minute_1;
                     
                     -- assign min2 signals           
                     ram(59) <= minute_2;
                     ram(149) <= minute_2;
                     ram(249) <= minute_2;
                     ram(449) <= minute_2;
                     ram(549) <= minute_2;
                     ram(649) <= minute_2;
                     
                     -- assign hour1 signals     
                     ram(55) <= hour_1;
                     ram(145) <= hour_1;
                     ram(245) <= hour_1;
                     ram(445) <= hour_1;
                     ram(545) <= hour_1;
                     ram(645) <= hour_1;
                     
                     -- assign hour2 signals        
                     ram(56) <= hour_2;
                     ram(146) <= hour_2;
                     ram(246) <= hour_2;
                     ram(446) <= hour_2;
                     ram(546) <= hour_2;
                     ram(646) <= hour_2;
                    
                end if;
            end if;
        end process;


    data_out <= ram(to_integer(unsigned(read_addr)));



end Behavioral;
