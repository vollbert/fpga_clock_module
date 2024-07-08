// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Jul  4 20:43:48 2024
// Host        : prakt14 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /nas/ei/home/ge93zow/lab/skeleton/projlab/projlab.sim/sim_1/synth/timing/xsim/lcd_controller_tb_time_synth.v
// Design      : hardware
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module clock_gen
   (clk,
    E,
    SR,
    en_1_reg_0,
    LCD_E_OBUF,
    en_1_reg_1,
    GCLK_IBUF_BUFG,
    clk_BUFG,
    \current_sample_reg[3] ,
    reset,
    LCD_E,
    heartbeat);
  output clk;
  output [0:0]E;
  output [0:0]SR;
  output [0:0]en_1_reg_0;
  output LCD_E_OBUF;
  output en_1_reg_1;
  input GCLK_IBUF_BUFG;
  input clk_BUFG;
  input \current_sample_reg[3] ;
  input reset;
  input LCD_E;
  input heartbeat;

  wire [0:0]E;
  wire GCLK_IBUF_BUFG;
  wire LCD_E;
  wire LCD_E_OBUF;
  wire [0:0]SR;
  wire clk;
  wire clk_BUFG;
  wire counter_1;
  wire counter_100;
  wire \counter_100[0]_i_1_n_0 ;
  wire \counter_100[1]_i_1_n_0 ;
  wire \counter_100[2]_i_1_n_0 ;
  wire \counter_100[3]_i_1_n_0 ;
  wire \counter_100_reg_n_0_[0] ;
  wire \counter_100_reg_n_0_[1] ;
  wire \counter_100_reg_n_0_[2] ;
  wire \counter_100_reg_n_0_[3] ;
  wire [12:0]counter_10K;
  wire counter_10K0_carry__0_n_0;
  wire counter_10K0_carry__0_n_1;
  wire counter_10K0_carry__0_n_2;
  wire counter_10K0_carry__0_n_3;
  wire counter_10K0_carry__0_n_4;
  wire counter_10K0_carry__0_n_5;
  wire counter_10K0_carry__0_n_6;
  wire counter_10K0_carry__0_n_7;
  wire counter_10K0_carry__1_n_1;
  wire counter_10K0_carry__1_n_2;
  wire counter_10K0_carry__1_n_3;
  wire counter_10K0_carry__1_n_4;
  wire counter_10K0_carry__1_n_5;
  wire counter_10K0_carry__1_n_6;
  wire counter_10K0_carry__1_n_7;
  wire counter_10K0_carry_n_0;
  wire counter_10K0_carry_n_1;
  wire counter_10K0_carry_n_2;
  wire counter_10K0_carry_n_3;
  wire counter_10K0_carry_n_4;
  wire counter_10K0_carry_n_5;
  wire counter_10K0_carry_n_6;
  wire counter_10K0_carry_n_7;
  wire \counter_10K[12]_i_2_n_0 ;
  wire \counter_10K[12]_i_3_n_0 ;
  wire [0:0]counter_10K_0;
  wire \counter_10[0]_i_1_n_0 ;
  wire \counter_10[1]_i_1_n_0 ;
  wire \counter_10[2]_i_1_n_0 ;
  wire \counter_10[3]_i_1_n_0 ;
  wire \counter_10[3]_i_2_n_0 ;
  wire counter_10__0;
  wire \counter_10_reg_n_0_[0] ;
  wire \counter_10_reg_n_0_[1] ;
  wire \counter_10_reg_n_0_[2] ;
  wire \counter_10_reg_n_0_[3] ;
  wire \counter_1K[0]_i_1_n_0 ;
  wire \counter_1K[1]_i_1_n_0 ;
  wire \counter_1K[2]_i_1_n_0 ;
  wire \counter_1K[3]_i_2_n_0 ;
  wire \counter_1K_reg_n_0_[0] ;
  wire \counter_1K_reg_n_0_[1] ;
  wire \counter_1K_reg_n_0_[2] ;
  wire \counter_1K_reg_n_0_[3] ;
  wire \counter_1[0]_i_1_n_0 ;
  wire \counter_1[1]_i_1_n_0 ;
  wire \counter_1[2]_i_1_n_0 ;
  wire \counter_1[3]_i_1_n_0 ;
  wire \counter_1[3]_i_2_n_0 ;
  wire \counter_1_reg_n_0_[0] ;
  wire \counter_1_reg_n_0_[1] ;
  wire \counter_1_reg_n_0_[2] ;
  wire \counter_1_reg_n_0_[3] ;
  wire \current_sample_reg[3] ;
  wire en_1_i_1_n_0;
  wire en_1_i_3_n_0;
  wire [0:0]en_1_reg_0;
  wire en_1_reg_1;
  wire heartbeat;
  wire i_clk_10K;
  wire i_clk_10K_i_1_n_0;
  wire reset;
  wire [3:3]NLW_counter_10K0_carry__1_CO_UNCONNECTED;

  LUT3 #(
    .INIT(8'h40)) 
    LCD_E_OBUF_inst_i_1
       (.I0(reset),
        .I1(clk),
        .I2(LCD_E),
        .O(LCD_E_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_100[0]_i_1 
       (.I0(\counter_100_reg_n_0_[0] ),
        .O(\counter_100[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5A52)) 
    \counter_100[1]_i_1 
       (.I0(\counter_100_reg_n_0_[0] ),
        .I1(\counter_100_reg_n_0_[3] ),
        .I2(\counter_100_reg_n_0_[1] ),
        .I3(\counter_100_reg_n_0_[2] ),
        .O(\counter_100[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_100[2]_i_1 
       (.I0(\counter_100_reg_n_0_[0] ),
        .I1(\counter_100_reg_n_0_[1] ),
        .I2(\counter_100_reg_n_0_[2] ),
        .O(\counter_100[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6CC4)) 
    \counter_100[3]_i_1 
       (.I0(\counter_100_reg_n_0_[0] ),
        .I1(\counter_100_reg_n_0_[3] ),
        .I2(\counter_100_reg_n_0_[1] ),
        .I3(\counter_100_reg_n_0_[2] ),
        .O(\counter_100[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_100_reg[0] 
       (.C(clk_BUFG),
        .CE(counter_100),
        .D(\counter_100[0]_i_1_n_0 ),
        .Q(\counter_100_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_100_reg[1] 
       (.C(clk_BUFG),
        .CE(counter_100),
        .D(\counter_100[1]_i_1_n_0 ),
        .Q(\counter_100_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_100_reg[2] 
       (.C(clk_BUFG),
        .CE(counter_100),
        .D(\counter_100[2]_i_1_n_0 ),
        .Q(\counter_100_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_100_reg[3] 
       (.C(clk_BUFG),
        .CE(counter_100),
        .D(\counter_100[3]_i_1_n_0 ),
        .Q(\counter_100_reg_n_0_[3] ),
        .R(1'b0));
  CARRY4 counter_10K0_carry
       (.CI(1'b0),
        .CO({counter_10K0_carry_n_0,counter_10K0_carry_n_1,counter_10K0_carry_n_2,counter_10K0_carry_n_3}),
        .CYINIT(counter_10K[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter_10K0_carry_n_4,counter_10K0_carry_n_5,counter_10K0_carry_n_6,counter_10K0_carry_n_7}),
        .S(counter_10K[4:1]));
  CARRY4 counter_10K0_carry__0
       (.CI(counter_10K0_carry_n_0),
        .CO({counter_10K0_carry__0_n_0,counter_10K0_carry__0_n_1,counter_10K0_carry__0_n_2,counter_10K0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter_10K0_carry__0_n_4,counter_10K0_carry__0_n_5,counter_10K0_carry__0_n_6,counter_10K0_carry__0_n_7}),
        .S(counter_10K[8:5]));
  CARRY4 counter_10K0_carry__1
       (.CI(counter_10K0_carry__0_n_0),
        .CO({NLW_counter_10K0_carry__1_CO_UNCONNECTED[3],counter_10K0_carry__1_n_1,counter_10K0_carry__1_n_2,counter_10K0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter_10K0_carry__1_n_4,counter_10K0_carry__1_n_5,counter_10K0_carry__1_n_6,counter_10K0_carry__1_n_7}),
        .S(counter_10K[12:9]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_10K[0]_i_1 
       (.I0(counter_10K[0]),
        .O(counter_10K_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \counter_10K[12]_i_1 
       (.I0(\counter_10K[12]_i_2_n_0 ),
        .I1(\counter_10K[12]_i_3_n_0 ),
        .I2(counter_10K[4]),
        .I3(counter_10K[9]),
        .I4(counter_10K[0]),
        .O(i_clk_10K));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \counter_10K[12]_i_2 
       (.I0(counter_10K[6]),
        .I1(counter_10K[7]),
        .I2(counter_10K[3]),
        .I3(counter_10K[5]),
        .I4(counter_10K[10]),
        .I5(counter_10K[2]),
        .O(\counter_10K[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \counter_10K[12]_i_3 
       (.I0(counter_10K[12]),
        .I1(counter_10K[1]),
        .I2(counter_10K[8]),
        .I3(counter_10K[11]),
        .O(\counter_10K[12]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10K_reg[0] 
       (.C(GCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_10K_0),
        .Q(counter_10K[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10K_reg[10] 
       (.C(GCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_10K0_carry__1_n_6),
        .Q(counter_10K[10]),
        .R(i_clk_10K));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10K_reg[11] 
       (.C(GCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_10K0_carry__1_n_5),
        .Q(counter_10K[11]),
        .R(i_clk_10K));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10K_reg[12] 
       (.C(GCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_10K0_carry__1_n_4),
        .Q(counter_10K[12]),
        .R(i_clk_10K));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10K_reg[1] 
       (.C(GCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_10K0_carry_n_7),
        .Q(counter_10K[1]),
        .R(i_clk_10K));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10K_reg[2] 
       (.C(GCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_10K0_carry_n_6),
        .Q(counter_10K[2]),
        .R(i_clk_10K));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10K_reg[3] 
       (.C(GCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_10K0_carry_n_5),
        .Q(counter_10K[3]),
        .R(i_clk_10K));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10K_reg[4] 
       (.C(GCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_10K0_carry_n_4),
        .Q(counter_10K[4]),
        .R(i_clk_10K));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10K_reg[5] 
       (.C(GCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_10K0_carry__0_n_7),
        .Q(counter_10K[5]),
        .R(i_clk_10K));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10K_reg[6] 
       (.C(GCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_10K0_carry__0_n_6),
        .Q(counter_10K[6]),
        .R(i_clk_10K));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10K_reg[7] 
       (.C(GCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_10K0_carry__0_n_5),
        .Q(counter_10K[7]),
        .R(i_clk_10K));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10K_reg[8] 
       (.C(GCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_10K0_carry__0_n_4),
        .Q(counter_10K[8]),
        .R(i_clk_10K));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10K_reg[9] 
       (.C(GCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_10K0_carry__1_n_7),
        .Q(counter_10K[9]),
        .R(i_clk_10K));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_10[0]_i_1 
       (.I0(\counter_10_reg_n_0_[0] ),
        .O(\counter_10[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5A52)) 
    \counter_10[1]_i_1 
       (.I0(\counter_10_reg_n_0_[0] ),
        .I1(\counter_10_reg_n_0_[3] ),
        .I2(\counter_10_reg_n_0_[1] ),
        .I3(\counter_10_reg_n_0_[2] ),
        .O(\counter_10[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_10[2]_i_1 
       (.I0(\counter_10_reg_n_0_[0] ),
        .I1(\counter_10_reg_n_0_[1] ),
        .I2(\counter_10_reg_n_0_[2] ),
        .O(\counter_10[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \counter_10[3]_i_1 
       (.I0(counter_100),
        .I1(\counter_100_reg_n_0_[0] ),
        .I2(\counter_100_reg_n_0_[3] ),
        .I3(\counter_100_reg_n_0_[1] ),
        .I4(\counter_100_reg_n_0_[2] ),
        .O(\counter_10[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6CC4)) 
    \counter_10[3]_i_2 
       (.I0(\counter_10_reg_n_0_[0] ),
        .I1(\counter_10_reg_n_0_[3] ),
        .I2(\counter_10_reg_n_0_[1] ),
        .I3(\counter_10_reg_n_0_[2] ),
        .O(\counter_10[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10_reg[0] 
       (.C(clk_BUFG),
        .CE(\counter_10[3]_i_1_n_0 ),
        .D(\counter_10[0]_i_1_n_0 ),
        .Q(\counter_10_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10_reg[1] 
       (.C(clk_BUFG),
        .CE(\counter_10[3]_i_1_n_0 ),
        .D(\counter_10[1]_i_1_n_0 ),
        .Q(\counter_10_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10_reg[2] 
       (.C(clk_BUFG),
        .CE(\counter_10[3]_i_1_n_0 ),
        .D(\counter_10[2]_i_1_n_0 ),
        .Q(\counter_10_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_10_reg[3] 
       (.C(clk_BUFG),
        .CE(\counter_10[3]_i_1_n_0 ),
        .D(\counter_10[3]_i_2_n_0 ),
        .Q(\counter_10_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter_1K[0]_i_1 
       (.I0(\counter_1K_reg_n_0_[0] ),
        .O(\counter_1K[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_1K[1]_i_1 
       (.I0(\counter_1K_reg_n_0_[0] ),
        .I1(\counter_1K_reg_n_0_[1] ),
        .O(\counter_1K[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_1K[2]_i_1 
       (.I0(\counter_1K_reg_n_0_[0] ),
        .I1(\counter_1K_reg_n_0_[1] ),
        .I2(\counter_1K_reg_n_0_[2] ),
        .O(\counter_1K[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \counter_1K[3]_i_1 
       (.I0(\counter_1K_reg_n_0_[2] ),
        .I1(\counter_1K_reg_n_0_[1] ),
        .I2(\counter_1K_reg_n_0_[3] ),
        .I3(\counter_1K_reg_n_0_[0] ),
        .O(counter_100));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_1K[3]_i_2 
       (.I0(\counter_1K_reg_n_0_[1] ),
        .I1(\counter_1K_reg_n_0_[0] ),
        .I2(\counter_1K_reg_n_0_[2] ),
        .I3(\counter_1K_reg_n_0_[3] ),
        .O(\counter_1K[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1K_reg[0] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(\counter_1K[0]_i_1_n_0 ),
        .Q(\counter_1K_reg_n_0_[0] ),
        .R(counter_100));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1K_reg[1] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(\counter_1K[1]_i_1_n_0 ),
        .Q(\counter_1K_reg_n_0_[1] ),
        .R(counter_100));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1K_reg[2] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(\counter_1K[2]_i_1_n_0 ),
        .Q(\counter_1K_reg_n_0_[2] ),
        .R(counter_100));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1K_reg[3] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(\counter_1K[3]_i_2_n_0 ),
        .Q(\counter_1K_reg_n_0_[3] ),
        .R(counter_100));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_1[0]_i_1 
       (.I0(\counter_1_reg_n_0_[0] ),
        .O(\counter_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h5A52)) 
    \counter_1[1]_i_1 
       (.I0(\counter_1_reg_n_0_[0] ),
        .I1(\counter_1_reg_n_0_[3] ),
        .I2(\counter_1_reg_n_0_[1] ),
        .I3(\counter_1_reg_n_0_[2] ),
        .O(\counter_1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_1[2]_i_1 
       (.I0(\counter_1_reg_n_0_[0] ),
        .I1(\counter_1_reg_n_0_[1] ),
        .I2(\counter_1_reg_n_0_[2] ),
        .O(\counter_1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \counter_1[3]_i_1 
       (.I0(counter_100),
        .I1(\counter_10_reg_n_0_[2] ),
        .I2(\counter_10_reg_n_0_[1] ),
        .I3(\counter_10_reg_n_0_[3] ),
        .I4(\counter_10_reg_n_0_[0] ),
        .I5(counter_10__0),
        .O(\counter_1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6CC4)) 
    \counter_1[3]_i_2 
       (.I0(\counter_1_reg_n_0_[0] ),
        .I1(\counter_1_reg_n_0_[3] ),
        .I2(\counter_1_reg_n_0_[1] ),
        .I3(\counter_1_reg_n_0_[2] ),
        .O(\counter_1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \counter_1[3]_i_3 
       (.I0(\counter_100_reg_n_0_[2] ),
        .I1(\counter_100_reg_n_0_[1] ),
        .I2(\counter_100_reg_n_0_[3] ),
        .I3(\counter_100_reg_n_0_[0] ),
        .O(counter_10__0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[0] 
       (.C(clk_BUFG),
        .CE(\counter_1[3]_i_1_n_0 ),
        .D(\counter_1[0]_i_1_n_0 ),
        .Q(\counter_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[1] 
       (.C(clk_BUFG),
        .CE(\counter_1[3]_i_1_n_0 ),
        .D(\counter_1[1]_i_1_n_0 ),
        .Q(\counter_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[2] 
       (.C(clk_BUFG),
        .CE(\counter_1[3]_i_1_n_0 ),
        .D(\counter_1[2]_i_1_n_0 ),
        .Q(\counter_1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_1_reg[3] 
       (.C(clk_BUFG),
        .CE(\counter_1[3]_i_1_n_0 ),
        .D(\counter_1[3]_i_2_n_0 ),
        .Q(\counter_1_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_sample[3]_i_1 
       (.I0(SR),
        .I1(\current_sample_reg[3] ),
        .O(en_1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    en_10_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(\counter_1[3]_i_1_n_0 ),
        .Q(E),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    en_1_i_1
       (.I0(counter_100),
        .I1(counter_1),
        .I2(en_1_i_3_n_0),
        .I3(counter_10__0),
        .O(en_1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    en_1_i_2
       (.I0(\counter_10_reg_n_0_[2] ),
        .I1(\counter_10_reg_n_0_[1] ),
        .I2(\counter_10_reg_n_0_[3] ),
        .I3(\counter_10_reg_n_0_[0] ),
        .O(counter_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    en_1_i_3
       (.I0(\counter_1_reg_n_0_[2] ),
        .I1(\counter_1_reg_n_0_[1] ),
        .I2(\counter_1_reg_n_0_[3] ),
        .I3(\counter_1_reg_n_0_[0] ),
        .O(en_1_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    en_1_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(en_1_i_1_n_0),
        .Q(SR),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    heartbeat_i_1
       (.I0(SR),
        .I1(heartbeat),
        .O(en_1_reg_1));
  LUT6 #(
    .INIT(64'hFDFFFFFF02000000)) 
    i_clk_10K_i_1
       (.I0(\counter_10K[12]_i_2_n_0 ),
        .I1(\counter_10K[12]_i_3_n_0 ),
        .I2(counter_10K[4]),
        .I3(counter_10K[9]),
        .I4(counter_10K[0]),
        .I5(clk),
        .O(i_clk_10K_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    i_clk_10K_reg
       (.C(GCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(i_clk_10K_i_1_n_0),
        .Q(clk),
        .R(1'b0));
endmodule

module clock_module
   (LCD_RS_OBUF,
    enable_enable_reg,
    LCD_DATA_OBUF,
    CLK,
    reset);
  output LCD_RS_OBUF;
  output enable_enable_reg;
  output [6:0]LCD_DATA_OBUF;
  input CLK;
  input reset;

  wire CLK;
  wire [6:0]LCD_DATA_OBUF;
  wire LCD_RS_OBUF;
  wire enable_enable_reg;
  wire reset;

  lcd_controller lcd_contr_module
       (.CLK(CLK),
        .LCD_DATA_OBUF(LCD_DATA_OBUF),
        .LCD_RS_OBUF(LCD_RS_OBUF),
        .enable_enable_reg_0(enable_enable_reg),
        .reset(reset));
endmodule

module dcf_gen
   (\current_pos_reg[0]_0 ,
    LED_OBUF,
    CLK,
    E,
    SW_IBUF,
    reset,
    SR,
    \current_sample_reg[3]_0 );
  output \current_pos_reg[0]_0 ;
  output [0:0]LED_OBUF;
  input CLK;
  input [0:0]E;
  input [1:0]SW_IBUF;
  input reset;
  input [0:0]SR;
  input [0:0]\current_sample_reg[3]_0 ;

  wire CLK;
  wire [0:0]E;
  wire [0:0]LED_OBUF;
  wire [0:0]SR;
  wire [1:0]SW_IBUF;
  wire [5:0]current_pos;
  wire \current_pos[0]_i_1_n_0 ;
  wire [5:1]current_pos_0;
  wire \current_pos_reg[0]_0 ;
  wire \current_sample[0]_i_1_n_0 ;
  wire \current_sample[1]_i_1_n_0 ;
  wire \current_sample[2]_i_1_n_0 ;
  wire \current_sample[3]_i_2_n_0 ;
  wire [0:0]\current_sample_reg[3]_0 ;
  wire \current_sample_reg_n_0_[0] ;
  wire \current_sample_reg_n_0_[1] ;
  wire \current_sample_reg_n_0_[2] ;
  wire \current_sample_reg_n_0_[3] ;
  wire [3:0]current_time_reg;
  wire dcf_generated;
  wire dcf_i_1_n_0;
  wire dcf_i_2_n_0;
  wire dcf_i_3_n_0;
  wire dcf_i_4_n_0;
  wire dcf_i_5_n_0;
  wire [3:0]p_0_in;
  wire parity_i_10_n_0;
  wire parity_i_11_n_0;
  wire parity_i_12_n_0;
  wire parity_i_13_n_0;
  wire parity_i_14_n_0;
  wire parity_i_15_n_0;
  wire parity_i_16_n_0;
  wire parity_i_17_n_0;
  wire parity_i_18_n_0;
  wire parity_i_19_n_0;
  wire parity_i_1_n_0;
  wire parity_i_20_n_0;
  wire parity_i_21_n_0;
  wire parity_i_22_n_0;
  wire parity_i_23_n_0;
  wire parity_i_24_n_0;
  wire parity_i_25_n_0;
  wire parity_i_26_n_0;
  wire parity_i_27_n_0;
  wire parity_i_3_n_0;
  wire parity_i_4_n_0;
  wire parity_i_5_n_0;
  wire parity_i_6_n_0;
  wire parity_i_7_n_0;
  wire parity_i_8_n_0;
  wire parity_i_9_n_0;
  wire parity_reg_n_0;
  wire reset;
  wire reset_parity__10;

  LUT3 #(
    .INIT(8'h20)) 
    \LED_OBUF[1]_inst_i_1 
       (.I0(SW_IBUF[0]),
        .I1(SW_IBUF[1]),
        .I2(dcf_generated),
        .O(LED_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \current_pos[0]_i_1 
       (.I0(current_pos[0]),
        .O(\current_pos[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \current_pos[1]_i_1 
       (.I0(current_pos[0]),
        .I1(current_pos[1]),
        .O(current_pos_0[1]));
  LUT6 #(
    .INIT(64'h7078787878787878)) 
    \current_pos[2]_i_1 
       (.I0(current_pos[0]),
        .I1(current_pos[1]),
        .I2(current_pos[2]),
        .I3(current_pos[5]),
        .I4(current_pos[4]),
        .I5(current_pos[3]),
        .O(current_pos_0[2]));
  LUT6 #(
    .INIT(64'h777F7F7F80808080)) 
    \current_pos[3]_i_1 
       (.I0(current_pos[0]),
        .I1(current_pos[1]),
        .I2(current_pos[2]),
        .I3(current_pos[5]),
        .I4(current_pos[4]),
        .I5(current_pos[3]),
        .O(current_pos_0[3]));
  LUT6 #(
    .INIT(64'h777F8080FFFF0000)) 
    \current_pos[4]_i_1 
       (.I0(current_pos[0]),
        .I1(current_pos[1]),
        .I2(current_pos[2]),
        .I3(current_pos[5]),
        .I4(current_pos[4]),
        .I5(current_pos[3]),
        .O(current_pos_0[4]));
  LUT6 #(
    .INIT(64'h7780FF00FF00FF00)) 
    \current_pos[5]_i_1 
       (.I0(current_pos[0]),
        .I1(current_pos[1]),
        .I2(current_pos[2]),
        .I3(current_pos[5]),
        .I4(current_pos[4]),
        .I5(current_pos[3]),
        .O(current_pos_0[5]));
  FDSE #(
    .INIT(1'b0)) 
    \current_pos_reg[0] 
       (.C(CLK),
        .CE(SR),
        .D(\current_pos[0]_i_1_n_0 ),
        .Q(current_pos[0]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \current_pos_reg[1] 
       (.C(CLK),
        .CE(SR),
        .D(current_pos_0[1]),
        .Q(current_pos[1]),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \current_pos_reg[2] 
       (.C(CLK),
        .CE(SR),
        .D(current_pos_0[2]),
        .Q(current_pos[2]),
        .R(reset));
  FDSE #(
    .INIT(1'b0)) 
    \current_pos_reg[3] 
       (.C(CLK),
        .CE(SR),
        .D(current_pos_0[3]),
        .Q(current_pos[3]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \current_pos_reg[4] 
       (.C(CLK),
        .CE(SR),
        .D(current_pos_0[4]),
        .Q(current_pos[4]),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \current_pos_reg[5] 
       (.C(CLK),
        .CE(SR),
        .D(current_pos_0[5]),
        .Q(current_pos[5]),
        .S(reset));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \current_sample[0]_i_1 
       (.I0(\current_sample_reg_n_0_[1] ),
        .I1(\current_sample_reg_n_0_[2] ),
        .I2(\current_sample_reg_n_0_[3] ),
        .I3(\current_sample_reg_n_0_[0] ),
        .O(\current_sample[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0F70)) 
    \current_sample[1]_i_1 
       (.I0(\current_sample_reg_n_0_[3] ),
        .I1(\current_sample_reg_n_0_[2] ),
        .I2(\current_sample_reg_n_0_[1] ),
        .I3(\current_sample_reg_n_0_[0] ),
        .O(\current_sample[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h3C4C)) 
    \current_sample[2]_i_1 
       (.I0(\current_sample_reg_n_0_[3] ),
        .I1(\current_sample_reg_n_0_[2] ),
        .I2(\current_sample_reg_n_0_[1] ),
        .I3(\current_sample_reg_n_0_[0] ),
        .O(\current_sample[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6A2A)) 
    \current_sample[3]_i_2 
       (.I0(\current_sample_reg_n_0_[3] ),
        .I1(\current_sample_reg_n_0_[2] ),
        .I2(\current_sample_reg_n_0_[1] ),
        .I3(\current_sample_reg_n_0_[0] ),
        .O(\current_sample[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \current_sample[3]_i_3 
       (.I0(current_pos[0]),
        .I1(current_pos[1]),
        .I2(current_pos[2]),
        .I3(current_pos[5]),
        .I4(current_pos[4]),
        .I5(current_pos[3]),
        .O(\current_pos_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_sample_reg[0] 
       (.C(CLK),
        .CE(\current_sample_reg[3]_0 ),
        .D(\current_sample[0]_i_1_n_0 ),
        .Q(\current_sample_reg_n_0_[0] ),
        .R(reset));
  FDSE #(
    .INIT(1'b0)) 
    \current_sample_reg[1] 
       (.C(CLK),
        .CE(\current_sample_reg[3]_0 ),
        .D(\current_sample[1]_i_1_n_0 ),
        .Q(\current_sample_reg_n_0_[1] ),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \current_sample_reg[2] 
       (.C(CLK),
        .CE(\current_sample_reg[3]_0 ),
        .D(\current_sample[2]_i_1_n_0 ),
        .Q(\current_sample_reg_n_0_[2] ),
        .S(reset));
  FDSE #(
    .INIT(1'b0)) 
    \current_sample_reg[3] 
       (.C(CLK),
        .CE(\current_sample_reg[3]_0 ),
        .D(\current_sample[3]_i_2_n_0 ),
        .Q(\current_sample_reg_n_0_[3] ),
        .S(reset));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \current_time[0]_i_1 
       (.I0(current_time_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \current_time[1]_i_1 
       (.I0(current_time_reg[0]),
        .I1(current_time_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \current_time[2]_i_1 
       (.I0(current_time_reg[0]),
        .I1(current_time_reg[1]),
        .I2(current_time_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \current_time[3]_i_1 
       (.I0(current_time_reg[1]),
        .I1(current_time_reg[0]),
        .I2(current_time_reg[2]),
        .I3(current_time_reg[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \current_time_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[0]),
        .Q(current_time_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_time_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[1]),
        .Q(current_time_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_time_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[2]),
        .Q(current_time_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_time_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[3]),
        .Q(current_time_reg[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAAABFAAAAAAAA)) 
    dcf_i_1
       (.I0(dcf_i_2_n_0),
        .I1(dcf_i_3_n_0),
        .I2(dcf_i_4_n_0),
        .I3(parity_i_4_n_0),
        .I4(parity_i_3_n_0),
        .I5(current_time_reg[0]),
        .O(dcf_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    dcf_i_2
       (.I0(current_time_reg[3]),
        .I1(current_time_reg[2]),
        .I2(current_time_reg[1]),
        .I3(\current_pos_reg[0]_0 ),
        .O(dcf_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    dcf_i_3
       (.I0(current_pos[4]),
        .I1(current_pos[5]),
        .O(dcf_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFC8C00800)) 
    dcf_i_4
       (.I0(current_pos[1]),
        .I1(current_pos[2]),
        .I2(current_pos[3]),
        .I3(dcf_i_5_n_0),
        .I4(parity_i_14_n_0),
        .I5(parity_i_13_n_0),
        .O(dcf_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hF000AA01)) 
    dcf_i_5
       (.I0(\current_sample_reg_n_0_[1] ),
        .I1(\current_sample_reg_n_0_[0] ),
        .I2(\current_sample_reg_n_0_[2] ),
        .I3(\current_sample_reg_n_0_[3] ),
        .I4(current_pos[0]),
        .O(dcf_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dcf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(dcf_i_1_n_0),
        .Q(dcf_generated),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001FFFF55540000)) 
    parity_i_1
       (.I0(reset_parity__10),
        .I1(parity_i_3_n_0),
        .I2(parity_i_4_n_0),
        .I3(parity_i_5_n_0),
        .I4(parity_i_6_n_0),
        .I5(parity_reg_n_0),
        .O(parity_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000AAAA0000FCCC)) 
    parity_i_10
       (.I0(parity_i_21_n_0),
        .I1(parity_i_22_n_0),
        .I2(current_pos[1]),
        .I3(parity_i_23_n_0),
        .I4(current_pos[3]),
        .I5(current_pos[2]),
        .O(parity_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    parity_i_11
       (.I0(current_pos[3]),
        .I1(current_pos[2]),
        .I2(current_pos[4]),
        .O(parity_i_11_n_0));
  LUT6 #(
    .INIT(64'h00FF0000FFFC0100)) 
    parity_i_12
       (.I0(\current_sample_reg_n_0_[2] ),
        .I1(parity_i_24_n_0),
        .I2(\current_sample_reg_n_0_[3] ),
        .I3(current_pos[0]),
        .I4(current_pos[1]),
        .I5(parity_i_11_n_0),
        .O(parity_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00A00CA0)) 
    parity_i_13
       (.I0(parity_i_25_n_0),
        .I1(parity_i_26_n_0),
        .I2(current_pos[3]),
        .I3(current_pos[2]),
        .I4(current_pos[1]),
        .O(parity_i_13_n_0));
  LUT6 #(
    .INIT(64'h00F0FFAA000FCCCC)) 
    parity_i_14
       (.I0(parity_i_27_n_0),
        .I1(parity_reg_n_0),
        .I2(\current_sample_reg_n_0_[0] ),
        .I3(\current_sample_reg_n_0_[3] ),
        .I4(current_pos[1]),
        .I5(current_pos[0]),
        .O(parity_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    parity_i_15
       (.I0(current_pos[2]),
        .I1(current_pos[3]),
        .O(parity_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    parity_i_16
       (.I0(current_pos[1]),
        .I1(current_pos[2]),
        .I2(current_pos[3]),
        .I3(dcf_i_5_n_0),
        .O(parity_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    parity_i_17
       (.I0(\current_sample_reg_n_0_[1] ),
        .I1(\current_sample_reg_n_0_[0] ),
        .I2(\current_sample_reg_n_0_[2] ),
        .I3(\current_sample_reg_n_0_[3] ),
        .I4(parity_reg_n_0),
        .O(parity_i_17_n_0));
  LUT6 #(
    .INIT(64'hDDDD8283DDDD8288)) 
    parity_i_18
       (.I0(current_pos[1]),
        .I1(current_pos[0]),
        .I2(\current_sample_reg_n_0_[0] ),
        .I3(\current_sample_reg_n_0_[1] ),
        .I4(\current_sample_reg_n_0_[3] ),
        .I5(\current_sample_reg_n_0_[2] ),
        .O(parity_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h22202122)) 
    parity_i_19
       (.I0(current_pos[0]),
        .I1(\current_sample_reg_n_0_[3] ),
        .I2(\current_sample_reg_n_0_[0] ),
        .I3(\current_sample_reg_n_0_[1] ),
        .I4(\current_sample_reg_n_0_[2] ),
        .O(parity_i_19_n_0));
  LUT6 #(
    .INIT(64'h0003200000004000)) 
    parity_i_2
       (.I0(current_pos[3]),
        .I1(current_pos[0]),
        .I2(current_pos[1]),
        .I3(current_pos[5]),
        .I4(current_pos[2]),
        .I5(current_pos[4]),
        .O(reset_parity__10));
  LUT6 #(
    .INIT(64'h0011001100100011)) 
    parity_i_20
       (.I0(current_pos[1]),
        .I1(current_pos[2]),
        .I2(current_pos[0]),
        .I3(\current_sample_reg_n_0_[3] ),
        .I4(\current_sample_reg_n_0_[2] ),
        .I5(\current_sample_reg_n_0_[0] ),
        .O(parity_i_20_n_0));
  LUT6 #(
    .INIT(64'h00FF500000000004)) 
    parity_i_21
       (.I0(\current_sample_reg_n_0_[0] ),
        .I1(\current_sample_reg_n_0_[1] ),
        .I2(\current_sample_reg_n_0_[2] ),
        .I3(current_pos[1]),
        .I4(\current_sample_reg_n_0_[3] ),
        .I5(current_pos[0]),
        .O(parity_i_21_n_0));
  LUT6 #(
    .INIT(64'h0000000000CDFF00)) 
    parity_i_22
       (.I0(\current_sample_reg_n_0_[2] ),
        .I1(\current_sample_reg_n_0_[0] ),
        .I2(\current_sample_reg_n_0_[1] ),
        .I3(\current_sample_reg_n_0_[3] ),
        .I4(current_pos[0]),
        .I5(current_pos[1]),
        .O(parity_i_22_n_0));
  LUT6 #(
    .INIT(64'hFF0F000E00F0000E)) 
    parity_i_23
       (.I0(\current_sample_reg_n_0_[2] ),
        .I1(\current_sample_reg_n_0_[1] ),
        .I2(\current_sample_reg_n_0_[0] ),
        .I3(\current_sample_reg_n_0_[3] ),
        .I4(current_pos[0]),
        .I5(parity_reg_n_0),
        .O(parity_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    parity_i_24
       (.I0(\current_sample_reg_n_0_[0] ),
        .I1(\current_sample_reg_n_0_[1] ),
        .O(parity_i_24_n_0));
  LUT6 #(
    .INIT(64'h0F0F000005040F0E)) 
    parity_i_25
       (.I0(\current_sample_reg_n_0_[0] ),
        .I1(\current_sample_reg_n_0_[1] ),
        .I2(\current_sample_reg_n_0_[3] ),
        .I3(\current_sample_reg_n_0_[2] ),
        .I4(current_pos[0]),
        .I5(current_pos[1]),
        .O(parity_i_25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h5DDD7777)) 
    parity_i_26
       (.I0(current_pos[0]),
        .I1(\current_sample_reg_n_0_[0] ),
        .I2(\current_sample_reg_n_0_[2] ),
        .I3(\current_sample_reg_n_0_[1] ),
        .I4(\current_sample_reg_n_0_[3] ),
        .O(parity_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    parity_i_27
       (.I0(\current_sample_reg_n_0_[2] ),
        .I1(\current_sample_reg_n_0_[0] ),
        .I2(\current_sample_reg_n_0_[1] ),
        .O(parity_i_27_n_0));
  LUT6 #(
    .INIT(64'h8888888080808080)) 
    parity_i_3
       (.I0(current_pos[5]),
        .I1(parity_i_7_n_0),
        .I2(parity_i_8_n_0),
        .I3(parity_i_9_n_0),
        .I4(parity_i_10_n_0),
        .I5(parity_i_11_n_0),
        .O(parity_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    parity_i_4
       (.I0(current_pos[3]),
        .I1(current_pos[4]),
        .I2(current_pos[5]),
        .I3(parity_i_12_n_0),
        .O(parity_i_4_n_0));
  LUT6 #(
    .INIT(64'h4444444444404040)) 
    parity_i_5
       (.I0(current_pos[5]),
        .I1(current_pos[4]),
        .I2(parity_i_13_n_0),
        .I3(parity_i_14_n_0),
        .I4(parity_i_15_n_0),
        .I5(parity_i_16_n_0),
        .O(parity_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    parity_i_6
       (.I0(E),
        .I1(current_time_reg[0]),
        .I2(current_time_reg[1]),
        .I3(current_time_reg[3]),
        .I4(current_time_reg[2]),
        .O(parity_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hB)) 
    parity_i_7
       (.I0(current_pos[3]),
        .I1(current_pos[4]),
        .O(parity_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    parity_i_8
       (.I0(current_pos[2]),
        .I1(current_pos[4]),
        .I2(current_pos[0]),
        .I3(current_pos[1]),
        .I4(parity_i_17_n_0),
        .O(parity_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFB88800000000)) 
    parity_i_9
       (.I0(parity_i_18_n_0),
        .I1(current_pos[2]),
        .I2(current_pos[1]),
        .I3(parity_i_19_n_0),
        .I4(parity_i_20_n_0),
        .I5(current_pos[3]),
        .O(parity_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    parity_reg
       (.C(CLK),
        .CE(1'b1),
        .D(parity_i_1_n_0),
        .Q(parity_reg_n_0),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module hardware
   (GCLK,
    BTNC,
    BTNU,
    BTND,
    BTNL,
    BTNR,
    SW,
    LED,
    LCD_E,
    LCD_RW,
    LCD_RS,
    LCD_DATA);
  input GCLK;
  input BTNC;
  input BTNU;
  input BTND;
  input BTNL;
  input BTNR;
  input [7:0]SW;
  output [7:0]LED;
  output LCD_E;
  output LCD_RW;
  output LCD_RS;
  output [7:0]LCD_DATA;

  wire BTND;
  wire BTND_IBUF;
  wire GCLK;
  wire GCLK_IBUF;
  wire GCLK_IBUF_BUFG;
  wire [7:0]LCD_DATA;
  wire [6:0]LCD_DATA_OBUF;
  wire LCD_E;
  wire LCD_E_OBUF;
  wire LCD_RS;
  wire LCD_RS_OBUF;
  wire LCD_RW;
  wire [7:0]LED;
  wire [1:0]LED_OBUF;
  wire [7:0]SW;
  wire [1:0]SW_IBUF;
  wire clk;
  wire clk_BUFG;
  wire clock_gen_n_5;
  wire current_sample;
  wire dcf_gen_n_0;
  wire en_1;
  wire en_10;
  wire heartbeat;
  wire [3:0]plusOp;
  wire reset;
  wire \reset_counter[2]_i_1_n_0 ;
  wire [3:0]reset_counter_reg;
  wire reset_i_1_n_0;
  wire sel;
  wire top_n_1;

initial begin
 $sdf_annotate("lcd_controller_tb_time_synth.sdf",,,,"tool_control");
end
  IBUF BTND_IBUF_inst
       (.I(BTND),
        .O(BTND_IBUF));
  BUFG GCLK_IBUF_BUFG_inst
       (.I(GCLK_IBUF),
        .O(GCLK_IBUF_BUFG));
  IBUF GCLK_IBUF_inst
       (.I(GCLK),
        .O(GCLK_IBUF));
  OBUF \LCD_DATA_OBUF[0]_inst 
       (.I(LCD_DATA_OBUF[0]),
        .O(LCD_DATA[0]));
  OBUF \LCD_DATA_OBUF[1]_inst 
       (.I(LCD_DATA_OBUF[1]),
        .O(LCD_DATA[1]));
  OBUF \LCD_DATA_OBUF[2]_inst 
       (.I(LCD_DATA_OBUF[2]),
        .O(LCD_DATA[2]));
  OBUF \LCD_DATA_OBUF[3]_inst 
       (.I(LCD_DATA_OBUF[3]),
        .O(LCD_DATA[3]));
  OBUF \LCD_DATA_OBUF[4]_inst 
       (.I(LCD_DATA_OBUF[4]),
        .O(LCD_DATA[4]));
  OBUF \LCD_DATA_OBUF[5]_inst 
       (.I(LCD_DATA_OBUF[5]),
        .O(LCD_DATA[5]));
  OBUF \LCD_DATA_OBUF[6]_inst 
       (.I(LCD_DATA_OBUF[6]),
        .O(LCD_DATA[6]));
  OBUF \LCD_DATA_OBUF[7]_inst 
       (.I(1'b0),
        .O(LCD_DATA[7]));
  OBUF LCD_E_OBUF_inst
       (.I(LCD_E_OBUF),
        .O(LCD_E));
  OBUF LCD_RS_OBUF_inst
       (.I(LCD_RS_OBUF),
        .O(LCD_RS));
  OBUF LCD_RW_OBUF_inst
       (.I(1'b0),
        .O(LCD_RW));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \LED_OBUF[0]_inst_i_1 
       (.I0(SW_IBUF[0]),
        .I1(heartbeat),
        .O(LED_OBUF[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(1'b0),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(1'b0),
        .O(LED[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(1'b0),
        .O(LED[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(1'b0),
        .O(LED[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(1'b0),
        .O(LED[6]));
  OBUF \LED_OBUF[7]_inst 
       (.I(1'b0),
        .O(LED[7]));
  IBUF \SW_IBUF[0]_inst 
       (.I(SW[0]),
        .O(SW_IBUF[0]));
  IBUF \SW_IBUF[1]_inst 
       (.I(SW[1]),
        .O(SW_IBUF[1]));
  BUFG clk_BUFG_inst
       (.I(clk),
        .O(clk_BUFG));
  clock_gen clock_gen
       (.E(en_10),
        .GCLK_IBUF_BUFG(GCLK_IBUF_BUFG),
        .LCD_E(top_n_1),
        .LCD_E_OBUF(LCD_E_OBUF),
        .SR(en_1),
        .clk(clk),
        .clk_BUFG(clk_BUFG),
        .\current_sample_reg[3] (dcf_gen_n_0),
        .en_1_reg_0(current_sample),
        .en_1_reg_1(clock_gen_n_5),
        .heartbeat(heartbeat),
        .reset(reset));
  dcf_gen dcf_gen
       (.CLK(clk_BUFG),
        .E(en_10),
        .LED_OBUF(LED_OBUF[1]),
        .SR(en_1),
        .SW_IBUF(SW_IBUF),
        .\current_pos_reg[0]_0 (dcf_gen_n_0),
        .\current_sample_reg[3]_0 (current_sample),
        .reset(reset));
  FDRE #(
    .INIT(1'b0)) 
    heartbeat_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(clock_gen_n_5),
        .Q(heartbeat),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \reset_counter[0]_i_1 
       (.I0(reset_counter_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reset_counter[1]_i_1 
       (.I0(reset_counter_reg[0]),
        .I1(reset_counter_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \reset_counter[2]_i_1 
       (.I0(reset_counter_reg[0]),
        .I1(reset_counter_reg[1]),
        .I2(reset_counter_reg[2]),
        .O(\reset_counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \reset_counter[3]_i_1 
       (.I0(reset_counter_reg[0]),
        .I1(reset_counter_reg[1]),
        .I2(reset_counter_reg[3]),
        .I3(reset_counter_reg[2]),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \reset_counter[3]_i_2 
       (.I0(reset_counter_reg[1]),
        .I1(reset_counter_reg[0]),
        .I2(reset_counter_reg[2]),
        .I3(reset_counter_reg[3]),
        .O(plusOp[3]));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[0] 
       (.C(clk_BUFG),
        .CE(sel),
        .D(plusOp[0]),
        .Q(reset_counter_reg[0]),
        .R(BTND_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[1] 
       (.C(clk_BUFG),
        .CE(sel),
        .D(plusOp[1]),
        .Q(reset_counter_reg[1]),
        .R(BTND_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[2] 
       (.C(clk_BUFG),
        .CE(sel),
        .D(\reset_counter[2]_i_1_n_0 ),
        .Q(reset_counter_reg[2]),
        .R(BTND_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[3] 
       (.C(clk_BUFG),
        .CE(sel),
        .D(plusOp[3]),
        .Q(reset_counter_reg[3]),
        .R(BTND_IBUF));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    reset_i_1
       (.I0(reset_counter_reg[2]),
        .I1(reset_counter_reg[3]),
        .I2(reset_counter_reg[1]),
        .I3(reset_counter_reg[0]),
        .I4(BTND_IBUF),
        .O(reset_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    reset_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(reset_i_1_n_0),
        .Q(reset),
        .R(1'b0));
  top top
       (.CLK(clk_BUFG),
        .LCD_DATA_OBUF(LCD_DATA_OBUF),
        .LCD_RS_OBUF(LCD_RS_OBUF),
        .enable_enable_reg(top_n_1),
        .reset(reset));
endmodule

module lcd_controller
   (LCD_RS_OBUF,
    enable_enable_reg_0,
    LCD_DATA_OBUF,
    CLK,
    reset);
  output LCD_RS_OBUF;
  output enable_enable_reg_0;
  output [6:0]LCD_DATA_OBUF;
  input CLK;
  input reset;

  wire CLK;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[2] ;
  wire [6:0]LCD_DATA_OBUF;
  wire \LCD_DATA_OBUF[1]_inst_i_2_n_0 ;
  wire \LCD_DATA_OBUF[1]_inst_i_3_n_0 ;
  wire \LCD_DATA_OBUF[2]_inst_i_2_n_0 ;
  wire \LCD_DATA_OBUF[3]_inst_i_2_n_0 ;
  wire \LCD_DATA_OBUF[4]_inst_i_2_n_0 ;
  wire \LCD_DATA_OBUF[5]_inst_i_2_n_0 ;
  wire \LCD_DATA_OBUF[6]_inst_i_2_n_0 ;
  wire LCD_RS_OBUF;
  wire enable_enable_i_1_n_0;
  wire enable_enable_i_2_n_0;
  wire enable_enable_i_3_n_0;
  wire enable_enable_i_4_n_0;
  wire enable_enable_i_5_n_0;
  wire enable_enable_i_6_n_0;
  wire enable_enable_reg_0;
  wire [4:4]in8;
  wire lcd_rs_reg_i_1_n_0;
  wire \read_addr[0]_i_1_n_0 ;
  wire \read_addr[1]_i_1_n_0 ;
  wire \read_addr[2]_i_1_n_0 ;
  wire \read_addr[3]_i_1_n_0 ;
  wire \read_addr[3]_i_2_n_0 ;
  wire \read_addr[4]_i_1_n_0 ;
  wire \read_addr[5]_i_1_n_0 ;
  wire \read_addr[6]_i_1_n_0 ;
  wire \read_addr[7]_i_1_n_0 ;
  wire \read_addr[7]_i_2_n_0 ;
  wire \read_addr[7]_i_3_n_0 ;
  wire \read_addr[7]_i_4_n_0 ;
  wire \read_addr_reg_n_0_[0] ;
  wire \read_addr_reg_n_0_[1] ;
  wire \read_addr_reg_n_0_[2] ;
  wire \read_addr_reg_n_0_[3] ;
  wire \read_addr_reg_n_0_[4] ;
  wire \read_addr_reg_n_0_[5] ;
  wire \read_addr_reg_n_0_[6] ;
  wire \read_addr_reg_n_0_[7] ;
  wire reset;
  wire [1:0]state__0;

  LUT6 #(
    .INIT(64'hFFFFFFFFE2E2EEE2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(state__0[1]),
        .I5(reset),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state[0]_i_3_n_0 ),
        .I1(\LCD_DATA_OBUF[1]_inst_i_2_n_0 ),
        .I2(\FSM_sequential_state[0]_i_4_n_0 ),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(state__0[0]),
        .I5(\read_addr_reg_n_0_[5] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\read_addr_reg_n_0_[3] ),
        .I1(\read_addr_reg_n_0_[2] ),
        .I2(\read_addr_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\read_addr_reg_n_0_[0] ),
        .I1(\read_addr_reg_n_0_[4] ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h0000666E)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(reset),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00006222)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[2] ),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(reset),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02FF02FF02FF0200)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\read_addr_reg_n_0_[6] ),
        .I1(\read_addr_reg_n_0_[7] ),
        .I2(state__0[1]),
        .I3(\read_addr_reg_n_0_[4] ),
        .I4(\read_addr_reg_n_0_[5] ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\read_addr_reg_n_0_[2] ),
        .I1(\read_addr_reg_n_0_[3] ),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\read_addr_reg_n_0_[1] ),
        .I1(\read_addr_reg_n_0_[0] ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,set_init:001,init:010,set_mode:011,display_time:101,display_date:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:000,set_init:001,init:010,set_mode:011,display_time:101,display_date:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:000,set_init:001,init:010,set_mode:011,display_time:101,display_date:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000011009700)) 
    \LCD_DATA_OBUF[1]_inst_i_1 
       (.I0(\read_addr_reg_n_0_[1] ),
        .I1(\read_addr_reg_n_0_[3] ),
        .I2(\read_addr_reg_n_0_[2] ),
        .I3(\LCD_DATA_OBUF[1]_inst_i_2_n_0 ),
        .I4(\read_addr_reg_n_0_[4] ),
        .I5(\LCD_DATA_OBUF[1]_inst_i_3_n_0 ),
        .O(LCD_DATA_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \LCD_DATA_OBUF[1]_inst_i_2 
       (.I0(\read_addr_reg_n_0_[7] ),
        .I1(\read_addr_reg_n_0_[6] ),
        .O(\LCD_DATA_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCFDCF67FFF7FCFD)) 
    \LCD_DATA_OBUF[1]_inst_i_3 
       (.I0(\read_addr_reg_n_0_[0] ),
        .I1(\read_addr_reg_n_0_[2] ),
        .I2(\read_addr_reg_n_0_[3] ),
        .I3(\read_addr_reg_n_0_[1] ),
        .I4(\read_addr_reg_n_0_[4] ),
        .I5(\read_addr_reg_n_0_[5] ),
        .O(\LCD_DATA_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h080A888A282A282A)) 
    \LCD_DATA_OBUF[2]_inst_i_1 
       (.I0(\LCD_DATA_OBUF[2]_inst_i_2_n_0 ),
        .I1(\read_addr_reg_n_0_[0] ),
        .I2(\read_addr_reg_n_0_[2] ),
        .I3(\read_addr_reg_n_0_[4] ),
        .I4(\read_addr_reg_n_0_[1] ),
        .I5(\read_addr_reg_n_0_[3] ),
        .O(LCD_DATA_OBUF[2]));
  LUT6 #(
    .INIT(64'h00028000000A0008)) 
    \LCD_DATA_OBUF[2]_inst_i_2 
       (.I0(\LCD_DATA_OBUF[1]_inst_i_2_n_0 ),
        .I1(\read_addr_reg_n_0_[1] ),
        .I2(\read_addr_reg_n_0_[5] ),
        .I3(\read_addr_reg_n_0_[3] ),
        .I4(\read_addr_reg_n_0_[4] ),
        .I5(\read_addr_reg_n_0_[2] ),
        .O(\LCD_DATA_OBUF[2]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \LCD_DATA_OBUF[3]_inst_i_1 
       (.I0(\read_addr_reg_n_0_[6] ),
        .I1(\read_addr_reg_n_0_[7] ),
        .I2(\LCD_DATA_OBUF[3]_inst_i_2_n_0 ),
        .O(LCD_DATA_OBUF[3]));
  LUT6 #(
    .INIT(64'h0110014001000018)) 
    \LCD_DATA_OBUF[3]_inst_i_2 
       (.I0(\read_addr_reg_n_0_[3] ),
        .I1(\read_addr_reg_n_0_[5] ),
        .I2(\read_addr_reg_n_0_[2] ),
        .I3(\read_addr_reg_n_0_[1] ),
        .I4(\read_addr_reg_n_0_[4] ),
        .I5(\read_addr_reg_n_0_[0] ),
        .O(\LCD_DATA_OBUF[3]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \LCD_DATA_OBUF[4]_inst_i_1 
       (.I0(\read_addr_reg_n_0_[6] ),
        .I1(\read_addr_reg_n_0_[7] ),
        .I2(\LCD_DATA_OBUF[4]_inst_i_2_n_0 ),
        .O(LCD_DATA_OBUF[4]));
  LUT6 #(
    .INIT(64'h23373C0C333C2DBC)) 
    \LCD_DATA_OBUF[4]_inst_i_2 
       (.I0(\read_addr_reg_n_0_[0] ),
        .I1(\read_addr_reg_n_0_[5] ),
        .I2(\read_addr_reg_n_0_[4] ),
        .I3(\read_addr_reg_n_0_[2] ),
        .I4(\read_addr_reg_n_0_[3] ),
        .I5(\read_addr_reg_n_0_[1] ),
        .O(\LCD_DATA_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h222822280A282828)) 
    \LCD_DATA_OBUF[5]_inst_i_1 
       (.I0(\LCD_DATA_OBUF[5]_inst_i_2_n_0 ),
        .I1(\read_addr_reg_n_0_[2] ),
        .I2(\read_addr_reg_n_0_[3] ),
        .I3(\read_addr_reg_n_0_[1] ),
        .I4(\read_addr_reg_n_0_[0] ),
        .I5(\read_addr_reg_n_0_[4] ),
        .O(LCD_DATA_OBUF[5]));
  LUT5 #(
    .INIT(32'h00000046)) 
    \LCD_DATA_OBUF[5]_inst_i_2 
       (.I0(\read_addr_reg_n_0_[4] ),
        .I1(\read_addr_reg_n_0_[5] ),
        .I2(\read_addr_reg_n_0_[3] ),
        .I3(\read_addr_reg_n_0_[6] ),
        .I4(\read_addr_reg_n_0_[7] ),
        .O(\LCD_DATA_OBUF[5]_inst_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \LCD_DATA_OBUF[6]_inst_i_1 
       (.I0(\read_addr_reg_n_0_[6] ),
        .I1(\read_addr_reg_n_0_[7] ),
        .I2(\LCD_DATA_OBUF[6]_inst_i_2_n_0 ),
        .O(LCD_DATA_OBUF[6]));
  LUT6 #(
    .INIT(64'h0010000000308060)) 
    \LCD_DATA_OBUF[6]_inst_i_2 
       (.I0(\read_addr_reg_n_0_[1] ),
        .I1(\read_addr_reg_n_0_[2] ),
        .I2(\read_addr_reg_n_0_[4] ),
        .I3(\read_addr_reg_n_0_[3] ),
        .I4(\read_addr_reg_n_0_[0] ),
        .I5(\read_addr_reg_n_0_[5] ),
        .O(\LCD_DATA_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFAAEAF0E0AAEA0)) 
    enable_enable_i_1
       (.I0(enable_enable_i_2_n_0),
        .I1(enable_enable_i_3_n_0),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(\FSM_sequential_state_reg_n_0_[2] ),
        .I5(enable_enable_reg_0),
        .O(enable_enable_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000FB)) 
    enable_enable_i_2
       (.I0(enable_enable_i_4_n_0),
        .I1(\read_addr_reg_n_0_[6] ),
        .I2(\read_addr_reg_n_0_[7] ),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(enable_enable_i_5_n_0),
        .O(enable_enable_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    enable_enable_i_3
       (.I0(\read_addr_reg_n_0_[0] ),
        .I1(\read_addr_reg_n_0_[1] ),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(enable_enable_i_6_n_0),
        .I4(\read_addr_reg_n_0_[7] ),
        .I5(\read_addr_reg_n_0_[6] ),
        .O(enable_enable_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    enable_enable_i_4
       (.I0(\read_addr_reg_n_0_[4] ),
        .I1(\read_addr_reg_n_0_[5] ),
        .I2(\read_addr_reg_n_0_[2] ),
        .I3(\read_addr_reg_n_0_[3] ),
        .I4(\read_addr_reg_n_0_[1] ),
        .I5(\read_addr_reg_n_0_[0] ),
        .O(enable_enable_i_4_n_0));
  LUT6 #(
    .INIT(64'h5555555155555555)) 
    enable_enable_i_5
       (.I0(\FSM_sequential_state_reg_n_0_[2] ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_state[0]_i_4_n_0 ),
        .I3(\read_addr_reg_n_0_[5] ),
        .I4(state__0[0]),
        .I5(\LCD_DATA_OBUF[1]_inst_i_2_n_0 ),
        .O(enable_enable_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    enable_enable_i_6
       (.I0(\read_addr_reg_n_0_[4] ),
        .I1(\read_addr_reg_n_0_[5] ),
        .O(enable_enable_i_6_n_0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    enable_enable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(enable_enable_i_1_n_0),
        .Q(enable_enable_reg_0),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    lcd_rs_reg
       (.CLR(1'b0),
        .D(\FSM_sequential_state_reg_n_0_[2] ),
        .G(lcd_rs_reg_i_1_n_0),
        .GE(1'b1),
        .Q(LCD_RS_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    lcd_rs_reg_i_1
       (.I0(\FSM_sequential_state_reg_n_0_[2] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(lcd_rs_reg_i_1_n_0));
  ram ram_inst
       (.CLK(CLK),
        .LCD_DATA_OBUF(LCD_DATA_OBUF[0]),
        .\LCD_DATA_OBUF[0]_inst_i_3_0 (\LCD_DATA_OBUF[1]_inst_i_2_n_0 ),
        .Q({\read_addr_reg_n_0_[7] ,\read_addr_reg_n_0_[6] ,\read_addr_reg_n_0_[5] ,\read_addr_reg_n_0_[4] ,\read_addr_reg_n_0_[3] ,\read_addr_reg_n_0_[2] ,\read_addr_reg_n_0_[1] ,\read_addr_reg_n_0_[0] }),
        .reset(reset));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0057)) 
    \read_addr[0]_i_1 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state__0[0]),
        .I3(\read_addr_reg_n_0_[0] ),
        .O(\read_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h30777730)) 
    \read_addr[1]_i_1 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state__0[0]),
        .I3(\read_addr_reg_n_0_[1] ),
        .I4(\read_addr_reg_n_0_[0] ),
        .O(\read_addr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h001F1F1F1F000000)) 
    \read_addr[2]_i_1 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state__0[1]),
        .I3(\read_addr_reg_n_0_[0] ),
        .I4(\read_addr_reg_n_0_[1] ),
        .I5(\read_addr_reg_n_0_[2] ),
        .O(\read_addr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3077773077307730)) 
    \read_addr[3]_i_1 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state__0[0]),
        .I3(\read_addr_reg_n_0_[3] ),
        .I4(\read_addr_reg_n_0_[2] ),
        .I5(\read_addr[3]_i_2_n_0 ),
        .O(\read_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_addr[3]_i_2 
       (.I0(\read_addr_reg_n_0_[1] ),
        .I1(\read_addr_reg_n_0_[0] ),
        .O(\read_addr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h3073)) 
    \read_addr[4]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(in8),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .O(\read_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_addr[4]_i_2 
       (.I0(\read_addr_reg_n_0_[2] ),
        .I1(\read_addr_reg_n_0_[0] ),
        .I2(\read_addr_reg_n_0_[1] ),
        .I3(\read_addr_reg_n_0_[3] ),
        .I4(\read_addr_reg_n_0_[4] ),
        .O(in8));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h1115222A)) 
    \read_addr[5]_i_1 
       (.I0(\read_addr[7]_i_3_n_0 ),
        .I1(state__0[1]),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(state__0[0]),
        .I4(\read_addr_reg_n_0_[5] ),
        .O(\read_addr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0333300037777333)) 
    \read_addr[6]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\read_addr[7]_i_3_n_0 ),
        .I3(\read_addr_reg_n_0_[5] ),
        .I4(\read_addr_reg_n_0_[6] ),
        .I5(\FSM_sequential_state_reg_n_0_[2] ),
        .O(\read_addr[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h14)) 
    \read_addr[7]_i_1 
       (.I0(reset),
        .I1(state__0[1]),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .O(\read_addr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \read_addr[7]_i_2 
       (.I0(\read_addr_reg_n_0_[6] ),
        .I1(\read_addr[7]_i_3_n_0 ),
        .I2(\read_addr_reg_n_0_[5] ),
        .I3(\read_addr[7]_i_4_n_0 ),
        .I4(\read_addr_reg_n_0_[7] ),
        .O(\read_addr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \read_addr[7]_i_3 
       (.I0(\read_addr_reg_n_0_[4] ),
        .I1(\read_addr_reg_n_0_[2] ),
        .I2(\read_addr_reg_n_0_[0] ),
        .I3(\read_addr_reg_n_0_[1] ),
        .I4(\read_addr_reg_n_0_[3] ),
        .O(\read_addr[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \read_addr[7]_i_4 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state__0[1]),
        .O(\read_addr[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[0] 
       (.C(CLK),
        .CE(\read_addr[7]_i_1_n_0 ),
        .D(\read_addr[0]_i_1_n_0 ),
        .Q(\read_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[1] 
       (.C(CLK),
        .CE(\read_addr[7]_i_1_n_0 ),
        .D(\read_addr[1]_i_1_n_0 ),
        .Q(\read_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[2] 
       (.C(CLK),
        .CE(\read_addr[7]_i_1_n_0 ),
        .D(\read_addr[2]_i_1_n_0 ),
        .Q(\read_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[3] 
       (.C(CLK),
        .CE(\read_addr[7]_i_1_n_0 ),
        .D(\read_addr[3]_i_1_n_0 ),
        .Q(\read_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[4] 
       (.C(CLK),
        .CE(\read_addr[7]_i_1_n_0 ),
        .D(\read_addr[4]_i_1_n_0 ),
        .Q(\read_addr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[5] 
       (.C(CLK),
        .CE(\read_addr[7]_i_1_n_0 ),
        .D(\read_addr[5]_i_1_n_0 ),
        .Q(\read_addr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[6] 
       (.C(CLK),
        .CE(\read_addr[7]_i_1_n_0 ),
        .D(\read_addr[6]_i_1_n_0 ),
        .Q(\read_addr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[7] 
       (.C(CLK),
        .CE(\read_addr[7]_i_1_n_0 ),
        .D(\read_addr[7]_i_2_n_0 ),
        .Q(\read_addr_reg_n_0_[7] ),
        .R(1'b0));
endmodule

module ram
   (LCD_DATA_OBUF,
    CLK,
    Q,
    \LCD_DATA_OBUF[0]_inst_i_3_0 ,
    reset);
  output [0:0]LCD_DATA_OBUF;
  input CLK;
  input [7:0]Q;
  input \LCD_DATA_OBUF[0]_inst_i_3_0 ;
  input reset;

  wire CLK;
  wire [0:0]LCD_DATA_OBUF;
  wire \LCD_DATA_OBUF[0]_inst_i_2_n_0 ;
  wire \LCD_DATA_OBUF[0]_inst_i_3_0 ;
  wire \LCD_DATA_OBUF[0]_inst_i_3_n_0 ;
  wire \LCD_DATA_OBUF[0]_inst_i_4_n_0 ;
  wire [7:0]Q;
  wire \ram[45][0]_i_1_n_0 ;
  wire \ram[46][0]_i_1_n_0 ;
  wire [0:0]\ram_reg[45] ;
  wire [0:0]\ram_reg[46] ;
  wire reset;

  LUT6 #(
    .INIT(64'hFFFFFFFF40200000)) 
    \LCD_DATA_OBUF[0]_inst_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(Q[2]),
        .I4(\LCD_DATA_OBUF[0]_inst_i_2_n_0 ),
        .I5(\LCD_DATA_OBUF[0]_inst_i_3_n_0 ),
        .O(LCD_DATA_OBUF));
  LUT6 #(
    .INIT(64'h0202000000030000)) 
    \LCD_DATA_OBUF[0]_inst_i_2 
       (.I0(\ram_reg[45] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\LCD_DATA_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0082002080000002)) 
    \LCD_DATA_OBUF[0]_inst_i_3 
       (.I0(\LCD_DATA_OBUF[0]_inst_i_4_n_0 ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\LCD_DATA_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000A2A2A200A2A2)) 
    \LCD_DATA_OBUF[0]_inst_i_4 
       (.I0(\LCD_DATA_OBUF[0]_inst_i_3_0 ),
        .I1(Q[5]),
        .I2(\ram_reg[46] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\LCD_DATA_OBUF[0]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \ram[45][0]_i_1 
       (.I0(reset),
        .I1(\ram_reg[45] ),
        .O(\ram[45][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ram[46][0]_i_1 
       (.I0(\ram_reg[46] ),
        .I1(reset),
        .O(\ram[46][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[45][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ram[45][0]_i_1_n_0 ),
        .Q(\ram_reg[45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[46][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ram[46][0]_i_1_n_0 ),
        .Q(\ram_reg[46] ),
        .R(1'b0));
endmodule

module top
   (LCD_RS_OBUF,
    enable_enable_reg,
    LCD_DATA_OBUF,
    CLK,
    reset);
  output LCD_RS_OBUF;
  output enable_enable_reg;
  output [6:0]LCD_DATA_OBUF;
  input CLK;
  input reset;

  wire CLK;
  wire [6:0]LCD_DATA_OBUF;
  wire LCD_RS_OBUF;
  wire enable_enable_reg;
  wire reset;

  clock_module clock_module
       (.CLK(CLK),
        .LCD_DATA_OBUF(LCD_DATA_OBUF),
        .LCD_RS_OBUF(LCD_RS_OBUF),
        .enable_enable_reg(enable_enable_reg),
        .reset(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
