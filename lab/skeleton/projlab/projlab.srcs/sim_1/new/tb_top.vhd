----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/30/2024 09:26:56 PM
-- Design Name: 
-- Module Name: tb_top - Behavioral
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

entity tb_top is
--  Port ( );
end tb_top;

architecture Behavioral of tb_top is
  COMPONENT top
    PORT (
      clk : in  STD_LOGIC;
      reset : in  STD_LOGIC;
      en_1K : in  STD_LOGIC;
      en_100 : in  STD_LOGIC;
      en_10 : in  STD_LOGIC;
      en_1 : in  STD_LOGIC;
      key_action : in  STD_LOGIC;
      key_mode : in  STD_LOGIC;
      key_minus : in  STD_LOGIC;
      key_plus : in  STD_LOGIC;
      dcf_data : in  STD_LOGIC;
      led_alarm_act : out  STD_LOGIC;
      led_alarm_ring : out  STD_LOGIC;
      led_countdown_act : out  STD_LOGIC;
      led_countdown_ring : out  STD_LOGIC;
      led_switch_act : out  STD_LOGIC;
      led_switch_on : out  STD_LOGIC;
      lcd_en : out std_logic;
      lcd_rw : out std_logic;
      lcd_rs : out std_logic;
      lcd_data : out std_logic_vector(7 downto 0)
    );
  END COMPONENT;

  signal clk          : STD_LOGIC := '0';
  constant clk_period : time := 100000 ns;

  SIGNAL reset :  STD_LOGIC := '0';
  SIGNAL en_1K :  STD_LOGIC := '0';
  SIGNAL en_100 :  STD_LOGIC := '0';
  SIGNAL en_10 :  STD_LOGIC := '0';
  SIGNAL en_1 :  STD_LOGIC := '0';
  SIGNAL key_action :  STD_LOGIC := '0';
  SIGNAL key_mode :  STD_LOGIC := '0';
  SIGNAL key_minus :  STD_LOGIC := '0';
  SIGNAL key_plus :  STD_LOGIC := '0';
  SIGNAL dcf_data :  STD_LOGIC := '0';
  SIGNAL led_alarm_act :  STD_LOGIC := '0';
  SIGNAL led_alarm_ring :  STD_LOGIC := '0';
  SIGNAL led_countdown_act :  STD_LOGIC := '0';
  SIGNAL led_countdown_ring :  STD_LOGIC := '0';
  SIGNAL led_switch_act :  STD_LOGIC := '0';
  SIGNAL led_switch_on :  STD_LOGIC := '0';
  SIGNAL lcd_en : std_logic := '0';
  SIGNAL lcd_rw : std_logic := '0';
  SIGNAL lcd_rs : std_logic := '0';
  SIGNAL lcd_data : std_logic_vector(7 downto 0) := x"00";

begin

  uut: top PORT MAP (
    clk                 => clk,
    reset               => reset,
    en_1K               => en_1K,
    en_100              => en_100,
    en_10               => en_10,
    en_1                => en_1,
    key_action          => key_action,
    key_mode            => key_mode,
    key_minus           => key_minus,
    key_plus            => key_plus,
    dcf_data            => dcf_data,
    led_alarm_act       => led_alarm_act,
    led_alarm_ring      => led_alarm_ring,
    led_countdown_act   => led_countdown_act,
    led_countdown_ring  => led_countdown_ring,
    led_switch_act      => led_switch_act,
    led_switch_on       => led_switch_on,
    lcd_en              => lcd_en,
    lcd_rw              => lcd_rw,
    lcd_rs              => lcd_rs,
    lcd_data            => lcd_data
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
    wait for clk_period*10000;
    en_1 <= '1';
    wait for clk_period;
  end process;

  -- en_100 process definitions
  EN_100_process :process
  begin
    en_100 <= '0';
    wait for clk_period*100;
    en_100 <= '1';
    wait for clk_period;
  end process;

  stim_proc: process
  begin
    reset <= '1';
    wait for clk_period*10;
    reset <= '0';
    dcf_data <= '1';
    wait for clk_period*10;
    wait;
  end process;
  
end Behavioral;
