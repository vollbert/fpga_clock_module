----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/30/2024 01:20:34 AM
-- Design Name: 
-- Module Name: tb_date_time - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_date_time is
--  Port ( );
end tb_date_time;

architecture Behavioral of tb_date_time is
  COMPONENT date_time
    PORT(
    -- FROM CLK_GEN
       clk                : in STD_LOGIC;
       reset              : in STD_LOGIC;
       en_1               : in STD_LOGIC;
    -- FROM DCF_DECODER
       dcf_valid          : in STD_LOGIC;  
       de_dow             : in STD_LOGIC_VECTOR (2 downto 0);
       de_day             : in STD_LOGIC_VECTOR (5 downto 0);
       de_month           : in STD_LOGIC_VECTOR (4 downto 0);
       de_year            : in STD_LOGIC_VECTOR (7 downto 0);  
       de_hour            : in STD_LOGIC_VECTOR (5 downto 0);    
       de_min             : in STD_LOGIC_VECTOR (6 downto 0);      
    -- TO DISPLAY_CONTROLLER
       dcf_str_print      : out STD_LOGIC;        
       date_time_year     : out STD_LOGIC_VECTOR (58 downto 0)
      );
    END COMPONENT; 

  -- FROM CLK_GEN
  signal clk                : STD_LOGIC := '0';
  signal reset              : STD_LOGIC := '0';
  signal en_1               : STD_LOGIC := '0';
-- FROM DCF_DECODER
  signal dcf_valid          : STD_LOGIC := '0';  
  signal de_dow             : STD_LOGIC_VECTOR (2 downto 0) := b"000";
  signal de_day             : STD_LOGIC_VECTOR (5 downto 0) := b"000000";
  signal de_month           : STD_LOGIC_VECTOR (4 downto 0) := b"00000";
  signal de_year            : STD_LOGIC_VECTOR (7 downto 0) := b"00000000";  
  signal de_hour            : STD_LOGIC_VECTOR (5 downto 0) := b"000000";    
  signal de_min             : STD_LOGIC_VECTOR (6 downto 0) := b"0000000";      
-- TO DISPLAY_CONTROLLER
  signal dcf_str_print      : STD_LOGIC := '0';        
  signal date_time_year     : STD_LOGIC_VECTOR (58 downto 0) := b"00000000000000000000000000000000000000000000000000000000000";

  constant clk_period : time := 100000 ns;
begin

  -- Instantiate the Unit Under Test (UUT)
  uut: date_time PORT MAP (
    -- FROM CLK_GEN
   clk                => clk,
   reset              => reset,
   en_1               => en_1,
-- FROM DCF_DECODER
   dcf_valid          => dcf_valid,  
   de_dow             => de_dow,
   de_day             => de_day,
   de_month           => de_month,
   de_year            => de_year,  
   de_hour            => de_hour,    
   de_min             => de_min,      
-- TO DISPLAY_CONTROLLER
   dcf_str_print      => dcf_str_print,        
   date_time_year     => date_time_year
  );

  -- Clock process definitions
  CLOCK_process :process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;

  -- en_1 process definitions
  EN_1_process :process
  begin
    en_1 <= '0';
    wait for clk_period*3;
    en_1 <= '1';
    wait for clk_period;
  end process;

  stim_proc: process
    variable i : integer := 0;
    variable k : integer := 0;
  begin
    reset <= '1';
    wait for clk_period*10;
    reset <= '0';
    wait for clk_period*6000;

    dcf_valid   <= '1';
    de_min      <= b"1011001"; -- 59
    de_hour     <= b"100011"; -- 23
    de_day      <= b"110001"; -- 31
    de_dow      <= b"001"; -- Monday
    de_month    <= b"10010"; -- Dec (12)
    de_year     <= b"00010010"; -- 2012
    wait for clk_period;
    dcf_valid   <= '0';
    wait for clk_period*240;
    assert date_time_year = X"00200000000000000000000000000000001000000010010000000010011" report "The output does not match" severity error;
    wait for clk_period*400;
    
    dcf_valid   <= '1';
    de_min      <= b"1011001"; -- 59
    de_hour     <= b"100011"; -- 23
    de_day      <= b"101000"; -- 28
    de_dow      <= b"101"; -- Thursday
    de_month    <= b"00010"; -- Feb (02)
    de_year     <= b"00010011"; -- 2013
    wait for clk_period;
    dcf_valid   <= '0';
    wait for clk_period*240;
    assert date_time_year = X"11000000000000000000000000000000001000000110010000000010011" report "The output does not match" severity error;
    wait for clk_period*480;

    dcf_valid   <= '1';
    de_min      <= b"1011001"; -- 59
    de_hour     <= b"100011"; -- 23
    de_day      <= b"101000"; -- 28
    de_dow      <= b"011"; -- Tuesday
    de_month    <= b"00010"; -- Feb (02)
    de_year     <= b"00010010"; -- 2012
    wait for clk_period;
    dcf_valid   <= '0';
    assert date_time_year = X"10000000000000000000000000000101001000000100010000000010011" report "The output does not match" severity error;
    wait for clk_period*480;

    reset <= '1';
    wait for clk_period*10;
    reset <= '0';
    wait for clk_period*10;
    wait;
  end process;

end Behavioral;
