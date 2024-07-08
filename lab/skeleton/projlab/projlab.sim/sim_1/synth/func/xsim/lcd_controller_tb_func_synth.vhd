-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Thu Jul  4 20:51:00 2024
-- Host        : prakt14 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /nas/ei/home/ge93zow/lab/skeleton/projlab/projlab.sim/sim_1/synth/func/xsim/lcd_controller_tb_func_synth.vhd
-- Design      : lcd_controller
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ram is
  port (
    lcd_data_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    \lcd_data[0]\ : in STD_LOGIC;
    \lcd_data[0]_0\ : in STD_LOGIC;
    \lcd_data[0]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \lcd_data_OBUF[0]_inst_i_1_0\ : in STD_LOGIC;
    \lcd_data_OBUF[0]_inst_i_1_1\ : in STD_LOGIC;
    \lcd_data_OBUF[0]_inst_i_1_2\ : in STD_LOGIC;
    \lcd_data_OBUF[0]_inst_i_1_3\ : in STD_LOGIC;
    \lcd_data[2]\ : in STD_LOGIC;
    \lcd_data[2]_0\ : in STD_LOGIC;
    \lcd_data[2]_1\ : in STD_LOGIC;
    \lcd_data[1]\ : in STD_LOGIC;
    \lcd_data[1]_0\ : in STD_LOGIC;
    \lcd_data_OBUF[2]_inst_i_1_0\ : in STD_LOGIC;
    \lcd_data_OBUF[0]_inst_i_1_4\ : in STD_LOGIC;
    \lcd_data_OBUF[2]_inst_i_1_1\ : in STD_LOGIC;
    \lcd_data_OBUF[0]_inst_i_1_5\ : in STD_LOGIC;
    date_time_i_IBUF : in STD_LOGIC_VECTOR ( 6 downto 0 );
    reset_IBUF : in STD_LOGIC;
    dcf_str_print_IBUF : in STD_LOGIC;
    \lcd_data_OBUF[1]_inst_i_1_0\ : in STD_LOGIC;
    \lcd_data_OBUF[1]_inst_i_1_1\ : in STD_LOGIC;
    \lcd_data_OBUF[1]_inst_i_1_2\ : in STD_LOGIC
  );
end ram;

architecture STRUCTURE of ram is
  signal \lcd_data_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[0]_inst_i_8_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[0]_inst_i_9_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[1]_inst_i_12_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[1]_inst_i_8_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[2]_inst_i_11_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[2]_inst_i_6_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[2]_inst_i_8_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ram[45][0]_i_1_n_0\ : STD_LOGIC;
  signal \ram[45][6]_i_1_n_0\ : STD_LOGIC;
  signal \ram[46][0]_i_1_n_0\ : STD_LOGIC;
  signal \ram[46][6]_i_1_n_0\ : STD_LOGIC;
  signal \ram_reg[45]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \ram_reg[46]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \lcd_data_OBUF[1]_inst_i_12\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \lcd_data_OBUF[1]_inst_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ram[45][0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ram[45][6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ram[46][0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ram[46][6]_i_1\ : label is "soft_lutpair1";
begin
\lcd_data_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0E0E000E0"
    )
        port map (
      I0 => \lcd_data_OBUF[0]_inst_i_2_n_0\,
      I1 => \lcd_data_OBUF[0]_inst_i_3_n_0\,
      I2 => \lcd_data[0]\,
      I3 => \lcd_data_OBUF[0]_inst_i_4_n_0\,
      I4 => \lcd_data[0]_0\,
      I5 => \lcd_data[0]_1\,
      O => lcd_data_OBUF(0)
    );
\lcd_data_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45554555FFFF4555"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(4),
      I4 => \lcd_data_OBUF[0]_inst_i_1_0\,
      I5 => \lcd_data_OBUF[0]_inst_i_8_n_0\,
      O => \lcd_data_OBUF[0]_inst_i_2_n_0\
    );
\lcd_data_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000200A2A"
    )
        port map (
      I0 => Q(1),
      I1 => \lcd_data_OBUF[0]_inst_i_1_4\,
      I2 => Q(2),
      I3 => \lcd_data_OBUF[0]_inst_i_9_n_0\,
      I4 => Q(3),
      I5 => \lcd_data_OBUF[0]_inst_i_1_5\,
      O => \lcd_data_OBUF[0]_inst_i_3_n_0\
    );
\lcd_data_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7F770000"
    )
        port map (
      I0 => \lcd_data_OBUF[0]_inst_i_1_1\,
      I1 => Q(2),
      I2 => \ram_reg[46]\(0),
      I3 => Q(3),
      I4 => \lcd_data_OBUF[0]_inst_i_1_2\,
      I5 => \lcd_data_OBUF[0]_inst_i_1_3\,
      O => \lcd_data_OBUF[0]_inst_i_4_n_0\
    );
\lcd_data_OBUF[0]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEDDFFFFFFFF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => \ram_reg[45]\(0),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(5),
      O => \lcd_data_OBUF[0]_inst_i_8_n_0\
    );
\lcd_data_OBUF[0]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00370037"
    )
        port map (
      I0 => date_time_i_IBUF(4),
      I1 => date_time_i_IBUF(6),
      I2 => date_time_i_IBUF(5),
      I3 => date_time_i_IBUF(3),
      I4 => \ram_reg[45]\(0),
      I5 => Q(3),
      O => \lcd_data_OBUF[0]_inst_i_9_n_0\
    );
\lcd_data_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088080800888888"
    )
        port map (
      I0 => \lcd_data[0]\,
      I1 => \lcd_data[1]\,
      I2 => Q(2),
      I3 => \lcd_data[1]_0\,
      I4 => Q(4),
      I5 => \lcd_data_OBUF[1]_inst_i_4_n_0\,
      O => lcd_data_OBUF(1)
    );
\lcd_data_OBUF[1]_inst_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F55"
    )
        port map (
      I0 => Q(0),
      I1 => \ram_reg[45]\(6),
      I2 => Q(1),
      I3 => Q(3),
      O => \lcd_data_OBUF[1]_inst_i_12_n_0\
    );
\lcd_data_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B0B00FFFFFFFF"
    )
        port map (
      I0 => \lcd_data_OBUF[1]_inst_i_8_n_0\,
      I1 => \lcd_data_OBUF[1]_inst_i_1_0\,
      I2 => \lcd_data_OBUF[1]_inst_i_1_1\,
      I3 => \lcd_data_OBUF[1]_inst_i_1_2\,
      I4 => \lcd_data_OBUF[1]_inst_i_12_n_0\,
      I5 => Q(5),
      O => \lcd_data_OBUF[1]_inst_i_4_n_0\
    );
\lcd_data_OBUF[1]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \ram_reg[46]\(6),
      I3 => Q(3),
      O => \lcd_data_OBUF[1]_inst_i_8_n_0\
    );
\lcd_data_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE000000FE00"
    )
        port map (
      I0 => \lcd_data_OBUF[2]_inst_i_2_n_0\,
      I1 => \lcd_data[2]\,
      I2 => \lcd_data[2]_0\,
      I3 => \lcd_data[0]\,
      I4 => \lcd_data[2]_1\,
      I5 => \lcd_data_OBUF[2]_inst_i_6_n_0\,
      O => lcd_data_OBUF(2)
    );
\lcd_data_OBUF[2]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \ram_reg[45]\(6),
      I1 => Q(2),
      I2 => date_time_i_IBUF(1),
      I3 => date_time_i_IBUF(0),
      I4 => date_time_i_IBUF(2),
      O => \lcd_data_OBUF[2]_inst_i_11_n_0\
    );
\lcd_data_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(2),
      I3 => \lcd_data_OBUF[2]_inst_i_1_0\,
      I4 => \lcd_data_OBUF[2]_inst_i_8_n_0\,
      O => \lcd_data_OBUF[2]_inst_i_2_n_0\
    );
\lcd_data_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020000020200F00"
    )
        port map (
      I0 => \lcd_data_OBUF[2]_inst_i_11_n_0\,
      I1 => \lcd_data_OBUF[0]_inst_i_1_4\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      I5 => \lcd_data_OBUF[2]_inst_i_1_1\,
      O => \lcd_data_OBUF[2]_inst_i_6_n_0\
    );
\lcd_data_OBUF[2]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F8000000F800"
    )
        port map (
      I0 => date_time_i_IBUF(6),
      I1 => date_time_i_IBUF(4),
      I2 => date_time_i_IBUF(5),
      I3 => Q(0),
      I4 => Q(3),
      I5 => \ram_reg[45]\(6),
      O => \lcd_data_OBUF[2]_inst_i_8_n_0\
    );
\lcd_data_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202000202A2AAA2A"
    )
        port map (
      I0 => \lcd_data[0]\,
      I1 => \lcd_data_OBUF[6]_inst_i_3_n_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => \lcd_data_OBUF[6]_inst_i_4_n_0\,
      O => lcd_data_OBUF(3)
    );
\lcd_data_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DBFBFBFB"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(2),
      I3 => \ram_reg[45]\(6),
      I4 => Q(5),
      O => \lcd_data_OBUF[6]_inst_i_3_n_0\
    );
\lcd_data_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF79797FFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(3),
      I3 => \ram_reg[46]\(6),
      I4 => Q(5),
      I5 => Q(4),
      O => \lcd_data_OBUF[6]_inst_i_4_n_0\
    );
\ram[45][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \ram_reg[45]\(0),
      I1 => reset_IBUF,
      I2 => dcf_str_print_IBUF,
      O => \ram[45][0]_i_1_n_0\
    );
\ram[45][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram_reg[45]\(6),
      I1 => reset_IBUF,
      I2 => dcf_str_print_IBUF,
      O => \ram[45][6]_i_1_n_0\
    );
\ram[46][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \ram_reg[46]\(0),
      I1 => reset_IBUF,
      O => \ram[46][0]_i_1_n_0\
    );
\ram[46][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ram_reg[46]\(6),
      I1 => reset_IBUF,
      I2 => dcf_str_print_IBUF,
      O => \ram[46][6]_i_1_n_0\
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
\ram_reg[45][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \ram[45][6]_i_1_n_0\,
      Q => \ram_reg[45]\(6),
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
\ram_reg[46][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \ram[46][6]_i_1_n_0\,
      Q => \ram_reg[46]\(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lcd_controller is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    dcf_str_print : in STD_LOGIC;
    mode : in STD_LOGIC_VECTOR ( 2 downto 0 );
    date_time_i : in STD_LOGIC_VECTOR ( 47 downto 0 );
    lcd_en : out STD_LOGIC;
    lcd_rw : out STD_LOGIC;
    lcd_rs : out STD_LOGIC;
    lcd_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of lcd_controller : entity is true;
end lcd_controller;

architecture STRUCTURE of lcd_controller is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_n_0_[2]\ : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal date_time_i_IBUF : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal dcf_str_print_IBUF : STD_LOGIC;
  signal enable_enable_i_1_n_0 : STD_LOGIC;
  signal enable_enable_i_2_n_0 : STD_LOGIC;
  signal enable_enable_i_3_n_0 : STD_LOGIC;
  signal enable_enable_i_4_n_0 : STD_LOGIC;
  signal enable_enable_i_5_n_0 : STD_LOGIC;
  signal enable_enable_i_6_n_0 : STD_LOGIC;
  signal enable_enable_reg_n_0 : STD_LOGIC;
  signal lcd_data_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \lcd_data_OBUF[0]_inst_i_10_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[0]_inst_i_11_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[0]_inst_i_12_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[0]_inst_i_13_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[0]_inst_i_14_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[0]_inst_i_15_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[0]_inst_i_5_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[0]_inst_i_6_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[0]_inst_i_7_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[1]_inst_i_10_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[1]_inst_i_11_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[1]_inst_i_6_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[1]_inst_i_7_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[1]_inst_i_9_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[2]_inst_i_10_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[2]_inst_i_12_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[2]_inst_i_7_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[2]_inst_i_9_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[4]_inst_i_6_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \lcd_data_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal lcd_en_OBUF : STD_LOGIC;
  signal lcd_rs_OBUF : STD_LOGIC;
  signal lcd_rs_reg_i_1_n_0 : STD_LOGIC;
  signal mode_IBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal read_addr : STD_LOGIC;
  signal \read_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[4]_i_2_n_0\ : STD_LOGIC;
  signal \read_addr[4]_i_3_n_0\ : STD_LOGIC;
  signal \read_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[5]_i_2_n_0\ : STD_LOGIC;
  signal \read_addr[5]_i_3_n_0\ : STD_LOGIC;
  signal \read_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[6]_i_2_n_0\ : STD_LOGIC;
  signal \read_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \read_addr[7]_i_3_n_0\ : STD_LOGIC;
  signal \read_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \read_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \read_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \read_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \read_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \read_addr_reg_n_0_[5]\ : STD_LOGIC;
  signal \read_addr_reg_n_0_[6]\ : STD_LOGIC;
  signal \read_addr_reg_n_0_[7]\ : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_6\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_5\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "idle:000,set_init:001,init:010,set_mode:011,display_time:101,display_date:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "idle:000,set_init:001,init:010,set_mode:011,display_time:101,display_date:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "idle:000,set_init:001,init:010,set_mode:011,display_time:101,display_date:100";
  attribute SOFT_HLUTNM of enable_enable_i_3 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of enable_enable_i_4 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of enable_enable_i_5 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of enable_enable_i_6 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \lcd_data_OBUF[0]_inst_i_13\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \lcd_data_OBUF[0]_inst_i_14\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \lcd_data_OBUF[0]_inst_i_15\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \lcd_data_OBUF[1]_inst_i_11\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \lcd_data_OBUF[1]_inst_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \lcd_data_OBUF[1]_inst_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \lcd_data_OBUF[1]_inst_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \lcd_data_OBUF[1]_inst_i_9\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \lcd_data_OBUF[2]_inst_i_12\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \lcd_data_OBUF[2]_inst_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \lcd_data_OBUF[2]_inst_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \lcd_data_OBUF[2]_inst_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \lcd_data_OBUF[2]_inst_i_9\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \lcd_data_OBUF[3]_inst_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \lcd_data_OBUF[4]_inst_i_5\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of lcd_rs_reg : label is "LD";
  attribute SOFT_HLUTNM of lcd_rs_reg_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_addr[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \read_addr[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \read_addr[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \read_addr[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_addr[4]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \read_addr[4]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \read_addr[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_addr[5]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_addr[5]_i_3\ : label is "soft_lutpair15";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEE2E2222"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \FSM_sequential_state[0]_i_3_n_0\,
      I4 => \FSM_sequential_state[0]_i_4_n_0\,
      I5 => reset_IBUF,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_5_n_0\,
      I1 => \read_addr_reg_n_0_[5]\,
      I2 => \read_addr_reg_n_0_[2]\,
      I3 => \lcd_data_OBUF[6]_inst_i_2_n_0\,
      I4 => \state__0\(0),
      I5 => \FSM_sequential_state[0]_i_6_n_0\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FFFF"
    )
        port map (
      I0 => mode_IBUF(0),
      I1 => mode_IBUF(2),
      I2 => mode_IBUF(1),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[2]\,
      I1 => \state__0\(1),
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \read_addr_reg_n_0_[3]\,
      I1 => \read_addr_reg_n_0_[0]\,
      O => \FSM_sequential_state[0]_i_5_n_0\
    );
\FSM_sequential_state[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_addr_reg_n_0_[1]\,
      I1 => \read_addr_reg_n_0_[4]\,
      O => \FSM_sequential_state[0]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000666E"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => \state__0\(0),
      I4 => reset_IBUF,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006222"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[2]\,
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => reset_IBUF,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555755"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[2]\,
      I1 => \read_addr_reg_n_0_[1]\,
      I2 => \read_addr_reg_n_0_[7]\,
      I3 => \FSM_sequential_state[2]_i_3_n_0\,
      I4 => \FSM_sequential_state[2]_i_4_n_0\,
      I5 => \FSM_sequential_state[2]_i_5_n_0\,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_addr_reg_n_0_[5]\,
      I1 => \read_addr_reg_n_0_[2]\,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \read_addr_reg_n_0_[4]\,
      I1 => \read_addr_reg_n_0_[3]\,
      I2 => \read_addr_reg_n_0_[6]\,
      I3 => \read_addr_reg_n_0_[0]\,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0E00F"
    )
        port map (
      I0 => mode_IBUF(2),
      I1 => mode_IBUF(1),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \FSM_sequential_state_reg_n_0_[2]\,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \FSM_sequential_state_reg_n_0_[2]\,
      R => '0'
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\date_time_i_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(0),
      O => date_time_i_IBUF(0)
    );
\date_time_i_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(10),
      O => date_time_i_IBUF(10)
    );
\date_time_i_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(11),
      O => date_time_i_IBUF(11)
    );
\date_time_i_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(12),
      O => date_time_i_IBUF(12)
    );
\date_time_i_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(13),
      O => date_time_i_IBUF(13)
    );
\date_time_i_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(14),
      O => date_time_i_IBUF(14)
    );
\date_time_i_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(15),
      O => date_time_i_IBUF(15)
    );
\date_time_i_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(16),
      O => date_time_i_IBUF(16)
    );
\date_time_i_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(17),
      O => date_time_i_IBUF(17)
    );
\date_time_i_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(18),
      O => date_time_i_IBUF(18)
    );
\date_time_i_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(19),
      O => date_time_i_IBUF(19)
    );
\date_time_i_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(1),
      O => date_time_i_IBUF(1)
    );
\date_time_i_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(20),
      O => date_time_i_IBUF(20)
    );
\date_time_i_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(21),
      O => date_time_i_IBUF(21)
    );
\date_time_i_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(22),
      O => date_time_i_IBUF(22)
    );
\date_time_i_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(23),
      O => date_time_i_IBUF(23)
    );
\date_time_i_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(2),
      O => date_time_i_IBUF(2)
    );
\date_time_i_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(3),
      O => date_time_i_IBUF(3)
    );
\date_time_i_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(4),
      O => date_time_i_IBUF(4)
    );
\date_time_i_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(5),
      O => date_time_i_IBUF(5)
    );
\date_time_i_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(6),
      O => date_time_i_IBUF(6)
    );
\date_time_i_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(7),
      O => date_time_i_IBUF(7)
    );
\date_time_i_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(8),
      O => date_time_i_IBUF(8)
    );
\date_time_i_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => date_time_i(9),
      O => date_time_i_IBUF(9)
    );
dcf_str_print_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => dcf_str_print,
      O => dcf_str_print_IBUF
    );
enable_enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33AABF0033AAB0"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => enable_enable_i_2_n_0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \FSM_sequential_state_reg_n_0_[2]\,
      I5 => enable_enable_reg_n_0,
      O => enable_enable_i_1_n_0
    );
enable_enable_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200020002FF0200"
    )
        port map (
      I0 => enable_enable_i_3_n_0,
      I1 => enable_enable_i_4_n_0,
      I2 => enable_enable_i_5_n_0,
      I3 => \state__0\(0),
      I4 => enable_enable_i_6_n_0,
      I5 => \FSM_sequential_state[2]_i_4_n_0\,
      O => enable_enable_i_2_n_0
    );
enable_enable_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \read_addr_reg_n_0_[6]\,
      I1 => \read_addr_reg_n_0_[0]\,
      I2 => \read_addr_reg_n_0_[7]\,
      I3 => \read_addr_reg_n_0_[4]\,
      O => enable_enable_i_3_n_0
    );
enable_enable_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \read_addr_reg_n_0_[1]\,
      I1 => \read_addr_reg_n_0_[5]\,
      O => enable_enable_i_4_n_0
    );
enable_enable_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \read_addr_reg_n_0_[2]\,
      I1 => \read_addr_reg_n_0_[3]\,
      O => enable_enable_i_5_n_0
    );
enable_enable_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \read_addr_reg_n_0_[2]\,
      I1 => \read_addr_reg_n_0_[5]\,
      I2 => \read_addr_reg_n_0_[7]\,
      I3 => \read_addr_reg_n_0_[1]\,
      O => enable_enable_i_6_n_0
    );
enable_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => enable_enable_i_1_n_0,
      Q => enable_enable_reg_n_0,
      R => '0'
    );
\lcd_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lcd_data_OBUF(0),
      O => lcd_data(0)
    );
\lcd_data_OBUF[0]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999D9D9D9D9D"
    )
        port map (
      I0 => \read_addr_reg_n_0_[4]\,
      I1 => \read_addr_reg_n_0_[5]\,
      I2 => date_time_i_IBUF(20),
      I3 => date_time_i_IBUF(22),
      I4 => date_time_i_IBUF(21),
      I5 => date_time_i_IBUF(23),
      O => \lcd_data_OBUF[0]_inst_i_10_n_0\
    );
\lcd_data_OBUF[0]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFE0"
    )
        port map (
      I0 => date_time_i_IBUF(14),
      I1 => date_time_i_IBUF(13),
      I2 => date_time_i_IBUF(15),
      I3 => date_time_i_IBUF(12),
      I4 => \read_addr_reg_n_0_[3]\,
      O => \lcd_data_OBUF[0]_inst_i_11_n_0\
    );
\lcd_data_OBUF[0]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDFDFDDDFDFDF"
    )
        port map (
      I0 => \read_addr_reg_n_0_[3]\,
      I1 => \read_addr_reg_n_0_[2]\,
      I2 => date_time_i_IBUF(0),
      I3 => date_time_i_IBUF(2),
      I4 => date_time_i_IBUF(3),
      I5 => date_time_i_IBUF(1),
      O => \lcd_data_OBUF[0]_inst_i_12_n_0\
    );
\lcd_data_OBUF[0]_inst_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \read_addr_reg_n_0_[5]\,
      I1 => \read_addr_reg_n_0_[4]\,
      I2 => \read_addr_reg_n_0_[1]\,
      O => \lcd_data_OBUF[0]_inst_i_13_n_0\
    );
\lcd_data_OBUF[0]_inst_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A80000"
    )
        port map (
      I0 => date_time_i_IBUF(19),
      I1 => date_time_i_IBUF(18),
      I2 => date_time_i_IBUF(17),
      I3 => \read_addr_reg_n_0_[4]\,
      I4 => \read_addr_reg_n_0_[5]\,
      O => \lcd_data_OBUF[0]_inst_i_14_n_0\
    );
\lcd_data_OBUF[0]_inst_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \read_addr_reg_n_0_[1]\,
      I1 => \read_addr_reg_n_0_[3]\,
      O => \lcd_data_OBUF[0]_inst_i_15_n_0\
    );
\lcd_data_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFABABAAAAAAAAA"
    )
        port map (
      I0 => \read_addr_reg_n_0_[0]\,
      I1 => \read_addr_reg_n_0_[2]\,
      I2 => \read_addr_reg_n_0_[1]\,
      I3 => \read_addr_reg_n_0_[5]\,
      I4 => \read_addr_reg_n_0_[3]\,
      I5 => \read_addr_reg_n_0_[4]\,
      O => \lcd_data_OBUF[0]_inst_i_5_n_0\
    );
\lcd_data_OBUF[0]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0E0F0CF"
    )
        port map (
      I0 => date_time_i_IBUF(16),
      I1 => \lcd_data_OBUF[0]_inst_i_14_n_0\,
      I2 => \read_addr_reg_n_0_[2]\,
      I3 => \read_addr_reg_n_0_[4]\,
      I4 => \read_addr_reg_n_0_[5]\,
      I5 => \lcd_data_OBUF[0]_inst_i_15_n_0\,
      O => \lcd_data_OBUF[0]_inst_i_6_n_0\
    );
\lcd_data_OBUF[0]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE0FFFF"
    )
        port map (
      I0 => date_time_i_IBUF(6),
      I1 => date_time_i_IBUF(5),
      I2 => date_time_i_IBUF(7),
      I3 => \read_addr_reg_n_0_[2]\,
      I4 => \read_addr_reg_n_0_[3]\,
      I5 => date_time_i_IBUF(4),
      O => \lcd_data_OBUF[0]_inst_i_7_n_0\
    );
\lcd_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lcd_data_OBUF(1),
      O => lcd_data(1)
    );
\lcd_data_OBUF[1]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EC"
    )
        port map (
      I0 => date_time_i_IBUF(19),
      I1 => date_time_i_IBUF(17),
      I2 => date_time_i_IBUF(18),
      I3 => \read_addr_reg_n_0_[3]\,
      I4 => \read_addr_reg_n_0_[1]\,
      O => \lcd_data_OBUF[1]_inst_i_10_n_0\
    );
\lcd_data_OBUF[1]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040404"
    )
        port map (
      I0 => date_time_i_IBUF(9),
      I1 => \read_addr_reg_n_0_[1]\,
      I2 => \read_addr_reg_n_0_[3]\,
      I3 => date_time_i_IBUF(10),
      I4 => date_time_i_IBUF(11),
      O => \lcd_data_OBUF[1]_inst_i_11_n_0\
    );
\lcd_data_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A008AFFFFFFFFFF"
    )
        port map (
      I0 => \read_addr_reg_n_0_[5]\,
      I1 => \lcd_data_OBUF[1]_inst_i_5_n_0\,
      I2 => \lcd_data_OBUF[1]_inst_i_6_n_0\,
      I3 => \read_addr_reg_n_0_[3]\,
      I4 => \lcd_data_OBUF[1]_inst_i_7_n_0\,
      I5 => \lcd_data_OBUF[2]_inst_i_9_n_0\,
      O => \lcd_data_OBUF[1]_inst_i_2_n_0\
    );
\lcd_data_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF9F"
    )
        port map (
      I0 => \read_addr_reg_n_0_[2]\,
      I1 => \read_addr_reg_n_0_[5]\,
      I2 => \read_addr_reg_n_0_[0]\,
      I3 => \read_addr_reg_n_0_[1]\,
      I4 => \read_addr_reg_n_0_[3]\,
      O => \lcd_data_OBUF[1]_inst_i_3_n_0\
    );
\lcd_data_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F800FF"
    )
        port map (
      I0 => date_time_i_IBUF(6),
      I1 => date_time_i_IBUF(7),
      I2 => date_time_i_IBUF(5),
      I3 => \read_addr_reg_n_0_[1]\,
      I4 => \read_addr_reg_n_0_[0]\,
      O => \lcd_data_OBUF[1]_inst_i_5_n_0\
    );
\lcd_data_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABF"
    )
        port map (
      I0 => \read_addr_reg_n_0_[0]\,
      I1 => date_time_i_IBUF(3),
      I2 => date_time_i_IBUF(2),
      I3 => date_time_i_IBUF(1),
      O => \lcd_data_OBUF[1]_inst_i_6_n_0\
    );
\lcd_data_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15FF0000FFFF00FF"
    )
        port map (
      I0 => date_time_i_IBUF(21),
      I1 => date_time_i_IBUF(22),
      I2 => date_time_i_IBUF(23),
      I3 => \read_addr_reg_n_0_[0]\,
      I4 => \read_addr_reg_n_0_[5]\,
      I5 => \read_addr_reg_n_0_[1]\,
      O => \lcd_data_OBUF[1]_inst_i_7_n_0\
    );
\lcd_data_OBUF[1]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => date_time_i_IBUF(14),
      I1 => date_time_i_IBUF(15),
      I2 => date_time_i_IBUF(13),
      I3 => \read_addr_reg_n_0_[3]\,
      O => \lcd_data_OBUF[1]_inst_i_9_n_0\
    );
\lcd_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lcd_data_OBUF(2),
      O => lcd_data(2)
    );
\lcd_data_OBUF[2]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FFF8F00000F0F"
    )
        port map (
      I0 => date_time_i_IBUF(21),
      I1 => date_time_i_IBUF(23),
      I2 => \read_addr_reg_n_0_[5]\,
      I3 => date_time_i_IBUF(22),
      I4 => \read_addr_reg_n_0_[4]\,
      I5 => \read_addr_reg_n_0_[0]\,
      O => \lcd_data_OBUF[2]_inst_i_10_n_0\
    );
\lcd_data_OBUF[2]_inst_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"999B99BB"
    )
        port map (
      I0 => \read_addr_reg_n_0_[5]\,
      I1 => \read_addr_reg_n_0_[4]\,
      I2 => date_time_i_IBUF(17),
      I3 => date_time_i_IBUF(18),
      I4 => date_time_i_IBUF(19),
      O => \lcd_data_OBUF[2]_inst_i_12_n_0\
    );
\lcd_data_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F800000000"
    )
        port map (
      I0 => date_time_i_IBUF(3),
      I1 => date_time_i_IBUF(1),
      I2 => date_time_i_IBUF(2),
      I3 => \read_addr_reg_n_0_[0]\,
      I4 => \lcd_data_OBUF[4]_inst_i_4_n_0\,
      I5 => \lcd_data_OBUF[2]_inst_i_9_n_0\,
      O => \lcd_data_OBUF[2]_inst_i_3_n_0\
    );
\lcd_data_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \lcd_data_OBUF[2]_inst_i_10_n_0\,
      I1 => \read_addr_reg_n_0_[2]\,
      I2 => \read_addr_reg_n_0_[3]\,
      O => \lcd_data_OBUF[2]_inst_i_4_n_0\
    );
\lcd_data_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => \read_addr_reg_n_0_[4]\,
      I1 => \read_addr_reg_n_0_[1]\,
      I2 => \read_addr_reg_n_0_[2]\,
      O => \lcd_data_OBUF[2]_inst_i_5_n_0\
    );
\lcd_data_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EC"
    )
        port map (
      I0 => date_time_i_IBUF(15),
      I1 => date_time_i_IBUF(14),
      I2 => date_time_i_IBUF(13),
      I3 => \read_addr_reg_n_0_[0]\,
      I4 => \read_addr_reg_n_0_[3]\,
      O => \lcd_data_OBUF[2]_inst_i_7_n_0\
    );
\lcd_data_OBUF[2]_inst_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_addr_reg_n_0_[4]\,
      I1 => \read_addr_reg_n_0_[2]\,
      O => \lcd_data_OBUF[2]_inst_i_9_n_0\
    );
\lcd_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lcd_data_OBUF(3),
      O => lcd_data(3)
    );
\lcd_data_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AA080808AA08AA"
    )
        port map (
      I0 => \lcd_data_OBUF[6]_inst_i_2_n_0\,
      I1 => \lcd_data_OBUF[3]_inst_i_2_n_0\,
      I2 => \lcd_data_OBUF[3]_inst_i_3_n_0\,
      I3 => \read_addr_reg_n_0_[2]\,
      I4 => \lcd_data_OBUF[3]_inst_i_4_n_0\,
      I5 => \lcd_data_OBUF[3]_inst_i_5_n_0\,
      O => lcd_data_OBUF(3)
    );
\lcd_data_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000DF0F00000000"
    )
        port map (
      I0 => \read_addr_reg_n_0_[0]\,
      I1 => date_time_i_IBUF(11),
      I2 => \read_addr_reg_n_0_[1]\,
      I3 => \read_addr_reg_n_0_[5]\,
      I4 => \read_addr_reg_n_0_[3]\,
      I5 => \read_addr_reg_n_0_[2]\,
      O => \lcd_data_OBUF[3]_inst_i_2_n_0\
    );
\lcd_data_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FFFF1BFF0A"
    )
        port map (
      I0 => \read_addr_reg_n_0_[1]\,
      I1 => date_time_i_IBUF(19),
      I2 => date_time_i_IBUF(15),
      I3 => \read_addr_reg_n_0_[4]\,
      I4 => \read_addr_reg_n_0_[5]\,
      I5 => \read_addr_reg_n_0_[0]\,
      O => \lcd_data_OBUF[3]_inst_i_3_n_0\
    );
\lcd_data_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003000B000300000"
    )
        port map (
      I0 => date_time_i_IBUF(23),
      I1 => \read_addr_reg_n_0_[5]\,
      I2 => \read_addr_reg_n_0_[1]\,
      I3 => \read_addr_reg_n_0_[3]\,
      I4 => \read_addr_reg_n_0_[4]\,
      I5 => \read_addr_reg_n_0_[0]\,
      O => \lcd_data_OBUF[3]_inst_i_4_n_0\
    );
\lcd_data_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDDDFDFDFFDDFFFD"
    )
        port map (
      I0 => \read_addr_reg_n_0_[3]\,
      I1 => \lcd_data_OBUF[3]_inst_i_6_n_0\,
      I2 => \read_addr_reg_n_0_[0]\,
      I3 => \read_addr_reg_n_0_[1]\,
      I4 => date_time_i_IBUF(7),
      I5 => date_time_i_IBUF(3),
      O => \lcd_data_OBUF[3]_inst_i_5_n_0\
    );
\lcd_data_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \read_addr_reg_n_0_[4]\,
      I1 => \read_addr_reg_n_0_[5]\,
      O => \lcd_data_OBUF[3]_inst_i_6_n_0\
    );
\lcd_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lcd_data_OBUF(4),
      O => lcd_data(4)
    );
\lcd_data_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020202022"
    )
        port map (
      I0 => \lcd_data_OBUF[4]_inst_i_2_n_0\,
      I1 => \lcd_data_OBUF[4]_inst_i_3_n_0\,
      I2 => \lcd_data_OBUF[4]_inst_i_4_n_0\,
      I3 => \read_addr_reg_n_0_[2]\,
      I4 => \lcd_data_OBUF[4]_inst_i_5_n_0\,
      I5 => \lcd_data_OBUF[4]_inst_i_6_n_0\,
      O => lcd_data_OBUF(4)
    );
\lcd_data_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555575F7FFFFFF"
    )
        port map (
      I0 => \read_addr_reg_n_0_[4]\,
      I1 => \read_addr_reg_n_0_[1]\,
      I2 => \read_addr_reg_n_0_[0]\,
      I3 => \read_addr_reg_n_0_[2]\,
      I4 => \read_addr_reg_n_0_[3]\,
      I5 => \read_addr_reg_n_0_[5]\,
      O => \lcd_data_OBUF[4]_inst_i_2_n_0\
    );
\lcd_data_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010111103101010"
    )
        port map (
      I0 => \read_addr_reg_n_0_[5]\,
      I1 => \read_addr_reg_n_0_[3]\,
      I2 => \read_addr_reg_n_0_[1]\,
      I3 => \read_addr_reg_n_0_[2]\,
      I4 => \read_addr_reg_n_0_[4]\,
      I5 => \read_addr_reg_n_0_[0]\,
      O => \lcd_data_OBUF[4]_inst_i_3_n_0\
    );
\lcd_data_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \read_addr_reg_n_0_[3]\,
      I1 => \read_addr_reg_n_0_[5]\,
      O => \lcd_data_OBUF[4]_inst_i_4_n_0\
    );
\lcd_data_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \read_addr_reg_n_0_[1]\,
      I1 => \read_addr_reg_n_0_[0]\,
      O => \lcd_data_OBUF[4]_inst_i_5_n_0\
    );
\lcd_data_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0001"
    )
        port map (
      I0 => \read_addr_reg_n_0_[5]\,
      I1 => \read_addr_reg_n_0_[2]\,
      I2 => \read_addr_reg_n_0_[1]\,
      I3 => \read_addr_reg_n_0_[4]\,
      I4 => \read_addr_reg_n_0_[6]\,
      I5 => \read_addr_reg_n_0_[7]\,
      O => \lcd_data_OBUF[4]_inst_i_6_n_0\
    );
\lcd_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lcd_data_OBUF(5),
      O => lcd_data(5)
    );
\lcd_data_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF5D6F"
    )
        port map (
      I0 => \read_addr_reg_n_0_[3]\,
      I1 => \read_addr_reg_n_0_[0]\,
      I2 => \read_addr_reg_n_0_[1]\,
      I3 => \read_addr_reg_n_0_[2]\,
      I4 => \read_addr_reg_n_0_[4]\,
      I5 => \lcd_data_OBUF[5]_inst_i_2_n_0\,
      O => lcd_data_OBUF(5)
    );
\lcd_data_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBFBFBF9F9FFF"
    )
        port map (
      I0 => \read_addr_reg_n_0_[4]\,
      I1 => \read_addr_reg_n_0_[5]\,
      I2 => \lcd_data_OBUF[6]_inst_i_2_n_0\,
      I3 => \read_addr_reg_n_0_[1]\,
      I4 => \read_addr_reg_n_0_[2]\,
      I5 => \read_addr_reg_n_0_[3]\,
      O => \lcd_data_OBUF[5]_inst_i_2_n_0\
    );
\lcd_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lcd_data_OBUF(6),
      O => lcd_data(6)
    );
\lcd_data_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_addr_reg_n_0_[7]\,
      I1 => \read_addr_reg_n_0_[6]\,
      O => \lcd_data_OBUF[6]_inst_i_2_n_0\
    );
\lcd_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => lcd_data(7)
    );
lcd_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => lcd_en_OBUF,
      O => lcd_en
    );
lcd_en_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clk_IBUF,
      I1 => enable_enable_reg_n_0,
      I2 => reset_IBUF,
      O => lcd_en_OBUF
    );
lcd_rs_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => lcd_rs_OBUF,
      O => lcd_rs
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
      Q => lcd_rs_OBUF
    );
lcd_rs_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      O => lcd_rs_reg_i_1_n_0
    );
lcd_rw_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => lcd_rw
    );
\mode_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mode(0),
      O => mode_IBUF(0)
    );
\mode_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mode(1),
      O => mode_IBUF(1)
    );
\mode_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mode(2),
      O => mode_IBUF(2)
    );
ram_inst: entity work.ram
     port map (
      CLK => clk_IBUF_BUFG,
      Q(5) => \read_addr_reg_n_0_[5]\,
      Q(4) => \read_addr_reg_n_0_[4]\,
      Q(3) => \read_addr_reg_n_0_[3]\,
      Q(2) => \read_addr_reg_n_0_[2]\,
      Q(1) => \read_addr_reg_n_0_[1]\,
      Q(0) => \read_addr_reg_n_0_[0]\,
      date_time_i_IBUF(6 downto 0) => date_time_i_IBUF(11 downto 5),
      dcf_str_print_IBUF => dcf_str_print_IBUF,
      \lcd_data[0]\ => \lcd_data_OBUF[6]_inst_i_2_n_0\,
      \lcd_data[0]_0\ => \lcd_data_OBUF[0]_inst_i_5_n_0\,
      \lcd_data[0]_1\ => \lcd_data_OBUF[0]_inst_i_6_n_0\,
      \lcd_data[1]\ => \lcd_data_OBUF[1]_inst_i_2_n_0\,
      \lcd_data[1]_0\ => \lcd_data_OBUF[1]_inst_i_3_n_0\,
      \lcd_data[2]\ => \lcd_data_OBUF[2]_inst_i_3_n_0\,
      \lcd_data[2]_0\ => \lcd_data_OBUF[2]_inst_i_4_n_0\,
      \lcd_data[2]_1\ => \lcd_data_OBUF[2]_inst_i_5_n_0\,
      lcd_data_OBUF(3) => lcd_data_OBUF(6),
      lcd_data_OBUF(2 downto 0) => lcd_data_OBUF(2 downto 0),
      \lcd_data_OBUF[0]_inst_i_1_0\ => \lcd_data_OBUF[0]_inst_i_7_n_0\,
      \lcd_data_OBUF[0]_inst_i_1_1\ => \lcd_data_OBUF[0]_inst_i_11_n_0\,
      \lcd_data_OBUF[0]_inst_i_1_2\ => \lcd_data_OBUF[0]_inst_i_12_n_0\,
      \lcd_data_OBUF[0]_inst_i_1_3\ => \lcd_data_OBUF[0]_inst_i_13_n_0\,
      \lcd_data_OBUF[0]_inst_i_1_4\ => \lcd_data_OBUF[3]_inst_i_6_n_0\,
      \lcd_data_OBUF[0]_inst_i_1_5\ => \lcd_data_OBUF[0]_inst_i_10_n_0\,
      \lcd_data_OBUF[1]_inst_i_1_0\ => \lcd_data_OBUF[1]_inst_i_9_n_0\,
      \lcd_data_OBUF[1]_inst_i_1_1\ => \lcd_data_OBUF[1]_inst_i_10_n_0\,
      \lcd_data_OBUF[1]_inst_i_1_2\ => \lcd_data_OBUF[1]_inst_i_11_n_0\,
      \lcd_data_OBUF[2]_inst_i_1_0\ => \lcd_data_OBUF[2]_inst_i_7_n_0\,
      \lcd_data_OBUF[2]_inst_i_1_1\ => \lcd_data_OBUF[2]_inst_i_12_n_0\,
      reset_IBUF => reset_IBUF
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
      INIT => X"1414FF3C"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \read_addr_reg_n_0_[1]\,
      I2 => \read_addr_reg_n_0_[0]\,
      I3 => \state__0\(0),
      I4 => \FSM_sequential_state_reg_n_0_[2]\,
      O => \read_addr[1]_i_1_n_0\
    );
\read_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0057575757000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \state__0\(0),
      I3 => \read_addr_reg_n_0_[1]\,
      I4 => \read_addr_reg_n_0_[0]\,
      I5 => \read_addr_reg_n_0_[2]\,
      O => \read_addr[2]_i_1_n_0\
    );
\read_addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5F0C0C5F"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => \read_addr_reg_n_0_[3]\,
      I4 => \read_addr[5]_i_3_n_0\,
      O => \read_addr[3]_i_1_n_0\
    );
\read_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22223BFB"
    )
        port map (
      I0 => \read_addr[4]_i_2_n_0\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \read_addr[4]_i_3_n_0\,
      I4 => \FSM_sequential_state_reg_n_0_[2]\,
      O => \read_addr[4]_i_1_n_0\
    );
\read_addr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \read_addr_reg_n_0_[4]\,
      I1 => \read_addr_reg_n_0_[2]\,
      I2 => \read_addr_reg_n_0_[1]\,
      I3 => \read_addr_reg_n_0_[0]\,
      I4 => \read_addr_reg_n_0_[3]\,
      O => \read_addr[4]_i_2_n_0\
    );
\read_addr[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => mode_IBUF(0),
      I1 => mode_IBUF(2),
      I2 => mode_IBUF(1),
      O => \read_addr[4]_i_3_n_0\
    );
\read_addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA2000"
    )
        port map (
      I0 => \read_addr[5]_i_2_n_0\,
      I1 => \read_addr[5]_i_3_n_0\,
      I2 => \read_addr_reg_n_0_[4]\,
      I3 => \read_addr_reg_n_0_[3]\,
      I4 => \read_addr_reg_n_0_[5]\,
      O => \read_addr[5]_i_1_n_0\
    );
\read_addr[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \state__0\(1),
      O => \read_addr[5]_i_2_n_0\
    );
\read_addr[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \read_addr_reg_n_0_[2]\,
      I1 => \read_addr_reg_n_0_[1]\,
      I2 => \read_addr_reg_n_0_[0]\,
      O => \read_addr[5]_i_3_n_0\
    );
\read_addr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABEBEBEBEBE"
    )
        port map (
      I0 => \read_addr[6]_i_2_n_0\,
      I1 => \read_addr_reg_n_0_[6]\,
      I2 => \read_addr[7]_i_3_n_0\,
      I3 => \state__0\(0),
      I4 => \FSM_sequential_state_reg_n_0_[2]\,
      I5 => \state__0\(1),
      O => \read_addr[6]_i_1_n_0\
    );
\read_addr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DDDDDDD5"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => mode_IBUF(1),
      I3 => mode_IBUF(2),
      I4 => mode_IBUF(0),
      I5 => \FSM_sequential_state_reg_n_0_[2]\,
      O => \read_addr[6]_i_2_n_0\
    );
\read_addr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF5700"
    )
        port map (
      I0 => \state__0\(0),
      I1 => mode_IBUF(1),
      I2 => mode_IBUF(2),
      I3 => \state__0\(1),
      I4 => \FSM_sequential_state_reg_n_0_[2]\,
      O => read_addr
    );
\read_addr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0057575757000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \state__0\(0),
      I3 => \read_addr_reg_n_0_[6]\,
      I4 => \read_addr[7]_i_3_n_0\,
      I5 => \read_addr_reg_n_0_[7]\,
      O => \read_addr[7]_i_2_n_0\
    );
\read_addr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \read_addr_reg_n_0_[5]\,
      I1 => \read_addr_reg_n_0_[3]\,
      I2 => \read_addr_reg_n_0_[4]\,
      I3 => \read_addr_reg_n_0_[2]\,
      I4 => \read_addr_reg_n_0_[1]\,
      I5 => \read_addr_reg_n_0_[0]\,
      O => \read_addr[7]_i_3_n_0\
    );
\read_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => read_addr,
      D => \read_addr[0]_i_1_n_0\,
      Q => \read_addr_reg_n_0_[0]\,
      R => reset_IBUF
    );
\read_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => read_addr,
      D => \read_addr[1]_i_1_n_0\,
      Q => \read_addr_reg_n_0_[1]\,
      R => reset_IBUF
    );
\read_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => read_addr,
      D => \read_addr[2]_i_1_n_0\,
      Q => \read_addr_reg_n_0_[2]\,
      R => reset_IBUF
    );
\read_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => read_addr,
      D => \read_addr[3]_i_1_n_0\,
      Q => \read_addr_reg_n_0_[3]\,
      R => reset_IBUF
    );
\read_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => read_addr,
      D => \read_addr[4]_i_1_n_0\,
      Q => \read_addr_reg_n_0_[4]\,
      R => reset_IBUF
    );
\read_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => read_addr,
      D => \read_addr[5]_i_1_n_0\,
      Q => \read_addr_reg_n_0_[5]\,
      R => reset_IBUF
    );
\read_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => read_addr,
      D => \read_addr[6]_i_1_n_0\,
      Q => \read_addr_reg_n_0_[6]\,
      R => reset_IBUF
    );
\read_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => read_addr,
      D => \read_addr[7]_i_2_n_0\,
      Q => \read_addr_reg_n_0_[7]\,
      R => reset_IBUF
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
end STRUCTURE;
