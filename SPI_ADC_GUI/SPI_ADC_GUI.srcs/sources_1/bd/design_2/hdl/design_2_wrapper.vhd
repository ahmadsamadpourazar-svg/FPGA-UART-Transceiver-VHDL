--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Wed Jun 17 23:59:14 2026
--Host        : DESKTOP-4P07GVT running 64-bit major release  (build 9200)
--Command     : generate_target design_2_wrapper.bd
--Design      : design_2_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_wrapper is
  port (
    cfgclk_0 : out STD_LOGIC;
    cfgmclk_0 : out STD_LOGIC;
    diff_clock_rtl_0_clk_n : in STD_LOGIC;
    diff_clock_rtl_0_clk_p : in STD_LOGIC;
    eos_0 : out STD_LOGIC;
    interrupt_0 : out STD_LOGIC;
    io0_i_0 : in STD_LOGIC;
    io0_o_0 : out STD_LOGIC;
    io0_t_0 : out STD_LOGIC;
    io1_i_0 : in STD_LOGIC;
    io1_o_0 : out STD_LOGIC;
    io1_t_0 : out STD_LOGIC;
    ip2intc_irpt_0 : out STD_LOGIC;
    preq_0 : out STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC;
    reset_rtl_0_0 : in STD_LOGIC;
    rsta_busy_0 : out STD_LOGIC;
    rsta_busy_1 : out STD_LOGIC;
    rx_0 : in STD_LOGIC;
    ss_i_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t_0 : out STD_LOGIC;
    tx_0 : out STD_LOGIC
  );
end design_2_wrapper;

architecture STRUCTURE of design_2_wrapper is
  component design_2 is
  port (
    diff_clock_rtl_0_clk_n : in STD_LOGIC;
    diff_clock_rtl_0_clk_p : in STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC;
    reset_rtl_0_0 : in STD_LOGIC;
    ip2intc_irpt_0 : out STD_LOGIC;
    cfgclk_0 : out STD_LOGIC;
    cfgmclk_0 : out STD_LOGIC;
    eos_0 : out STD_LOGIC;
    preq_0 : out STD_LOGIC;
    io0_i_0 : in STD_LOGIC;
    io0_o_0 : out STD_LOGIC;
    io0_t_0 : out STD_LOGIC;
    io1_i_0 : in STD_LOGIC;
    io1_o_0 : out STD_LOGIC;
    io1_t_0 : out STD_LOGIC;
    ss_i_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t_0 : out STD_LOGIC;
    rx_0 : in STD_LOGIC;
    tx_0 : out STD_LOGIC;
    interrupt_0 : out STD_LOGIC;
    rsta_busy_0 : out STD_LOGIC;
    rsta_busy_1 : out STD_LOGIC
  );
  end component design_2;
begin
design_2_i: component design_2
     port map (
      cfgclk_0 => cfgclk_0,
      cfgmclk_0 => cfgmclk_0,
      diff_clock_rtl_0_clk_n => diff_clock_rtl_0_clk_n,
      diff_clock_rtl_0_clk_p => diff_clock_rtl_0_clk_p,
      eos_0 => eos_0,
      interrupt_0 => interrupt_0,
      io0_i_0 => io0_i_0,
      io0_o_0 => io0_o_0,
      io0_t_0 => io0_t_0,
      io1_i_0 => io1_i_0,
      io1_o_0 => io1_o_0,
      io1_t_0 => io1_t_0,
      ip2intc_irpt_0 => ip2intc_irpt_0,
      preq_0 => preq_0,
      reset_rtl_0 => reset_rtl_0,
      reset_rtl_0_0 => reset_rtl_0_0,
      rsta_busy_0 => rsta_busy_0,
      rsta_busy_1 => rsta_busy_1,
      rx_0 => rx_0,
      ss_i_0(0) => ss_i_0(0),
      ss_o_0(0) => ss_o_0(0),
      ss_t_0 => ss_t_0,
      tx_0 => tx_0
    );
end STRUCTURE;
