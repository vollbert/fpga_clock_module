-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Thu Jul  4 20:44:38 2024
-- Host        : prakt14 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /nas/ei/home/ge93zow/lab/skeleton/projlab/projlab.sim/sim_1/impl/func/xsim/lcd_controller_tb_func_impl.vhd
-- Design      : hardware
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_gen is
  port (
    clk : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    en_1_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    LCD_E_OBUF : out STD_LOGIC;
    en_1_reg_1 : out STD_LOGIC;
    GCLK_IBUF_BUFG : in STD_LOGIC;
    clk_BUFG : in STD_LOGIC;
    \current_sample_reg[3]\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    LCD_E : in STD_LOGIC;
    heartbeat : in STD_LOGIC
  );
end clock_gen;

architecture STRUCTURE of clock_gen is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^clk\ : STD_LOGIC;
  signal counter_1 : STD_LOGIC;
  signal counter_100 : STD_LOGIC;
  signal \counter_100[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_100[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_100[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_100[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_100_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_100_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_100_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_100_reg_n_0_[3]\ : STD_LOGIC;
  signal counter_10K : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \counter_10K0_carry__0_n_0\ : STD_LOGIC;
  signal \counter_10K0_carry__0_n_4\ : STD_LOGIC;
  signal \counter_10K0_carry__0_n_5\ : STD_LOGIC;
  signal \counter_10K0_carry__0_n_6\ : STD_LOGIC;
  signal \counter_10K0_carry__0_n_7\ : STD_LOGIC;
  signal \counter_10K0_carry__1_n_4\ : STD_LOGIC;
  signal \counter_10K0_carry__1_n_5\ : STD_LOGIC;
  signal \counter_10K0_carry__1_n_6\ : STD_LOGIC;
  signal \counter_10K0_carry__1_n_7\ : STD_LOGIC;
  signal counter_10K0_carry_n_0 : STD_LOGIC;
  signal counter_10K0_carry_n_4 : STD_LOGIC;
  signal counter_10K0_carry_n_5 : STD_LOGIC;
  signal counter_10K0_carry_n_6 : STD_LOGIC;
  signal counter_10K0_carry_n_7 : STD_LOGIC;
  signal \counter_10K[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter_10K[12]_i_3_n_0\ : STD_LOGIC;
  signal counter_10K_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \counter_10[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_10[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_10[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_10[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_10[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter_10__0\ : STD_LOGIC;
  signal \counter_10_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_10_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_10_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_10_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_1K[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_1K[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_1K[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_1K[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter_1K_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_1K_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_1K_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_1K_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_1_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_1_reg_n_0_[3]\ : STD_LOGIC;
  signal en_1_i_1_n_0 : STD_LOGIC;
  signal en_1_i_3_n_0 : STD_LOGIC;
  signal i_clk_10K : STD_LOGIC;
  signal i_clk_10K_i_1_n_0 : STD_LOGIC;
  signal NLW_counter_10K0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_10K0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_10K0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_100[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter_100[2]_i_1\ : label is "soft_lutpair3";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of counter_10K0_carry : label is "SWEEP";
  attribute OPT_MODIFIED of \counter_10K0_carry__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \counter_10K0_carry__1\ : label is "SWEEP";
  attribute SOFT_HLUTNM of \counter_10[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_10[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_1K[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter_1K[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter_1K[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_1K[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_1[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter_1[2]_i_1\ : label is "soft_lutpair4";
begin
  SR(0) <= \^sr\(0);
  clk <= \^clk\;
LCD_E_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => reset,
      I1 => \^clk\,
      I2 => LCD_E,
      O => LCD_E_OBUF
    );
\counter_100[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_100_reg_n_0_[0]\,
      O => \counter_100[0]_i_1_n_0\
    );
\counter_100[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A52"
    )
        port map (
      I0 => \counter_100_reg_n_0_[0]\,
      I1 => \counter_100_reg_n_0_[3]\,
      I2 => \counter_100_reg_n_0_[1]\,
      I3 => \counter_100_reg_n_0_[2]\,
      O => \counter_100[1]_i_1_n_0\
    );
\counter_100[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_100_reg_n_0_[0]\,
      I1 => \counter_100_reg_n_0_[1]\,
      I2 => \counter_100_reg_n_0_[2]\,
      O => \counter_100[2]_i_1_n_0\
    );
\counter_100[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC4"
    )
        port map (
      I0 => \counter_100_reg_n_0_[0]\,
      I1 => \counter_100_reg_n_0_[3]\,
      I2 => \counter_100_reg_n_0_[1]\,
      I3 => \counter_100_reg_n_0_[2]\,
      O => \counter_100[3]_i_1_n_0\
    );
\counter_100_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => counter_100,
      D => \counter_100[0]_i_1_n_0\,
      Q => \counter_100_reg_n_0_[0]\,
      R => '0'
    );
\counter_100_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => counter_100,
      D => \counter_100[1]_i_1_n_0\,
      Q => \counter_100_reg_n_0_[1]\,
      R => '0'
    );
\counter_100_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => counter_100,
      D => \counter_100[2]_i_1_n_0\,
      Q => \counter_100_reg_n_0_[2]\,
      R => '0'
    );
\counter_100_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => counter_100,
      D => \counter_100[3]_i_1_n_0\,
      Q => \counter_100_reg_n_0_[3]\,
      R => '0'
    );
counter_10K0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter_10K0_carry_n_0,
      CO(2 downto 0) => NLW_counter_10K0_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => counter_10K(0),
      DI(3 downto 0) => B"0000",
      O(3) => counter_10K0_carry_n_4,
      O(2) => counter_10K0_carry_n_5,
      O(1) => counter_10K0_carry_n_6,
      O(0) => counter_10K0_carry_n_7,
      S(3 downto 0) => counter_10K(4 downto 1)
    );
\counter_10K0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter_10K0_carry_n_0,
      CO(3) => \counter_10K0_carry__0_n_0\,
      CO(2 downto 0) => \NLW_counter_10K0_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_10K0_carry__0_n_4\,
      O(2) => \counter_10K0_carry__0_n_5\,
      O(1) => \counter_10K0_carry__0_n_6\,
      O(0) => \counter_10K0_carry__0_n_7\,
      S(3 downto 0) => counter_10K(8 downto 5)
    );
\counter_10K0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_10K0_carry__0_n_0\,
      CO(3 downto 0) => \NLW_counter_10K0_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_10K0_carry__1_n_4\,
      O(2) => \counter_10K0_carry__1_n_5\,
      O(1) => \counter_10K0_carry__1_n_6\,
      O(0) => \counter_10K0_carry__1_n_7\,
      S(3 downto 0) => counter_10K(12 downto 9)
    );
\counter_10K[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_10K(0),
      O => counter_10K_0(0)
    );
\counter_10K[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \counter_10K[12]_i_2_n_0\,
      I1 => \counter_10K[12]_i_3_n_0\,
      I2 => counter_10K(4),
      I3 => counter_10K(9),
      I4 => counter_10K(0),
      O => i_clk_10K
    );
\counter_10K[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => counter_10K(6),
      I1 => counter_10K(7),
      I2 => counter_10K(3),
      I3 => counter_10K(5),
      I4 => counter_10K(10),
      I5 => counter_10K(2),
      O => \counter_10K[12]_i_2_n_0\
    );
\counter_10K[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => counter_10K(12),
      I1 => counter_10K(1),
      I2 => counter_10K(8),
      I3 => counter_10K(11),
      O => \counter_10K[12]_i_3_n_0\
    );
\counter_10K_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCLK_IBUF_BUFG,
      CE => '1',
      D => counter_10K_0(0),
      Q => counter_10K(0),
      R => '0'
    );
\counter_10K_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCLK_IBUF_BUFG,
      CE => '1',
      D => \counter_10K0_carry__1_n_6\,
      Q => counter_10K(10),
      R => i_clk_10K
    );
\counter_10K_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCLK_IBUF_BUFG,
      CE => '1',
      D => \counter_10K0_carry__1_n_5\,
      Q => counter_10K(11),
      R => i_clk_10K
    );
\counter_10K_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCLK_IBUF_BUFG,
      CE => '1',
      D => \counter_10K0_carry__1_n_4\,
      Q => counter_10K(12),
      R => i_clk_10K
    );
\counter_10K_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCLK_IBUF_BUFG,
      CE => '1',
      D => counter_10K0_carry_n_7,
      Q => counter_10K(1),
      R => i_clk_10K
    );
\counter_10K_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCLK_IBUF_BUFG,
      CE => '1',
      D => counter_10K0_carry_n_6,
      Q => counter_10K(2),
      R => i_clk_10K
    );
\counter_10K_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCLK_IBUF_BUFG,
      CE => '1',
      D => counter_10K0_carry_n_5,
      Q => counter_10K(3),
      R => i_clk_10K
    );
\counter_10K_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCLK_IBUF_BUFG,
      CE => '1',
      D => counter_10K0_carry_n_4,
      Q => counter_10K(4),
      R => i_clk_10K
    );
\counter_10K_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCLK_IBUF_BUFG,
      CE => '1',
      D => \counter_10K0_carry__0_n_7\,
      Q => counter_10K(5),
      R => i_clk_10K
    );
\counter_10K_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCLK_IBUF_BUFG,
      CE => '1',
      D => \counter_10K0_carry__0_n_6\,
      Q => counter_10K(6),
      R => i_clk_10K
    );
\counter_10K_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCLK_IBUF_BUFG,
      CE => '1',
      D => \counter_10K0_carry__0_n_5\,
      Q => counter_10K(7),
      R => i_clk_10K
    );
\counter_10K_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCLK_IBUF_BUFG,
      CE => '1',
      D => \counter_10K0_carry__0_n_4\,
      Q => counter_10K(8),
      R => i_clk_10K
    );
\counter_10K_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCLK_IBUF_BUFG,
      CE => '1',
      D => \counter_10K0_carry__1_n_7\,
      Q => counter_10K(9),
      R => i_clk_10K
    );
\counter_10[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_10_reg_n_0_[0]\,
      O => \counter_10[0]_i_1_n_0\
    );
\counter_10[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A52"
    )
        port map (
      I0 => \counter_10_reg_n_0_[0]\,
      I1 => \counter_10_reg_n_0_[3]\,
      I2 => \counter_10_reg_n_0_[1]\,
      I3 => \counter_10_reg_n_0_[2]\,
      O => \counter_10[1]_i_1_n_0\
    );
\counter_10[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_10_reg_n_0_[0]\,
      I1 => \counter_10_reg_n_0_[1]\,
      I2 => \counter_10_reg_n_0_[2]\,
      O => \counter_10[2]_i_1_n_0\
    );
\counter_10[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => counter_100,
      I1 => \counter_100_reg_n_0_[0]\,
      I2 => \counter_100_reg_n_0_[3]\,
      I3 => \counter_100_reg_n_0_[1]\,
      I4 => \counter_100_reg_n_0_[2]\,
      O => \counter_10[3]_i_1_n_0\
    );
\counter_10[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC4"
    )
        port map (
      I0 => \counter_10_reg_n_0_[0]\,
      I1 => \counter_10_reg_n_0_[3]\,
      I2 => \counter_10_reg_n_0_[1]\,
      I3 => \counter_10_reg_n_0_[2]\,
      O => \counter_10[3]_i_2_n_0\
    );
\counter_10_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \counter_10[3]_i_1_n_0\,
      D => \counter_10[0]_i_1_n_0\,
      Q => \counter_10_reg_n_0_[0]\,
      R => '0'
    );
\counter_10_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \counter_10[3]_i_1_n_0\,
      D => \counter_10[1]_i_1_n_0\,
      Q => \counter_10_reg_n_0_[1]\,
      R => '0'
    );
\counter_10_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \counter_10[3]_i_1_n_0\,
      D => \counter_10[2]_i_1_n_0\,
      Q => \counter_10_reg_n_0_[2]\,
      R => '0'
    );
\counter_10_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \counter_10[3]_i_1_n_0\,
      D => \counter_10[3]_i_2_n_0\,
      Q => \counter_10_reg_n_0_[3]\,
      R => '0'
    );
\counter_1K[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_1K_reg_n_0_[0]\,
      O => \counter_1K[0]_i_1_n_0\
    );
\counter_1K[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_1K_reg_n_0_[0]\,
      I1 => \counter_1K_reg_n_0_[1]\,
      O => \counter_1K[1]_i_1_n_0\
    );
\counter_1K[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_1K_reg_n_0_[0]\,
      I1 => \counter_1K_reg_n_0_[1]\,
      I2 => \counter_1K_reg_n_0_[2]\,
      O => \counter_1K[2]_i_1_n_0\
    );
\counter_1K[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \counter_1K_reg_n_0_[2]\,
      I1 => \counter_1K_reg_n_0_[1]\,
      I2 => \counter_1K_reg_n_0_[3]\,
      I3 => \counter_1K_reg_n_0_[0]\,
      O => counter_100
    );
\counter_1K[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_1K_reg_n_0_[1]\,
      I1 => \counter_1K_reg_n_0_[0]\,
      I2 => \counter_1K_reg_n_0_[2]\,
      I3 => \counter_1K_reg_n_0_[3]\,
      O => \counter_1K[3]_i_2_n_0\
    );
\counter_1K_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \counter_1K[0]_i_1_n_0\,
      Q => \counter_1K_reg_n_0_[0]\,
      R => counter_100
    );
\counter_1K_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \counter_1K[1]_i_1_n_0\,
      Q => \counter_1K_reg_n_0_[1]\,
      R => counter_100
    );
\counter_1K_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \counter_1K[2]_i_1_n_0\,
      Q => \counter_1K_reg_n_0_[2]\,
      R => counter_100
    );
\counter_1K_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \counter_1K[3]_i_2_n_0\,
      Q => \counter_1K_reg_n_0_[3]\,
      R => counter_100
    );
\counter_1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_1_reg_n_0_[0]\,
      O => \counter_1[0]_i_1_n_0\
    );
\counter_1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A52"
    )
        port map (
      I0 => \counter_1_reg_n_0_[0]\,
      I1 => \counter_1_reg_n_0_[3]\,
      I2 => \counter_1_reg_n_0_[1]\,
      I3 => \counter_1_reg_n_0_[2]\,
      O => \counter_1[1]_i_1_n_0\
    );
\counter_1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_1_reg_n_0_[0]\,
      I1 => \counter_1_reg_n_0_[1]\,
      I2 => \counter_1_reg_n_0_[2]\,
      O => \counter_1[2]_i_1_n_0\
    );
\counter_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => counter_100,
      I1 => \counter_10_reg_n_0_[2]\,
      I2 => \counter_10_reg_n_0_[1]\,
      I3 => \counter_10_reg_n_0_[3]\,
      I4 => \counter_10_reg_n_0_[0]\,
      I5 => \counter_10__0\,
      O => \counter_1[3]_i_1_n_0\
    );
\counter_1[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC4"
    )
        port map (
      I0 => \counter_1_reg_n_0_[0]\,
      I1 => \counter_1_reg_n_0_[3]\,
      I2 => \counter_1_reg_n_0_[1]\,
      I3 => \counter_1_reg_n_0_[2]\,
      O => \counter_1[3]_i_2_n_0\
    );
\counter_1[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \counter_100_reg_n_0_[2]\,
      I1 => \counter_100_reg_n_0_[1]\,
      I2 => \counter_100_reg_n_0_[3]\,
      I3 => \counter_100_reg_n_0_[0]\,
      O => \counter_10__0\
    );
\counter_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \counter_1[3]_i_1_n_0\,
      D => \counter_1[0]_i_1_n_0\,
      Q => \counter_1_reg_n_0_[0]\,
      R => '0'
    );
\counter_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \counter_1[3]_i_1_n_0\,
      D => \counter_1[1]_i_1_n_0\,
      Q => \counter_1_reg_n_0_[1]\,
      R => '0'
    );
\counter_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \counter_1[3]_i_1_n_0\,
      D => \counter_1[2]_i_1_n_0\,
      Q => \counter_1_reg_n_0_[2]\,
      R => '0'
    );
\counter_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \counter_1[3]_i_1_n_0\,
      D => \counter_1[3]_i_2_n_0\,
      Q => \counter_1_reg_n_0_[3]\,
      R => '0'
    );
\current_sample[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^sr\(0),
      I1 => \current_sample_reg[3]\,
      O => en_1_reg_0(0)
    );
en_10_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \counter_1[3]_i_1_n_0\,
      Q => E(0),
      R => '0'
    );
en_1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => counter_100,
      I1 => counter_1,
      I2 => en_1_i_3_n_0,
      I3 => \counter_10__0\,
      O => en_1_i_1_n_0
    );
en_1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \counter_10_reg_n_0_[2]\,
      I1 => \counter_10_reg_n_0_[1]\,
      I2 => \counter_10_reg_n_0_[3]\,
      I3 => \counter_10_reg_n_0_[0]\,
      O => counter_1
    );
en_1_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \counter_1_reg_n_0_[2]\,
      I1 => \counter_1_reg_n_0_[1]\,
      I2 => \counter_1_reg_n_0_[3]\,
      I3 => \counter_1_reg_n_0_[0]\,
      O => en_1_i_3_n_0
    );
en_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => en_1_i_1_n_0,
      Q => \^sr\(0),
      R => '0'
    );
heartbeat_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sr\(0),
      I1 => heartbeat,
      O => en_1_reg_1
    );
i_clk_10K_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFF02000000"
    )
        port map (
      I0 => \counter_10K[12]_i_2_n_0\,
      I1 => \counter_10K[12]_i_3_n_0\,
      I2 => counter_10K(4),
      I3 => counter_10K(9),
      I4 => counter_10K(0),
      I5 => \^clk\,
      O => i_clk_10K_i_1_n_0
    );
i_clk_10K_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCLK_IBUF_BUFG,
      CE => '1',
      D => i_clk_10K_i_1_n_0,
      Q => \^clk\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dcf_gen is
  port (
    \current_pos_reg[0]_0\ : out STD_LOGIC;
    LED_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    SW_IBUF : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \current_sample_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end dcf_gen;

architecture STRUCTURE of dcf_gen is
  signal current_pos : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \current_pos[0]_i_1_n_0\ : STD_LOGIC;
  signal current_pos_0 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \^current_pos_reg[0]_0\ : STD_LOGIC;
  signal \current_sample[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_sample[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_sample[2]_i_1_n_0\ : STD_LOGIC;
  signal \current_sample[3]_i_2_n_0\ : STD_LOGIC;
  signal \current_sample_reg_n_0_[0]\ : STD_LOGIC;
  signal \current_sample_reg_n_0_[1]\ : STD_LOGIC;
  signal \current_sample_reg_n_0_[2]\ : STD_LOGIC;
  signal \current_sample_reg_n_0_[3]\ : STD_LOGIC;
  signal current_time_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dcf_generated : STD_LOGIC;
  signal dcf_i_1_n_0 : STD_LOGIC;
  signal dcf_i_2_n_0 : STD_LOGIC;
  signal dcf_i_3_n_0 : STD_LOGIC;
  signal dcf_i_4_n_0 : STD_LOGIC;
  signal dcf_i_5_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal parity_i_10_n_0 : STD_LOGIC;
  signal parity_i_11_n_0 : STD_LOGIC;
  signal parity_i_12_n_0 : STD_LOGIC;
  signal parity_i_13_n_0 : STD_LOGIC;
  signal parity_i_14_n_0 : STD_LOGIC;
  signal parity_i_15_n_0 : STD_LOGIC;
  signal parity_i_16_n_0 : STD_LOGIC;
  signal parity_i_17_n_0 : STD_LOGIC;
  signal parity_i_18_n_0 : STD_LOGIC;
  signal parity_i_19_n_0 : STD_LOGIC;
  signal parity_i_1_n_0 : STD_LOGIC;
  signal parity_i_20_n_0 : STD_LOGIC;
  signal parity_i_21_n_0 : STD_LOGIC;
  signal parity_i_22_n_0 : STD_LOGIC;
  signal parity_i_23_n_0 : STD_LOGIC;
  signal parity_i_24_n_0 : STD_LOGIC;
  signal parity_i_25_n_0 : STD_LOGIC;
  signal parity_i_26_n_0 : STD_LOGIC;
  signal parity_i_27_n_0 : STD_LOGIC;
  signal parity_i_3_n_0 : STD_LOGIC;
  signal parity_i_4_n_0 : STD_LOGIC;
  signal parity_i_5_n_0 : STD_LOGIC;
  signal parity_i_6_n_0 : STD_LOGIC;
  signal parity_i_7_n_0 : STD_LOGIC;
  signal parity_i_8_n_0 : STD_LOGIC;
  signal parity_i_9_n_0 : STD_LOGIC;
  signal parity_reg_n_0 : STD_LOGIC;
  signal \reset_parity__10\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current_time[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \current_time[1]_i_1\ : label is "soft_lutpair20";
begin
  \current_pos_reg[0]_0\ <= \^current_pos_reg[0]_0\;
\LED_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => SW_IBUF(0),
      I1 => SW_IBUF(1),
      I2 => dcf_generated,
      O => LED_OBUF(0)
    );
\current_pos[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_pos(0),
      O => \current_pos[0]_i_1_n_0\
    );
\current_pos[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_pos(0),
      I1 => current_pos(1),
      O => current_pos_0(1)
    );
\current_pos[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7078787878787878"
    )
        port map (
      I0 => current_pos(0),
      I1 => current_pos(1),
      I2 => current_pos(2),
      I3 => current_pos(5),
      I4 => current_pos(4),
      I5 => current_pos(3),
      O => current_pos_0(2)
    );
\current_pos[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777F7F7F80808080"
    )
        port map (
      I0 => current_pos(0),
      I1 => current_pos(1),
      I2 => current_pos(2),
      I3 => current_pos(5),
      I4 => current_pos(4),
      I5 => current_pos(3),
      O => current_pos_0(3)
    );
\current_pos[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777F8080FFFF0000"
    )
        port map (
      I0 => current_pos(0),
      I1 => current_pos(1),
      I2 => current_pos(2),
      I3 => current_pos(5),
      I4 => current_pos(4),
      I5 => current_pos(3),
      O => current_pos_0(4)
    );
\current_pos[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7780FF00FF00FF00"
    )
        port map (
      I0 => current_pos(0),
      I1 => current_pos(1),
      I2 => current_pos(2),
      I3 => current_pos(5),
      I4 => current_pos(4),
      I5 => current_pos(3),
      O => current_pos_0(5)
    );
\current_pos_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => SR(0),
      D => \current_pos[0]_i_1_n_0\,
      Q => current_pos(0),
      S => reset
    );
\current_pos_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => SR(0),
      D => current_pos_0(1),
      Q => current_pos(1),
      S => reset
    );
\current_pos_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => SR(0),
      D => current_pos_0(2),
      Q => current_pos(2),
      R => reset
    );
\current_pos_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => SR(0),
      D => current_pos_0(3),
      Q => current_pos(3),
      S => reset
    );
\current_pos_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => SR(0),
      D => current_pos_0(4),
      Q => current_pos(4),
      S => reset
    );
\current_pos_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => SR(0),
      D => current_pos_0(5),
      Q => current_pos(5),
      S => reset
    );
\current_sample[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => \current_sample_reg_n_0_[1]\,
      I1 => \current_sample_reg_n_0_[2]\,
      I2 => \current_sample_reg_n_0_[3]\,
      I3 => \current_sample_reg_n_0_[0]\,
      O => \current_sample[0]_i_1_n_0\
    );
\current_sample[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F70"
    )
        port map (
      I0 => \current_sample_reg_n_0_[3]\,
      I1 => \current_sample_reg_n_0_[2]\,
      I2 => \current_sample_reg_n_0_[1]\,
      I3 => \current_sample_reg_n_0_[0]\,
      O => \current_sample[1]_i_1_n_0\
    );
\current_sample[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3C4C"
    )
        port map (
      I0 => \current_sample_reg_n_0_[3]\,
      I1 => \current_sample_reg_n_0_[2]\,
      I2 => \current_sample_reg_n_0_[1]\,
      I3 => \current_sample_reg_n_0_[0]\,
      O => \current_sample[2]_i_1_n_0\
    );
\current_sample[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A2A"
    )
        port map (
      I0 => \current_sample_reg_n_0_[3]\,
      I1 => \current_sample_reg_n_0_[2]\,
      I2 => \current_sample_reg_n_0_[1]\,
      I3 => \current_sample_reg_n_0_[0]\,
      O => \current_sample[3]_i_2_n_0\
    );
\current_sample[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => current_pos(0),
      I1 => current_pos(1),
      I2 => current_pos(2),
      I3 => current_pos(5),
      I4 => current_pos(4),
      I5 => current_pos(3),
      O => \^current_pos_reg[0]_0\
    );
\current_sample_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \current_sample_reg[3]_0\(0),
      D => \current_sample[0]_i_1_n_0\,
      Q => \current_sample_reg_n_0_[0]\,
      R => reset
    );
\current_sample_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \current_sample_reg[3]_0\(0),
      D => \current_sample[1]_i_1_n_0\,
      Q => \current_sample_reg_n_0_[1]\,
      S => reset
    );
\current_sample_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \current_sample_reg[3]_0\(0),
      D => \current_sample[2]_i_1_n_0\,
      Q => \current_sample_reg_n_0_[2]\,
      S => reset
    );
\current_sample_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \current_sample_reg[3]_0\(0),
      D => \current_sample[3]_i_2_n_0\,
      Q => \current_sample_reg_n_0_[3]\,
      S => reset
    );
\current_time[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_time_reg(0),
      O => p_0_in(0)
    );
\current_time[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_time_reg(0),
      I1 => current_time_reg(1),
      O => p_0_in(1)
    );
\current_time[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => current_time_reg(0),
      I1 => current_time_reg(1),
      I2 => current_time_reg(2),
      O => p_0_in(2)
    );
\current_time[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => current_time_reg(1),
      I1 => current_time_reg(0),
      I2 => current_time_reg(2),
      I3 => current_time_reg(3),
      O => p_0_in(3)
    );
\current_time_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_0_in(0),
      Q => current_time_reg(0),
      R => SR(0)
    );
\current_time_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_0_in(1),
      Q => current_time_reg(1),
      R => SR(0)
    );
\current_time_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_0_in(2),
      Q => current_time_reg(2),
      R => SR(0)
    );
\current_time_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_0_in(3),
      Q => current_time_reg(3),
      R => SR(0)
    );
dcf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABFAAAAAAAA"
    )
        port map (
      I0 => dcf_i_2_n_0,
      I1 => dcf_i_3_n_0,
      I2 => dcf_i_4_n_0,
      I3 => parity_i_4_n_0,
      I4 => parity_i_3_n_0,
      I5 => current_time_reg(0),
      O => dcf_i_1_n_0
    );
dcf_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => current_time_reg(3),
      I1 => current_time_reg(2),
      I2 => current_time_reg(1),
      I3 => \^current_pos_reg[0]_0\,
      O => dcf_i_2_n_0
    );
dcf_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_pos(4),
      I1 => current_pos(5),
      O => dcf_i_3_n_0
    );
dcf_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFC8C00800"
    )
        port map (
      I0 => current_pos(1),
      I1 => current_pos(2),
      I2 => current_pos(3),
      I3 => dcf_i_5_n_0,
      I4 => parity_i_14_n_0,
      I5 => parity_i_13_n_0,
      O => dcf_i_4_n_0
    );
dcf_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000AA01"
    )
        port map (
      I0 => \current_sample_reg_n_0_[1]\,
      I1 => \current_sample_reg_n_0_[0]\,
      I2 => \current_sample_reg_n_0_[2]\,
      I3 => \current_sample_reg_n_0_[3]\,
      I4 => current_pos(0),
      O => dcf_i_5_n_0
    );
dcf_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => dcf_i_1_n_0,
      Q => dcf_generated,
      R => '0'
    );
parity_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF55540000"
    )
        port map (
      I0 => \reset_parity__10\,
      I1 => parity_i_3_n_0,
      I2 => parity_i_4_n_0,
      I3 => parity_i_5_n_0,
      I4 => parity_i_6_n_0,
      I5 => parity_reg_n_0,
      O => parity_i_1_n_0
    );
parity_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAA0000FCCC"
    )
        port map (
      I0 => parity_i_21_n_0,
      I1 => parity_i_22_n_0,
      I2 => current_pos(1),
      I3 => parity_i_23_n_0,
      I4 => current_pos(3),
      I5 => current_pos(2),
      O => parity_i_10_n_0
    );
parity_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => current_pos(3),
      I1 => current_pos(2),
      I2 => current_pos(4),
      O => parity_i_11_n_0
    );
parity_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF0000FFFC0100"
    )
        port map (
      I0 => \current_sample_reg_n_0_[2]\,
      I1 => parity_i_24_n_0,
      I2 => \current_sample_reg_n_0_[3]\,
      I3 => current_pos(0),
      I4 => current_pos(1),
      I5 => parity_i_11_n_0,
      O => parity_i_12_n_0
    );
parity_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A00CA0"
    )
        port map (
      I0 => parity_i_25_n_0,
      I1 => parity_i_26_n_0,
      I2 => current_pos(3),
      I3 => current_pos(2),
      I4 => current_pos(1),
      O => parity_i_13_n_0
    );
parity_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0FFAA000FCCCC"
    )
        port map (
      I0 => parity_i_27_n_0,
      I1 => parity_reg_n_0,
      I2 => \current_sample_reg_n_0_[0]\,
      I3 => \current_sample_reg_n_0_[3]\,
      I4 => current_pos(1),
      I5 => current_pos(0),
      O => parity_i_14_n_0
    );
parity_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_pos(2),
      I1 => current_pos(3),
      O => parity_i_15_n_0
    );
parity_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => current_pos(1),
      I1 => current_pos(2),
      I2 => current_pos(3),
      I3 => dcf_i_5_n_0,
      O => parity_i_16_n_0
    );
parity_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF1000"
    )
        port map (
      I0 => \current_sample_reg_n_0_[1]\,
      I1 => \current_sample_reg_n_0_[0]\,
      I2 => \current_sample_reg_n_0_[2]\,
      I3 => \current_sample_reg_n_0_[3]\,
      I4 => parity_reg_n_0,
      O => parity_i_17_n_0
    );
parity_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD8283DDDD8288"
    )
        port map (
      I0 => current_pos(1),
      I1 => current_pos(0),
      I2 => \current_sample_reg_n_0_[0]\,
      I3 => \current_sample_reg_n_0_[1]\,
      I4 => \current_sample_reg_n_0_[3]\,
      I5 => \current_sample_reg_n_0_[2]\,
      O => parity_i_18_n_0
    );
parity_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22202122"
    )
        port map (
      I0 => current_pos(0),
      I1 => \current_sample_reg_n_0_[3]\,
      I2 => \current_sample_reg_n_0_[0]\,
      I3 => \current_sample_reg_n_0_[1]\,
      I4 => \current_sample_reg_n_0_[2]\,
      O => parity_i_19_n_0
    );
parity_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003200000004000"
    )
        port map (
      I0 => current_pos(3),
      I1 => current_pos(0),
      I2 => current_pos(1),
      I3 => current_pos(5),
      I4 => current_pos(2),
      I5 => current_pos(4),
      O => \reset_parity__10\
    );
parity_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011001100100011"
    )
        port map (
      I0 => current_pos(1),
      I1 => current_pos(2),
      I2 => current_pos(0),
      I3 => \current_sample_reg_n_0_[3]\,
      I4 => \current_sample_reg_n_0_[2]\,
      I5 => \current_sample_reg_n_0_[0]\,
      O => parity_i_20_n_0
    );
parity_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF500000000004"
    )
        port map (
      I0 => \current_sample_reg_n_0_[0]\,
      I1 => \current_sample_reg_n_0_[1]\,
      I2 => \current_sample_reg_n_0_[2]\,
      I3 => current_pos(1),
      I4 => \current_sample_reg_n_0_[3]\,
      I5 => current_pos(0),
      O => parity_i_21_n_0
    );
parity_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000CDFF00"
    )
        port map (
      I0 => \current_sample_reg_n_0_[2]\,
      I1 => \current_sample_reg_n_0_[0]\,
      I2 => \current_sample_reg_n_0_[1]\,
      I3 => \current_sample_reg_n_0_[3]\,
      I4 => current_pos(0),
      I5 => current_pos(1),
      O => parity_i_22_n_0
    );
parity_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0F000E00F0000E"
    )
        port map (
      I0 => \current_sample_reg_n_0_[2]\,
      I1 => \current_sample_reg_n_0_[1]\,
      I2 => \current_sample_reg_n_0_[0]\,
      I3 => \current_sample_reg_n_0_[3]\,
      I4 => current_pos(0),
      I5 => parity_reg_n_0,
      O => parity_i_23_n_0
    );
parity_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \current_sample_reg_n_0_[0]\,
      I1 => \current_sample_reg_n_0_[1]\,
      O => parity_i_24_n_0
    );
parity_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F000005040F0E"
    )
        port map (
      I0 => \current_sample_reg_n_0_[0]\,
      I1 => \current_sample_reg_n_0_[1]\,
      I2 => \current_sample_reg_n_0_[3]\,
      I3 => \current_sample_reg_n_0_[2]\,
      I4 => current_pos(0),
      I5 => current_pos(1),
      O => parity_i_25_n_0
    );
parity_i_26: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5DDD7777"
    )
        port map (
      I0 => current_pos(0),
      I1 => \current_sample_reg_n_0_[0]\,
      I2 => \current_sample_reg_n_0_[2]\,
      I3 => \current_sample_reg_n_0_[1]\,
      I4 => \current_sample_reg_n_0_[3]\,
      O => parity_i_26_n_0
    );
parity_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \current_sample_reg_n_0_[2]\,
      I1 => \current_sample_reg_n_0_[0]\,
      I2 => \current_sample_reg_n_0_[1]\,
      O => parity_i_27_n_0
    );
parity_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888080808080"
    )
        port map (
      I0 => current_pos(5),
      I1 => parity_i_7_n_0,
      I2 => parity_i_8_n_0,
      I3 => parity_i_9_n_0,
      I4 => parity_i_10_n_0,
      I5 => parity_i_11_n_0,
      O => parity_i_3_n_0
    );
parity_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => current_pos(3),
      I1 => current_pos(4),
      I2 => current_pos(5),
      I3 => parity_i_12_n_0,
      O => parity_i_4_n_0
    );
parity_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444404040"
    )
        port map (
      I0 => current_pos(5),
      I1 => current_pos(4),
      I2 => parity_i_13_n_0,
      I3 => parity_i_14_n_0,
      I4 => parity_i_15_n_0,
      I5 => parity_i_16_n_0,
      O => parity_i_5_n_0
    );
parity_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => E(0),
      I1 => current_time_reg(0),
      I2 => current_time_reg(1),
      I3 => current_time_reg(3),
      I4 => current_time_reg(2),
      O => parity_i_6_n_0
    );
parity_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => current_pos(3),
      I1 => current_pos(4),
      O => parity_i_7_n_0
    );
parity_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => current_pos(2),
      I1 => current_pos(4),
      I2 => current_pos(0),
      I3 => current_pos(1),
      I4 => parity_i_17_n_0,
      O => parity_i_8_n_0
    );
parity_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB88800000000"
    )
        port map (
      I0 => parity_i_18_n_0,
      I1 => current_pos(2),
      I2 => current_pos(1),
      I3 => parity_i_19_n_0,
      I4 => parity_i_20_n_0,
      I5 => current_pos(3),
      O => parity_i_9_n_0
    );
parity_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => parity_i_1_n_0,
      Q => parity_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ram is
  port (
    LCD_DATA_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \LCD_DATA_OBUF[0]_inst_i_3_0\ : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end ram;

architecture STRUCTURE of ram is
  signal \LCD_DATA_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \LCD_DATA_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \LCD_DATA_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ram[45][0]_i_1_n_0\ : STD_LOGIC;
  signal \ram[46][0]_i_1_n_0\ : STD_LOGIC;
  signal \ram_reg[45]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ram_reg[46]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ram[45][0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ram[46][0]_i_1\ : label is "soft_lutpair21";
begin
\LCD_DATA_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40200000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(5),
      I3 => Q(2),
      I4 => \LCD_DATA_OBUF[0]_inst_i_2_n_0\,
      I5 => \LCD_DATA_OBUF[0]_inst_i_3_n_0\,
      O => LCD_DATA_OBUF(0)
    );
\LCD_DATA_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202000000030000"
    )
        port map (
      I0 => \ram_reg[45]\(0),
      I1 => Q(7),
      I2 => Q(6),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \LCD_DATA_OBUF[0]_inst_i_2_n_0\
    );
\LCD_DATA_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0082002080000002"
    )
        port map (
      I0 => \LCD_DATA_OBUF[0]_inst_i_4_n_0\,
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(5),
      I4 => Q(2),
      I5 => Q(4),
      O => \LCD_DATA_OBUF[0]_inst_i_3_n_0\
    );
\LCD_DATA_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A2A2A200A2A2"
    )
        port map (
      I0 => \LCD_DATA_OBUF[0]_inst_i_3_0\,
      I1 => Q(5),
      I2 => \ram_reg[46]\(0),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \LCD_DATA_OBUF[0]_inst_i_4_n_0\
    );
\ram[45][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => reset,
      I1 => \ram_reg[45]\(0),
      O => \ram[45][0]_i_1_n_0\
    );
\ram[46][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \ram_reg[46]\(0),
      I1 => reset,
      O => \ram[46][0]_i_1_n_0\
    );
\ram_reg[45][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \ram[45][0]_i_1_n_0\,
      Q => \ram_reg[45]\(0),
      R => '0'
    );
\ram_reg[46][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \ram[46][0]_i_1_n_0\,
      Q => \ram_reg[46]\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lcd_controller is
  port (
    LCD_RS_OBUF : out STD_LOGIC;
    enable_enable_reg_0 : out STD_LOGIC;
    LCD_DATA_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    CLK : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end lcd_controller;

architecture STRUCTURE of lcd_controller is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \LCD_DATA_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \LCD_DATA_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \LCD_DATA_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \LCD_DATA_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \LCD_DATA_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \LCD_DATA_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \LCD_DATA_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal enable_enable_i_1_n_0 : STD_LOGIC;
  signal enable_enable_i_2_n_0 : STD_LOGIC;
  signal enable_enable_i_3_n_0 : STD_LOGIC;
  signal enable_enable_i_4_n_0 : STD_LOGIC;
  signal enable_enable_i_5_n_0 : STD_LOGIC;
  signal enable_enable_i_6_n_0 : STD_LOGIC;
  signal \^enable_enable_reg_0\ : STD_LOGIC;
  signal in8 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal lcd_rs_reg_i_1_n_0 : STD_LOGIC;
  signal \read_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal \read_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \read_addr[7]_i_3_n_0\ : STD_LOGIC;
  signal \read_addr[7]_i_4_n_0\ : STD_LOGIC;
  signal \read_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \read_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \read_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \read_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \read_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \read_addr_reg_n_0_[5]\ : STD_LOGIC;
  signal \read_addr_reg_n_0_[6]\ : STD_LOGIC;
  signal \read_addr_reg_n_0_[7]\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair23";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "idle:000,set_init:001,init:010,set_mode:011,display_time:101,display_date:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "idle:000,set_init:001,init:010,set_mode:011,display_time:101,display_date:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "idle:000,set_init:001,init:010,set_mode:011,display_time:101,display_date:100";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of lcd_rs_reg : label is "LD";
  attribute SOFT_HLUTNM of \read_addr[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \read_addr[1]_i_1\ : label is "soft_lutpair22";
begin
  enable_enable_reg_0 <= \^enable_enable_reg_0\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE2E2EEE2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \state__0\(1),
      I5 => reset,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_3_n_0\,
      I1 => \LCD_DATA_OBUF[1]_inst_i_2_n_0\,
      I2 => \FSM_sequential_state[0]_i_4_n_0\,
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \state__0\(0),
      I5 => \read_addr_reg_n_0_[5]\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \read_addr_reg_n_0_[3]\,
      I1 => \read_addr_reg_n_0_[2]\,
      I2 => \read_addr_reg_n_0_[1]\,
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \read_addr_reg_n_0_[0]\,
      I1 => \read_addr_reg_n_0_[4]\,
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000666E"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => reset,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006222"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[2]\,
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => reset,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FF02FF02FF0200"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_5_n_0\,
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \state__0\(0),
      I5 => \state__0\(1),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \read_addr_reg_n_0_[6]\,
      I1 => \read_addr_reg_n_0_[7]\,
      I2 => \state__0\(1),
      I3 => \read_addr_reg_n_0_[4]\,
      I4 => \read_addr_reg_n_0_[5]\,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \read_addr_reg_n_0_[2]\,
      I1 => \read_addr_reg_n_0_[3]\,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \read_addr_reg_n_0_[1]\,
      I1 => \read_addr_reg_n_0_[0]\,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \FSM_sequential_state_reg_n_0_[2]\,
      R => '0'
    );
\LCD_DATA_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011009700"
    )
        port map (
      I0 => \read_addr_reg_n_0_[1]\,
      I1 => \read_addr_reg_n_0_[3]\,
      I2 => \read_addr_reg_n_0_[2]\,
      I3 => \LCD_DATA_OBUF[1]_inst_i_2_n_0\,
      I4 => \read_addr_reg_n_0_[4]\,
      I5 => \LCD_DATA_OBUF[1]_inst_i_3_n_0\,
      O => LCD_DATA_OBUF(1)
    );
\LCD_DATA_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_addr_reg_n_0_[7]\,
      I1 => \read_addr_reg_n_0_[6]\,
      O => \LCD_DATA_OBUF[1]_inst_i_2_n_0\
    );
\LCD_DATA_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFDCF67FFF7FCFD"
    )
        port map (
      I0 => \read_addr_reg_n_0_[0]\,
      I1 => \read_addr_reg_n_0_[2]\,
      I2 => \read_addr_reg_n_0_[3]\,
      I3 => \read_addr_reg_n_0_[1]\,
      I4 => \read_addr_reg_n_0_[4]\,
      I5 => \read_addr_reg_n_0_[5]\,
      O => \LCD_DATA_OBUF[1]_inst_i_3_n_0\
    );
\LCD_DATA_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080A888A282A282A"
    )
        port map (
      I0 => \LCD_DATA_OBUF[2]_inst_i_2_n_0\,
      I1 => \read_addr_reg_n_0_[0]\,
      I2 => \read_addr_reg_n_0_[2]\,
      I3 => \read_addr_reg_n_0_[4]\,
      I4 => \read_addr_reg_n_0_[1]\,
      I5 => \read_addr_reg_n_0_[3]\,
      O => LCD_DATA_OBUF(2)
    );
\LCD_DATA_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00028000000A0008"
    )
        port map (
      I0 => \LCD_DATA_OBUF[1]_inst_i_2_n_0\,
      I1 => \read_addr_reg_n_0_[1]\,
      I2 => \read_addr_reg_n_0_[5]\,
      I3 => \read_addr_reg_n_0_[3]\,
      I4 => \read_addr_reg_n_0_[4]\,
      I5 => \read_addr_reg_n_0_[2]\,
      O => \LCD_DATA_OBUF[2]_inst_i_2_n_0\
    );
\LCD_DATA_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \read_addr_reg_n_0_[6]\,
      I1 => \read_addr_reg_n_0_[7]\,
      I2 => \LCD_DATA_OBUF[3]_inst_i_2_n_0\,
      O => LCD_DATA_OBUF(3)
    );
\LCD_DATA_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110014001000018"
    )
        port map (
      I0 => \read_addr_reg_n_0_[3]\,
      I1 => \read_addr_reg_n_0_[5]\,
      I2 => \read_addr_reg_n_0_[2]\,
      I3 => \read_addr_reg_n_0_[1]\,
      I4 => \read_addr_reg_n_0_[4]\,
      I5 => \read_addr_reg_n_0_[0]\,
      O => \LCD_DATA_OBUF[3]_inst_i_2_n_0\
    );
\LCD_DATA_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \read_addr_reg_n_0_[6]\,
      I1 => \read_addr_reg_n_0_[7]\,
      I2 => \LCD_DATA_OBUF[4]_inst_i_2_n_0\,
      O => LCD_DATA_OBUF(4)
    );
\LCD_DATA_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"23373C0C333C2DBC"
    )
        port map (
      I0 => \read_addr_reg_n_0_[0]\,
      I1 => \read_addr_reg_n_0_[5]\,
      I2 => \read_addr_reg_n_0_[4]\,
      I3 => \read_addr_reg_n_0_[2]\,
      I4 => \read_addr_reg_n_0_[3]\,
      I5 => \read_addr_reg_n_0_[1]\,
      O => \LCD_DATA_OBUF[4]_inst_i_2_n_0\
    );
\LCD_DATA_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222822280A282828"
    )
        port map (
      I0 => \LCD_DATA_OBUF[5]_inst_i_2_n_0\,
      I1 => \read_addr_reg_n_0_[2]\,
      I2 => \read_addr_reg_n_0_[3]\,
      I3 => \read_addr_reg_n_0_[1]\,
      I4 => \read_addr_reg_n_0_[0]\,
      I5 => \read_addr_reg_n_0_[4]\,
      O => LCD_DATA_OBUF(5)
    );
\LCD_DATA_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000046"
    )
        port map (
      I0 => \read_addr_reg_n_0_[4]\,
      I1 => \read_addr_reg_n_0_[5]\,
      I2 => \read_addr_reg_n_0_[3]\,
      I3 => \read_addr_reg_n_0_[6]\,
      I4 => \read_addr_reg_n_0_[7]\,
      O => \LCD_DATA_OBUF[5]_inst_i_2_n_0\
    );
\LCD_DATA_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \read_addr_reg_n_0_[6]\,
      I1 => \read_addr_reg_n_0_[7]\,
      I2 => \LCD_DATA_OBUF[6]_inst_i_2_n_0\,
      O => LCD_DATA_OBUF(6)
    );
\LCD_DATA_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000308060"
    )
        port map (
      I0 => \read_addr_reg_n_0_[1]\,
      I1 => \read_addr_reg_n_0_[2]\,
      I2 => \read_addr_reg_n_0_[4]\,
      I3 => \read_addr_reg_n_0_[3]\,
      I4 => \read_addr_reg_n_0_[0]\,
      I5 => \read_addr_reg_n_0_[5]\,
      O => \LCD_DATA_OBUF[6]_inst_i_2_n_0\
    );
enable_enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFAAEAF0E0AAEA0"
    )
        port map (
      I0 => enable_enable_i_2_n_0,
      I1 => enable_enable_i_3_n_0,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \FSM_sequential_state_reg_n_0_[2]\,
      I5 => \^enable_enable_reg_0\,
      O => enable_enable_i_1_n_0
    );
enable_enable_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000000FB"
    )
        port map (
      I0 => enable_enable_i_4_n_0,
      I1 => \read_addr_reg_n_0_[6]\,
      I2 => \read_addr_reg_n_0_[7]\,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => enable_enable_i_5_n_0,
      O => enable_enable_i_2_n_0
    );
enable_enable_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => \read_addr_reg_n_0_[0]\,
      I1 => \read_addr_reg_n_0_[1]\,
      I2 => \FSM_sequential_state[2]_i_4_n_0\,
      I3 => enable_enable_i_6_n_0,
      I4 => \read_addr_reg_n_0_[7]\,
      I5 => \read_addr_reg_n_0_[6]\,
      O => enable_enable_i_3_n_0
    );
enable_enable_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \read_addr_reg_n_0_[4]\,
      I1 => \read_addr_reg_n_0_[5]\,
      I2 => \read_addr_reg_n_0_[2]\,
      I3 => \read_addr_reg_n_0_[3]\,
      I4 => \read_addr_reg_n_0_[1]\,
      I5 => \read_addr_reg_n_0_[0]\,
      O => enable_enable_i_4_n_0
    );
enable_enable_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555155555555"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[2]\,
      I1 => \FSM_sequential_state[0]_i_3_n_0\,
      I2 => \FSM_sequential_state[0]_i_4_n_0\,
      I3 => \read_addr_reg_n_0_[5]\,
      I4 => \state__0\(0),
      I5 => \LCD_DATA_OBUF[1]_inst_i_2_n_0\,
      O => enable_enable_i_5_n_0
    );
enable_enable_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \read_addr_reg_n_0_[4]\,
      I1 => \read_addr_reg_n_0_[5]\,
      O => enable_enable_i_6_n_0
    );
enable_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => enable_enable_i_1_n_0,
      Q => \^enable_enable_reg_0\,
      R => '0'
    );
lcd_rs_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_state_reg_n_0_[2]\,
      G => lcd_rs_reg_i_1_n_0,
      GE => '1',
      Q => LCD_RS_OBUF
    );
lcd_rs_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[2]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => lcd_rs_reg_i_1_n_0
    );
ram_inst: entity work.ram
     port map (
      CLK => CLK,
      LCD_DATA_OBUF(0) => LCD_DATA_OBUF(0),
      \LCD_DATA_OBUF[0]_inst_i_3_0\ => \LCD_DATA_OBUF[1]_inst_i_2_n_0\,
      Q(7) => \read_addr_reg_n_0_[7]\,
      Q(6) => \read_addr_reg_n_0_[6]\,
      Q(5) => \read_addr_reg_n_0_[5]\,
      Q(4) => \read_addr_reg_n_0_[4]\,
      Q(3) => \read_addr_reg_n_0_[3]\,
      Q(2) => \read_addr_reg_n_0_[2]\,
      Q(1) => \read_addr_reg_n_0_[1]\,
      Q(0) => \read_addr_reg_n_0_[0]\,
      reset => reset
    );
\read_addr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0057"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \state__0\(0),
      I3 => \read_addr_reg_n_0_[0]\,
      O => \read_addr[0]_i_1_n_0\
    );
\read_addr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30777730"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \state__0\(0),
      I3 => \read_addr_reg_n_0_[1]\,
      I4 => \read_addr_reg_n_0_[0]\,
      O => \read_addr[1]_i_1_n_0\
    );
\read_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001F1F1F1F000000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \state__0\(1),
      I3 => \read_addr_reg_n_0_[0]\,
      I4 => \read_addr_reg_n_0_[1]\,
      I5 => \read_addr_reg_n_0_[2]\,
      O => \read_addr[2]_i_1_n_0\
    );
\read_addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3077773077307730"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \state__0\(0),
      I3 => \read_addr_reg_n_0_[3]\,
      I4 => \read_addr_reg_n_0_[2]\,
      I5 => \read_addr[3]_i_2_n_0\,
      O => \read_addr[3]_i_1_n_0\
    );
\read_addr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \read_addr_reg_n_0_[1]\,
      I1 => \read_addr_reg_n_0_[0]\,
      O => \read_addr[3]_i_2_n_0\
    );
\read_addr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3073"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => in8(4),
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      O => \read_addr[4]_i_1_n_0\
    );
\read_addr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \read_addr_reg_n_0_[2]\,
      I1 => \read_addr_reg_n_0_[0]\,
      I2 => \read_addr_reg_n_0_[1]\,
      I3 => \read_addr_reg_n_0_[3]\,
      I4 => \read_addr_reg_n_0_[4]\,
      O => in8(4)
    );
\read_addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1115222A"
    )
        port map (
      I0 => \read_addr[7]_i_3_n_0\,
      I1 => \state__0\(1),
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => \state__0\(0),
      I4 => \read_addr_reg_n_0_[5]\,
      O => \read_addr[5]_i_1_n_0\
    );
\read_addr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0333300037777333"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \read_addr[7]_i_3_n_0\,
      I3 => \read_addr_reg_n_0_[5]\,
      I4 => \read_addr_reg_n_0_[6]\,
      I5 => \FSM_sequential_state_reg_n_0_[2]\,
      O => \read_addr[6]_i_1_n_0\
    );
\read_addr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => reset,
      I1 => \state__0\(1),
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      O => \read_addr[7]_i_1_n_0\
    );
\read_addr[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \read_addr_reg_n_0_[6]\,
      I1 => \read_addr[7]_i_3_n_0\,
      I2 => \read_addr_reg_n_0_[5]\,
      I3 => \read_addr[7]_i_4_n_0\,
      I4 => \read_addr_reg_n_0_[7]\,
      O => \read_addr[7]_i_2_n_0\
    );
\read_addr[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \read_addr_reg_n_0_[4]\,
      I1 => \read_addr_reg_n_0_[2]\,
      I2 => \read_addr_reg_n_0_[0]\,
      I3 => \read_addr_reg_n_0_[1]\,
      I4 => \read_addr_reg_n_0_[3]\,
      O => \read_addr[7]_i_3_n_0\
    );
\read_addr[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \state__0\(1),
      O => \read_addr[7]_i_4_n_0\
    );
\read_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \read_addr[7]_i_1_n_0\,
      D => \read_addr[0]_i_1_n_0\,
      Q => \read_addr_reg_n_0_[0]\,
      R => '0'
    );
\read_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \read_addr[7]_i_1_n_0\,
      D => \read_addr[1]_i_1_n_0\,
      Q => \read_addr_reg_n_0_[1]\,
      R => '0'
    );
\read_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \read_addr[7]_i_1_n_0\,
      D => \read_addr[2]_i_1_n_0\,
      Q => \read_addr_reg_n_0_[2]\,
      R => '0'
    );
\read_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \read_addr[7]_i_1_n_0\,
      D => \read_addr[3]_i_1_n_0\,
      Q => \read_addr_reg_n_0_[3]\,
      R => '0'
    );
\read_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \read_addr[7]_i_1_n_0\,
      D => \read_addr[4]_i_1_n_0\,
      Q => \read_addr_reg_n_0_[4]\,
      R => '0'
    );
\read_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \read_addr[7]_i_1_n_0\,
      D => \read_addr[5]_i_1_n_0\,
      Q => \read_addr_reg_n_0_[5]\,
      R => '0'
    );
\read_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \read_addr[7]_i_1_n_0\,
      D => \read_addr[6]_i_1_n_0\,
      Q => \read_addr_reg_n_0_[6]\,
      R => '0'
    );
\read_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \read_addr[7]_i_1_n_0\,
      D => \read_addr[7]_i_2_n_0\,
      Q => \read_addr_reg_n_0_[7]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_module is
  port (
    LCD_RS_OBUF : out STD_LOGIC;
    enable_enable_reg : out STD_LOGIC;
    LCD_DATA_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    CLK : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end clock_module;

architecture STRUCTURE of clock_module is
begin
lcd_contr_module: entity work.lcd_controller
     port map (
      CLK => CLK,
      LCD_DATA_OBUF(6 downto 0) => LCD_DATA_OBUF(6 downto 0),
      LCD_RS_OBUF => LCD_RS_OBUF,
      enable_enable_reg_0 => enable_enable_reg,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    LCD_RS_OBUF : out STD_LOGIC;
    enable_enable_reg : out STD_LOGIC;
    LCD_DATA_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    CLK : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end top;

architecture STRUCTURE of top is
begin
clock_module: entity work.clock_module
     port map (
      CLK => CLK,
      LCD_DATA_OBUF(6 downto 0) => LCD_DATA_OBUF(6 downto 0),
      LCD_RS_OBUF => LCD_RS_OBUF,
      enable_enable_reg => enable_enable_reg,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hardware is
  port (
    GCLK : in STD_LOGIC;
    BTNC : in STD_LOGIC;
    BTNU : in STD_LOGIC;
    BTND : in STD_LOGIC;
    BTNL : in STD_LOGIC;
    BTNR : in STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LCD_E : out STD_LOGIC;
    LCD_RW : out STD_LOGIC;
    LCD_RS : out STD_LOGIC;
    LCD_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hardware : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of hardware : entity is "2c78530a";
end hardware;

architecture STRUCTURE of hardware is
  signal BTND_IBUF : STD_LOGIC;
  signal GCLK_IBUF : STD_LOGIC;
  signal GCLK_IBUF_BUFG : STD_LOGIC;
  signal LCD_DATA_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal LCD_E_OBUF : STD_LOGIC;
  signal LCD_RS_OBUF : STD_LOGIC;
  signal LED_OBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SW_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal clk : STD_LOGIC;
  signal clk_BUFG : STD_LOGIC;
  signal clock_gen_n_5 : STD_LOGIC;
  signal current_sample : STD_LOGIC;
  signal dcf_gen_n_0 : STD_LOGIC;
  signal en_1 : STD_LOGIC;
  signal en_10 : STD_LOGIC;
  signal heartbeat : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reset : STD_LOGIC;
  signal \reset_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal reset_counter_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reset_i_1_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal top_n_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reset_counter[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \reset_counter[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \reset_counter[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \reset_counter[3]_i_2\ : label is "soft_lutpair32";
begin
BTND_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => BTND,
      O => BTND_IBUF
    );
GCLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => GCLK_IBUF,
      O => GCLK_IBUF_BUFG
    );
GCLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => GCLK,
      O => GCLK_IBUF
    );
\LCD_DATA_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LCD_DATA_OBUF(0),
      O => LCD_DATA(0)
    );
\LCD_DATA_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LCD_DATA_OBUF(1),
      O => LCD_DATA(1)
    );
\LCD_DATA_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LCD_DATA_OBUF(2),
      O => LCD_DATA(2)
    );
\LCD_DATA_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LCD_DATA_OBUF(3),
      O => LCD_DATA(3)
    );
\LCD_DATA_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LCD_DATA_OBUF(4),
      O => LCD_DATA(4)
    );
\LCD_DATA_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LCD_DATA_OBUF(5),
      O => LCD_DATA(5)
    );
\LCD_DATA_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LCD_DATA_OBUF(6),
      O => LCD_DATA(6)
    );
\LCD_DATA_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => LCD_DATA(7)
    );
LCD_E_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LCD_E_OBUF,
      O => LCD_E
    );
LCD_RS_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LCD_RS_OBUF,
      O => LCD_RS
    );
LCD_RW_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => LCD_RW
    );
\LED_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(0),
      O => LED(0)
    );
\LED_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SW_IBUF(0),
      I1 => heartbeat,
      O => LED_OBUF(0)
    );
\LED_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(1),
      O => LED(1)
    );
\LED_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => LED(2)
    );
\LED_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => LED(3)
    );
\LED_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => LED(4)
    );
\LED_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => LED(5)
    );
\LED_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => LED(6)
    );
\LED_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => LED(7)
    );
\SW_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(0),
      O => SW_IBUF(0)
    );
\SW_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(1),
      O => SW_IBUF(1)
    );
clk_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk,
      O => clk_BUFG
    );
clock_gen: entity work.clock_gen
     port map (
      E(0) => en_10,
      GCLK_IBUF_BUFG => GCLK_IBUF_BUFG,
      LCD_E => top_n_1,
      LCD_E_OBUF => LCD_E_OBUF,
      SR(0) => en_1,
      clk => clk,
      clk_BUFG => clk_BUFG,
      \current_sample_reg[3]\ => dcf_gen_n_0,
      en_1_reg_0(0) => current_sample,
      en_1_reg_1 => clock_gen_n_5,
      heartbeat => heartbeat,
      reset => reset
    );
dcf_gen: entity work.dcf_gen
     port map (
      CLK => clk_BUFG,
      E(0) => en_10,
      LED_OBUF(0) => LED_OBUF(1),
      SR(0) => en_1,
      SW_IBUF(1 downto 0) => SW_IBUF(1 downto 0),
      \current_pos_reg[0]_0\ => dcf_gen_n_0,
      \current_sample_reg[3]_0\(0) => current_sample,
      reset => reset
    );
heartbeat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => clock_gen_n_5,
      Q => heartbeat,
      R => '0'
    );
\reset_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_counter_reg(0),
      O => plusOp(0)
    );
\reset_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reset_counter_reg(0),
      I1 => reset_counter_reg(1),
      O => plusOp(1)
    );
\reset_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => reset_counter_reg(0),
      I1 => reset_counter_reg(1),
      I2 => reset_counter_reg(2),
      O => \reset_counter[2]_i_1_n_0\
    );
\reset_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => reset_counter_reg(0),
      I1 => reset_counter_reg(1),
      I2 => reset_counter_reg(3),
      I3 => reset_counter_reg(2),
      O => sel
    );
\reset_counter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => reset_counter_reg(1),
      I1 => reset_counter_reg(0),
      I2 => reset_counter_reg(2),
      I3 => reset_counter_reg(3),
      O => plusOp(3)
    );
\reset_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => sel,
      D => plusOp(0),
      Q => reset_counter_reg(0),
      R => BTND_IBUF
    );
\reset_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => sel,
      D => plusOp(1),
      Q => reset_counter_reg(1),
      R => BTND_IBUF
    );
\reset_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => sel,
      D => \reset_counter[2]_i_1_n_0\,
      Q => reset_counter_reg(2),
      R => BTND_IBUF
    );
\reset_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => sel,
      D => plusOp(3),
      Q => reset_counter_reg(3),
      R => BTND_IBUF
    );
reset_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => reset_counter_reg(2),
      I1 => reset_counter_reg(3),
      I2 => reset_counter_reg(1),
      I3 => reset_counter_reg(0),
      I4 => BTND_IBUF,
      O => reset_i_1_n_0
    );
reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => reset_i_1_n_0,
      Q => reset,
      R => '0'
    );
top: entity work.top
     port map (
      CLK => clk_BUFG,
      LCD_DATA_OBUF(6 downto 0) => LCD_DATA_OBUF(6 downto 0),
      LCD_RS_OBUF => LCD_RS_OBUF,
      enable_enable_reg => top_n_1,
      reset => reset
    );
end STRUCTURE;
