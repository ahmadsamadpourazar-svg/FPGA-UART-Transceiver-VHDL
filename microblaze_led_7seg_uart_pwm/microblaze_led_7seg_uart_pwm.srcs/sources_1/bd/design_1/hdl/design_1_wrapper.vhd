--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Wed Jun 17 18:03:22 2026
--Host        : DESKTOP-4P07GVT running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    diff_clock_rtl_0_clk_n : in STD_LOGIC;
    diff_clock_rtl_0_clk_p : in STD_LOGIC;
    gpio2_io_i_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_i_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_io_i_1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_io_i_2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_io_i_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    interrupt_0 : out STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC;
    reset_rtl_0_0 : in STD_LOGIC;
    rx_0 : in STD_LOGIC;
    tx_0 : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    diff_clock_rtl_0_clk_n : in STD_LOGIC;
    diff_clock_rtl_0_clk_p : in STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC;
    reset_rtl_0_0 : in STD_LOGIC;
    gpio_io_i_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_io_i_1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_io_i_2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_0 : in STD_LOGIC;
    tx_0 : out STD_LOGIC;
    interrupt_0 : out STD_LOGIC;
    gpio_io_i_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio2_io_i_0 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      diff_clock_rtl_0_clk_n => diff_clock_rtl_0_clk_n,
      diff_clock_rtl_0_clk_p => diff_clock_rtl_0_clk_p,
      gpio2_io_i_0(3 downto 0) => gpio2_io_i_0(3 downto 0),
      gpio_io_i_0(7 downto 0) => gpio_io_i_0(7 downto 0),
      gpio_io_i_1(7 downto 0) => gpio_io_i_1(7 downto 0),
      gpio_io_i_2(7 downto 0) => gpio_io_i_2(7 downto 0),
      gpio_io_i_3(3 downto 0) => gpio_io_i_3(3 downto 0),
      interrupt_0 => interrupt_0,
      reset_rtl_0 => reset_rtl_0,
      reset_rtl_0_0 => reset_rtl_0_0,
      rx_0 => rx_0,
      tx_0 => tx_0
    );
end STRUCTURE;
