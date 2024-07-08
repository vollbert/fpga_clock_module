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
use IEEE.std_logic_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity date_time is 
    Port (
      clk                : in STD_LOGIC;
      reset              : in STD_LOGIC;
      en_1               : in STD_LOGIC;
      dcf_valid          : in STD_LOGIC;  
      de_dow             : in STD_LOGIC_VECTOR (2 downto 0);
      de_day             : in STD_LOGIC_VECTOR (5 downto 0);
      de_month           : in STD_LOGIC_VECTOR (4 downto 0);
      de_year            : in STD_LOGIC_VECTOR (7 downto 0);  
      de_hour            : in STD_LOGIC_VECTOR (5 downto 0);    
      de_min             : in STD_LOGIC_VECTOR (6 downto 0);      
      dcf_str_print      : out STD_LOGIC;        
      -- 3 bits DOW | 8 bits second | 8 bits minute | 8 bits hour | 8 bits day | 8 bits month | 16 bits year
      date_time_year     : out STD_LOGIC_VECTOR (58 downto 0)
    );
end date_time;

architecture Behavioral of date_time is 
  Type STATE is (ST_RESET, ST_SYNC_FIRST, ST_SYNC, ST_NOSYNC);
  signal current_state, next_state : STATE := ST_RESET;

  signal second_r, second_c : STD_LOGIC_VECTOR(7 downto 0) := x"00";
  signal minute_r, minute_c : STD_LOGIC_VECTOR(7 downto 0) := x"00";
  signal hour_r, hour_c : STD_LOGIC_VECTOR(7 downto 0) := x"00";
  signal day_r, day_c : STD_LOGIC_VECTOR(7 downto 0) := x"00";
  signal dow_r, dow_c : STD_LOGIC_VECTOR(2 downto 0) := b"000";
  signal month_r, month_c : STD_LOGIC_VECTOR(7 downto 0) := x"00";
  signal year_r, year_c : STD_LOGIC_VECTOR(15 downto 0) := x"0000";

  signal sync_first_count : STD_LOGIC := '0';
begin

  -- function func_divisible_by_4 (
  --   bcd_8bit_var : in std_logic_vector(7 downto 0))
  --   return std_logic is 
  --     variable divBy25 : std_logic;
  -- begin
  --   case bcd_8bit_var is
  --     when x"00" => divBy25 := '1'; -- 0
  --     when b"00100101" => divBy25 := '1'; -- 25
  --     when b"01010000" => divBy25 := '1'; -- 50
  --     when b"01110101" => divBy25 := '1'; -- 75
  --     when others => divBy25 := '0';
  --   end case;
  --   return std_logic(divBy25);
  -- end;

  SEQ_ST_PROCESS: process(clk) begin
    if rising_edge(clk) then
      if (reset = '1') then
        current_state <= ST_RESET;
      else
        current_state <= next_state;
      end if;
    end if;
  end process;

  COMB_ST_PROCESS: process(current_state, dcf_valid, second_r, en_1) begin
    next_state <= current_state;

    case current_state is 
      WHEN ST_RESET =>
        if (dcf_valid = '1') then
          next_state <= ST_SYNC_FIRST;
        else
          next_state <= ST_NOSYNC;
        end if;

      WHEN ST_SYNC_FIRST => 
        if (dcf_valid = '1') then
          next_state <= ST_SYNC_FIRST;
        else
          next_state <= ST_SYNC;
        end if;

      WHEN ST_SYNC =>
        if (dcf_valid = '1') then
          next_state <= ST_SYNC_FIRST;
        elsif (dcf_valid = '0') then
          next_state <= ST_SYNC;
          if (second_r = x"00" and sync_first_count = '1') then -- second = 0
            next_state <= ST_NOSYNC;
          end if;
        end if;
        
      WHEN ST_NOSYNC =>
        if (dcf_valid = '0') then
          next_state <= ST_NOSYNC;
        elsif (dcf_valid = '1') then
          next_state <= ST_SYNC_FIRST;
        end if;

      WHEN others =>
        null;

    end case;
  end process;

  SEQ_TIME_COUNTER_PROCESS: process(clk) 
  begin
    if (rising_edge(clk)) then
      if (reset = '1') then
        second_r <= x"00"; -- second = 00
        minute_r <= x"00"; -- minute = 00
        hour_r <= x"00"; -- hour = 00
        day_r <= x"01"; -- day = 01 
        dow_r <= b"001"; -- dow = 001 (Monday)
        month_r <= x"01"; -- month = 01 (January)
        year_r <= x"2001"; -- year = 2001
      else 
        case(next_state) is 
          WHEN ST_SYNC_FIRST =>
            second_r <= x"00";
            minute_r <= '0' & de_min;
            hour_r <= b"00" & de_hour;
            day_r <= b"00" & de_day;
            dow_r <= de_dow;
            month_r <= b"000" & de_month;
            year_r <= b"0010" & b"0000" & de_year;  
            sync_first_count <= '0';

          WHEN ST_SYNC =>
            if (en_1 = '1') then
              second_r <= second_c;
              minute_r <= minute_c;
              hour_r <= hour_c;
              day_r <= day_c;
              dow_r <= dow_c;
              month_r <= month_c;
              year_r <= year_c;
              sync_first_count <= '1';
            end if;

          WHEN ST_NOSYNC =>
            if (en_1 = '1') then
              second_r <= second_c;
              minute_r <= minute_c;
              hour_r <= hour_c;
              day_r <= day_c;
              dow_r <= dow_c;
              month_r <= month_c;
              year_r <= year_c;
              sync_first_count <= '0';
          end if;

          WHEN others => 
            null;

          end case;
      end if;
    end if;
  end process;


  COMB_TIME_COUNTER_PROCESS: process(second_r, minute_r, hour_r, day_r, dow_r, month_r, year_r) 
    variable binary_val : unsigned(7 downto 0) := x"00";
    variable divisible_by_4 : std_logic := '0';
  begin
    second_c <= second_r + x"01";
    minute_c <= minute_r;
    hour_c <= hour_r;
    day_c <= day_r;
    dow_c <= dow_r;
    month_c <= month_r;
    year_c <= year_r;

    if (second_r(3 downto 0) = x"9") then -- second = X_9
      second_c(3 downto 0) <= x"0"; 
      second_c(7 downto 4) <= second_r(7 downto 4) + x"1";

      if (second_r(7 downto 4) = x"5") then -- second = 59
        second_c(7 downto 4) <= x"0";
        
        minute_c <= minute_r + x"01";
        if (minute_r(3 downto 0) = x"9") then -- minute = X_9
          minute_c(3 downto 0) <= x"0"; 
          minute_c(7 downto 4) <= minute_r(7 downto 4) + x"1";
          
          if (minute_r(7 downto 4) = x"5") then -- minute = 59
            minute_c(7 downto 4) <= x"0";

            hour_c <= hour_r + x"01";
            if (hour_r(7 downto 0) = x"23") then -- hour = 23
              hour_c(7 downto 0) <= x"00";

              dow_c <= dow_r + b"001";
              if (dow_r = b"110") then -- dow = 6 (Saturday)
                dow_c <= b"000";
              end if;
              
              day_c <= day_r + x"01";
              if (day_r(3 downto 0) = x"9") then -- day = X_9
                day_c(3 downto 0) <= x"0";
                day_c(7 downto 4) <= day_r(7 downto 4) + x"1";
              end if;
              
              if (month_r = x"01" or 
                  month_r = x"03" or 
                  month_r = x"05" or 
                  month_r = x"07" or 
                  month_r = x"08" or 
                  month_r = x"10") then -- month = Jan(1) | March(3) | May(5) | July(7) | August(8) | Oct(10) (31 days)
                if (day_r = x"31") then -- day = 31
                  month_c <= month_r + x"01";
                  day_c <= x"01";
                end if;
              end if;
            
              if (month_r = x"04" or 
                  month_r = x"06" or 
                  month_r = x"09" or 
                  month_r = x"11") then -- month = April(4) | June(6) | Sept(9) | Nov(11) (30 days)
                if (day_r = x"30") then -- day = 30
                  month_c <= month_r + x"01";
                  day_c <= x"01";
                end if;
              end if;

              if (month_r = x"02") then -- month = Feb(2) (28 days) 
                -- #define ISLP(y) ((y % 400 == 0) ||\
                -- (y % 100 != 0) && (y % 4 == 0))
                -- divisible_by_4 = func_divisible_by_25(year_r(7 downto 0));
                binary_val := unsigned(year_r(7 downto 4)) * 10 + unsigned(year_r(3 downto 0));
                
                if (binary_val(1 downto 0) = b"00") then -- leap year
                  if (day_r = x"29") then -- 29 days 
                    month_c <= month_r + x"01";
                    day_c <= x"01";
                  end if;
                else -- not leap year
                  if (day_r = x"28") then -- 28 days 
                    month_c <= month_r + x"01";
                    day_c <= x"01";
                  end if;
                end if;
              end if;
                
              if (month_r = x"12") then  -- month = Dec(12) (31 days)
                if (day_r = x"31") then -- day = 31
                  month_c <= x"01";
                  day_c <= x"01";
                  year_c <= year_r + x"0001";
                end if;
              end if;

            elsif (hour_r(3 downto 0) = x"9") then -- hour = X_9
              hour_c(3 downto 0) <= x"0"; 
              hour_c(7 downto 4) <= hour_r(7 downto 4) + x"1"; 
            end if;
          end if;
        end if;
      end if;
    end if;
  end process;

  -- 3 bits DOW | 8 bits second | 8 bits minute | 8 bits hour | 8 bits day | 8 bits month | 16 bits year
  date_time_year <= dow_r & second_r & minute_r & hour_r & day_r & month_r & year_r;
  dcf_str_print <= '1' when current_state = ST_SYNC else 
                   '1' when current_state = ST_SYNC_FIRST else
                   '0';

end Behavioral;