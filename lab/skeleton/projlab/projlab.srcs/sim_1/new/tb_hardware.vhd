----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/30/2024 08:37:26 PM
-- Design Name: 
-- Module Name: tb_hardware - Behavioral
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

entity tb_hardware is
--  Port ( );
end tb_hardware;

architecture Behavioral of tb_hardware is
  COMPONENT hardware
    PORT(
      GCLK : in std_logic;	-- Clock source running at 100.00 MHz
		
      BTNC : in std_logic; -- Button Center
      BTNU : in std_logic; -- Button Up
      BTND : in std_logic; -- Button Down
      BTNL : in std_logic; -- Button Left
      BTNR : in std_logic; -- Button Right
      SW : in std_logic_vector(7 downto 0); -- Switches
      LED : out std_logic_vector(7 downto 0); -- LEDs
      
  --		OLED_DC : out std_logic;
  --		OLED_RES : out std_logic;
  --		OLED_SCLK : out std_logic;
  --		OLED_SDIN : out std_logic;
  --		OLED_VBAT : out std_logic;
  --		OLED_VDD : out std_logic;
      
      LCD_E : out std_logic;
      LCD_RW : out std_logic;
      LCD_RS : out std_logic;
      LCD_DATA : out std_logic_vector(7 downto 0) -- LCD Data    
    );
    END COMPONENT; 

    SIGNAL SW : std_logic_vector(7 downto 0) := x"00";
    SIGNAL clk : std_logic := '0';
    SIGNAL BTNC : std_logic := '0';
    SIGNAL BTNU : std_logic := '0';
    SIGNAL BTND : std_logic := '0';
    SIGNAL BTNL : std_logic := '0';
    SIGNAL BTNR : std_logic := '0';
    SIGNAL LED : std_logic_vector(7 downto 0) := x"00";
 
    SIGNAL LCD_E : std_logic := '0';
    SIGNAL LCD_RW : std_logic := '0';
    SIGNAL LCD_RS : std_logic := '0';
    SIGNAL LCD_DATA : std_logic_vector(7 downto 0) := x"00";

    constant clk_period : time := 10 ns;
    -- constant clk_period : time := 100000 ns;
begin
  uut: hardware PORT MAP (
    GCLK      => clk,
    BTNC      => BTNC,
    BTNU      => BTNU,
    BTND      => BTND,
    BTNL      => BTNL,
    BTNR      => BTNR,
    SW        => SW,
    LED       => LED,
    LCD_E     => LCD_E,
    LCD_RW    => LCD_RW,
    LCD_RS    => LCD_RS,
    LCD_DATA  => LCD_DATA
  );

  CLOCK_process :process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;

  stim_proc: process
  begin
    wait for clk_period*10000000;
    wait; 
  end process;

end Behavioral;
