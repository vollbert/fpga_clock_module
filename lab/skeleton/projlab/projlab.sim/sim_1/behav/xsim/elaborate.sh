#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Jul 08 14:58:44 CEST 2024
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 31bef746fe0249eea5f7bea39abcd7a5 --incr --debug typical --relax --mt 8 -L MFclock -L xil_defaultlib -L secureip --snapshot lcd_controller_tb_behav xil_defaultlib.lcd_controller_tb -log elaborate.log"
xelab -wto 31bef746fe0249eea5f7bea39abcd7a5 --incr --debug typical --relax --mt 8 -L MFclock -L xil_defaultlib -L secureip --snapshot lcd_controller_tb_behav xil_defaultlib.lcd_controller_tb -log elaborate.log

