----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:55:49 04/30/2013 
-- Design Name: 
-- Module Name:    clockMain - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.std_logic_ARITH.ALL;
use IEEE.std_logic_UNSIGNED.ALL;

entity clock_module is
    Port ( clk : in  std_logic;
           reset : in  std_logic;
           en_1K : in  std_logic;
           en_100 : in  std_logic;
           en_10 : in  std_logic;
           en_1 : in  std_logic;
			  
           key_action_imp : in  std_logic;
			  key_action_long : in std_logic;
           key_mode_imp : in  std_logic;
           key_minus_imp : in  std_logic;
           key_plus_imp : in  std_logic;
           key_plus_minus : in  std_logic;
           key_enable : in  std_logic;
			  
           de_set : in  std_logic;
           de_dow : in  std_logic_vector (2 downto 0);
           de_day : in  std_logic_vector (5 downto 0);
           de_month : in  std_logic_vector (4 downto 0);
           de_year : in  std_logic_vector (7 downto 0);
           de_hour : in  std_logic_vector (5 downto 0);
           de_min : in  std_logic_vector (6 downto 0);
			  
           led_alarm_act : out  std_logic;
           led_alarm_ring : out  std_logic;
           led_countdown_act : out  std_logic;
           led_countdown_ring : out  std_logic;
           led_switch_act : out  std_logic;
           led_switch_on : out  std_logic;
			  
			  lcd_en : out std_logic;
			  lcd_rw : out std_logic;
			  lcd_rs : out std_logic;
			  lcd_data : out std_logic_vector(7 downto 0)
			  
			  -- OLED signal only for development
			  --oled_en : out std_logic;
			  --oled_dc : out std_logic;
			  --oled_data : out std_logic;
			  --oled_reset : out std_logic;
			  --oled_vdd : out std_logic;
			  --oled_vbat : out std_logic
		);
end clock_module;

architecture Behavioral of clock_module is
	
	signal dcf_str_print : std_logic := '0';
	signal date_time : std_logic_vector(47 downto 0) := (others => '0');
	signal mode : std_logic_vector(2 downto 0) := (others => '0');
	
	component lcd_controller
    Port 
    ( 
        clk              : in std_logic;
        reset            : in std_logic;
        dcf_str_print    : in std_logic;
        mode             : in std_logic_vector(2 downto 0);
        date_time_i      : in std_logic_vector(47 downto 0);
        lcd_en           : out std_logic;
        lcd_rw           : out std_logic := '0';
        lcd_rs           : out std_logic := '0';
        lcd_data         : out std_logic_vector(7 downto 0)
    );
end component;
	

	
	
	
begin

 lcd_contr_module : lcd_controller
    port map
    (
    clk => clk,
    reset => reset,
    dcf_str_print => dcf_str_print,
    mode => mode,
    date_time_i => date_time,
    lcd_en => lcd_en,
    lcd_rw => lcd_rw,
    lcd_rs => lcd_rs,
    lcd_data => lcd_data
);


	
end Behavioral;

