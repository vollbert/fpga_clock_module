----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/29/2024 07:48:31 AM
-- Design Name: 
-- Module Name: test_fsm - Behavioral
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

entity test_fsm is
--  Port ( );
end test_fsm;

architecture Behavioral of test_fsm is
component fsm is
    Port ( key_mode_imp : in STD_LOGIC;
           key_plus_imp : in  STD_LOGIC;
           key_minus_imp :in  STD_LOGIC;
           key_action_imp : in  STD_LOGIC;
           clk : in STD_LOGIC;
           en_1 : in STD_LOGIC;
           reset : in STD_LOGIC;
           
           mode : out STD_LOGIC_VECTOR(2 downto 0));

end component;
signal key_mode_imp,key_plus_imp,key_minus_imp,key_action_imp,clk,en_1,reset: STD_LOGIC:= '0';
signal mode: STD_LOGIC_VECTOR(2 downto 0);

begin
sim: fsm port map(
    clk => clk,
    reset=>reset,
    en_1=>en_1,
    key_action_imp => key_action_imp,
    key_mode_imp => key_mode_imp,
    key_plus_imp => key_plus_imp,
    key_minus_imp => key_minus_imp,
    mode => mode
);

clk_process:process
begin
    while true loop
        clk <= '0';
        wait for 200 ns;
        clk <= '1';
        wait for 200 ns;
    end loop;
end process;

en1k_process:process
begin
    while true loop
        en_1 <= '0';
        wait for 100 ns;
        en_1 <= '1';
        wait for 100 ns;
    end loop;
end process;

main: process
begin
    wait for 200 ns;
    reset <= '1';
    wait for 100 ns;
    reset <= '0';
    wait for 200ns;
    key_mode_imp <='1';
    wait for 200ns;
    key_mode_imp <='0';
    wait for 200ns;
    key_mode_imp <='1';
    wait for 200ns;
    key_mode_imp <='0';
    wait for 200ns;
    key_mode_imp <='1';
    wait for 200ns;
    key_mode_imp <='0';
    wait for 200ns;
    key_mode_imp <='1';
    wait for 200ns;
    key_mode_imp <='0';
    wait for 200ns;
    key_mode_imp <='1';
    wait for 200ns;
    key_mode_imp <='0';
    wait for 200ns;
    key_mode_imp <='1';
    wait for 200ns;
    key_mode_imp <='0';
    wait for 200ns;
    key_plus_imp <='1';
    wait for 200ns;
    key_plus_imp <='0';
    wait for 300ns;
    key_mode_imp <='1';
    wait for 200ns;
    key_mode_imp <='0';
    wait for 200ns;
    key_mode_imp <='1';
    wait for 200ns;
    key_mode_imp <='0';
    wait;
    
end process;


end Behavioral;
