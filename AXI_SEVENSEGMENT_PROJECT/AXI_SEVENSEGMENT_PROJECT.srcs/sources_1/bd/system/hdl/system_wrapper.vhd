--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Wed Jun 17 15:25:07 2026
--Host        : DESKTOP-4P07GVT running 64-bit major release  (build 9200)
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
    an_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    diff_clock_rtl_0_clk_n : in STD_LOGIC;
    diff_clock_rtl_0_clk_p : in STD_LOGIC;
    dp_0 : out STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC;
    reset_rtl_0_0 : in STD_LOGIC;
    seg_0 : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    diff_clock_rtl_0_clk_n : in STD_LOGIC;
    diff_clock_rtl_0_clk_p : in STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC;
    reset_rtl_0_0 : in STD_LOGIC;
    seg_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dp_0 : out STD_LOGIC
  );
  end component system;
begin
system_i: component system
     port map (
      an_0(3 downto 0) => an_0(3 downto 0),
      diff_clock_rtl_0_clk_n => diff_clock_rtl_0_clk_n,
      diff_clock_rtl_0_clk_p => diff_clock_rtl_0_clk_p,
      dp_0 => dp_0,
      reset_rtl_0 => reset_rtl_0,
      reset_rtl_0_0 => reset_rtl_0_0,
      seg_0(6 downto 0) => seg_0(6 downto 0)
    );
end STRUCTURE;
