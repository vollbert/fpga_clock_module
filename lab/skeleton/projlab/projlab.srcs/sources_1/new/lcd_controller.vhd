library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lcd_controller is
    Port 
    ( 
        clk              : in std_logic;
        reset            : in std_logic;
        dcf_str_print    : in std_logic;
        mode             : in std_logic_vector(2 downto 0);
        date_time_i      : in std_logic_vector(58 downto 0);
        lcd_en           : out std_logic;
        lcd_rw           : out std_logic := '0';
        lcd_rs           : out std_logic := '0';
        lcd_data         : out std_logic_vector(7 downto 0)
    );
end lcd_controller;

architecture Behavioral of lcd_controller is


	type fsm_state_type is (idle, set_init, init, set_mode, display_date, display_time, display_alarm, display_time_switch_on, display_time_switch_off, display_countdown_timer, display_stopwatch);

	component ram is
		Port 
		(
			clk : in std_logic;
                        reset            : in std_logic;
                        dcf_str_print    : in std_logic;
			read_addr : in std_logic_vector(9 downto 0);
                        date_time_i :in std_logic_vector(58 downto 0);
                        mode : in std_logic_vector(2 downto 0);
			data_out : out std_logic_vector(7 downto 0)
		);
	end component;

        signal read_addr : std_logic_vector(9 downto 0) := "0000000000";
        signal enable_enable : std_logic := '1';
        signal timer : std_logic_vector(7 downto 0) := "00000000";
        -- fsm signals

	signal state  : fsm_state_type := idle;

        -- signals enable
        signal lcd_en_pulse : std_logic := '0';

begin

	ram_inst: ram
	 port map(
	    clk => clk,
            reset => reset,
            dcf_str_print => dcf_str_print,
	    read_addr => read_addr,
            date_time_i => date_time_i,
            mode => mode,
	    data_out => lcd_data
	);

        fsm_logic : process(clk)
        begin

            if rising_edge(clk) then
                if reset = '1' then
                    read_addr <= "0000000000";
                    lcd_rw <= '0';
                    state <= set_init;
                else
                    case state is
                        when idle =>
                        when set_init =>
                            state <= init;

                        when init =>
                    -- set to the number of init instructions
                            
                            if read_addr = "00" & x"00" then
                                read_addr <= std_logic_vector(unsigned(read_addr) + 1);
                            -- clear display exec time of 1.52 ms
                            elsif read_addr = "00" & x"01" then
                                
                                if timer = x"0F" then
                                            read_addr <= std_logic_vector(unsigned(read_addr) + 1);
                                            timer <= x"00";
                                else
                                    timer <= std_logic_vector(unsigned(timer) + 1);
                                end if;
                                
                                 -- return home exec time of 1.52 ms
                             elsif read_addr = "00" & x"02" then
                                 if timer = x"0F" then
                                            read_addr <= std_logic_vector(unsigned(read_addr) + 1);
                                            timer <= x"00";
                                 else
                                        timer <= std_logic_vector(unsigned(timer) + 1);
                                 end if;
                             else
                                    read_addr <= std_logic_vector(unsigned(read_addr) + 1);
                            end if;
                                
                            if read_addr = "00" & x"04" then
                                state <= set_mode;
                            else 
                                state <= init;
                            end if;

                        when set_mode =>
                    -- verify mode code with team

                            if unsigned(mode) = 0 then
                                state <= display_time;
                                read_addr <= "00" & x"0A"; --10

                            elsif mode = "001" then
                                state <= display_date;
                                read_addr <= "00" & x"64"; --100

                            elsif mode = "010" then
                                state <= display_alarm;
                                read_addr <= "00" & x"C8"; --200

                            elsif mode = "011" then
                                state <= display_time_switch_on;
                                read_addr <= "01" & x"2C"; --300

                            elsif mode = "100" then
                                state <= display_time_switch_off;
                                read_addr <= "01" & x"90"; --400

                            elsif mode = "101" then
                                state <= display_countdown_timer;
                                read_addr <= "01" & x"F4"; --500

                            elsif mode = "111" then
                                state <= display_stopwatch;
                                read_addr <= "10" & x"58"; --600

                            end if;

                        when display_time =>
                    -- buffer goes from 10 to 89
                            read_addr <= std_logic_vector(unsigned(read_addr) + 1);

                            if unsigned(read_addr) = 89 then
                                state <= set_mode;
                            end if;

                        when display_date =>
                    -- buffer goes from 100 to 179
                            read_addr <= std_logic_vector(unsigned(read_addr) + 1);

                            if unsigned(read_addr) = 179 then
                                state <= set_mode;
                            end if;

                        when display_alarm =>
                    -- buffer goes from 200 to 279
                            read_addr <= std_logic_vector(unsigned(read_addr) + 1);

                            if unsigned(read_addr) = 279 then
                                state <= set_mode;
                            end if;

                        when display_time_switch_on =>
                    -- buffer goes from 300 to 379
                            read_addr <= std_logic_vector(unsigned(read_addr) + 1);

                            if unsigned(read_addr) = 379 then
                                state <= set_mode;
                            end if;

                        when display_time_switch_off =>
                    -- buffer goes from 400 to 479
                            read_addr <= std_logic_vector(unsigned(read_addr) + 1);

                            if unsigned(read_addr) = 479 then
                                state <= set_mode;
                            end if;

                        when display_countdown_timer =>
                    -- buffer goes from 500 to 579
                            read_addr <= std_logic_vector(unsigned(read_addr) + 1);

                            if unsigned(read_addr) = 579 then
                                state <= set_mode;
                            end if;

                        when display_stopwatch =>
                    -- buffer goes from 600 to 679
                            read_addr <= std_logic_vector(unsigned(read_addr) + 1);

                            if unsigned(read_addr) = 679 then
                                state <= set_mode;
                            end if;

                        when others =>
                            state <= set_init;
                    end case;
                end if;
            end if;

        if falling_edge(clk) then
            case state is
                when idle =>

                when set_init =>
                    enable_enable <= '1';
                    
                when init =>
                    enable_enable <= '1';
                    if read_addr = "00" & x"04" then
                        enable_enable <= '0';
                    end if;

                when set_mode =>
                    enable_enable <= '1';

                when display_time =>
                    enable_enable <= '1';
                    if unsigned(read_addr) = 89 then
                        enable_enable <= '0';
                    end if;

                when display_date =>
                    enable_enable <= '1';
                    if unsigned(read_addr) = 179 then
                        enable_enable <= '0';
                    end if;

                when display_alarm =>
                    enable_enable <= '1';
                    if unsigned(read_addr) = 279 then
                        enable_enable <= '0';
                    end if;

                when display_time_switch_on =>
                    enable_enable <= '1';
                    if unsigned(read_addr) = 379 then
                        enable_enable <= '0';
                    end if;

                when display_time_switch_off =>
                    enable_enable <= '1';
                    if unsigned(read_addr) = 479 then
                        enable_enable <= '0';
                    end if;

                when display_countdown_timer =>
                    enable_enable <= '1';
                    if unsigned(read_addr) = 579 then
                        enable_enable <= '0';
                    end if;

                when display_stopwatch =>
                    enable_enable <= '1';
                    if unsigned(read_addr) = 679 then
                        enable_enable <= '0';
                    end if;

                when others =>
            end case;
        end if;
        end process;

        process(state)
        begin 
            case state is
                when idle =>
                when set_init =>
                    lcd_rs <= '0';
                when init =>
                    lcd_rs <= '0';
                when set_mode =>
                    lcd_rs <= '1';
                when others =>
                    lcd_rs <= '1';
            end case;
        end process;

        falling_edge_detection : process(clk, enable_enable)
        begin

                if reset = '1' then
                    lcd_en <= '0';
                elsif enable_enable = '1' then
                    lcd_en <= clk;
                else
                    lcd_en <= '0';
                end if;
        end process;

                

end Behavioral;
