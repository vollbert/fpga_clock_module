----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/24/2024 03:50:32 PM
-- Design Name: 
-- Module Name: fsm - Behavioral
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

entity fsm is
    Port ( key_mode_imp : in STD_LOGIC;
           key_plus_imp : in  STD_LOGIC;
           key_minus_imp :in  STD_LOGIC;
           key_action_imp : in  STD_LOGIC;
           clk : in STD_LOGIC;
           en_1k : in STD_LOGIC;
           reset : in STD_LOGIC;
           
           mode : out STD_LOGIC_VECTOR(2 downto 0));
end fsm;

architecture Behavioral of fsm is
signal mode_count:std_logic_vector(2 downto 0) := "000";
signal timer:integer := 0;
signal start_timer:std_logic := '0';
signal end_timer:std_logic := '0';
begin
mode <= mode_count;

countdown:process(en_1k,reset)
begin
    if reset = '1' then --reset all
        timer <= 0;
        start_timer <= '0';
        end_timer <= '0';
    
    elsif rising_edge(en_1k) then 
        end_timer <= '0';
        if start_timer = '1' then --start_timer
            if timer < 3000 then
                timer <= timer + 1; --count 3s
            else
                end_timer <= '1';
                start_timer <= '0'; --time over
            end if;
        end if;
    end if;
end process;

main: process(clk,reset)
begin
    if reset = '1' then
       mode_count <= "000";
    elsif rising_edge(clk) then
        if mode_count = "000" then --TIME
            if key_mode_imp='1' then
                mode_count <= "001";
            elsif key_minus_imp='1'or key_plus_imp='1' then 
                mode_count <= "110";
            end if;
        elsif mode_count="001" then --DATE
            start_timer <= '1';
            if end_timer = '1' then
                mode_count <= "000";
            elsif key_mode_imp='1' and start_timer = '1' then
                mode_count <= "010";
                start_timer <= '0'; 
            end if;
        elsif mode_count="010" then --ALARM
            if key_mode_imp='1' and  key_action_imp='1' then
                mode_count <= "000";
            elsif key_mode_imp='1' then 
                mode_count <= "011";
            end if;
        elsif mode_count="011" then --TIME SWITCH ON
            if key_mode_imp='1' then
                mode_count <= "100";
            end if;
        elsif mode_count="100" then --TIME SWITCH OFF
            if key_mode_imp='1' and (key_minus_imp='1' or key_plus_imp='1') then
                mode_count <= "000";
            elsif key_mode_imp='1' then 
                mode_count <= "101";
            end if;
        elsif mode_count="101" then --COUNTDOWN TIMER
            if key_mode_imp='1' then
                mode_count <= "000";
            end if;
        elsif mode_count="110" then --STOP WATCH
            if key_mode_imp='1' then
                mode_count <= "000";
            end if;
        end if;
    end if;
    
end process;

end Behavioral;
