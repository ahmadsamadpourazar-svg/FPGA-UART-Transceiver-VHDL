----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2026 01:22:18 PM
-- Design Name: 
-- Module Name: TB_ECHO - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_ECHO is
--  Port ( );
end TB_ECHO;

architecture Behavioral of TB_ECHO is

    constant CLK_PERIOD : time := 41.666 ns;   -- 24 MHz
    constant BIT_TIME   : time := 104.166 us;  -- 9600 baud

    signal clk : std_logic := '0';
    signal rx  : std_logic := '1';
    signal tx  : std_logic ;
    

    component ECHO
        port (
            clock         : in  std_logic;
            serial_in     : in  std_logic;
            serial_out    : out std_logic
        );
    end component;

begin
  
  tx <= rx;

    uut: ECHO  port map (
            clock       => clk,
            serial_in   => rx,
            serial_out  => tx
        );
        tx <= rx;
    -- Clock generation
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Stimulus
    stim_process : process
    begin
        -- UART line idle
        rx <= '1';
        wait for 200 us;

        -- Send 0x55 = 01010101 (LSB first)
        rx <= '0';  wait for BIT_TIME;  -- start bit
        rx <= '1';  wait for BIT_TIME;  -- bit0
        rx <= '0';  wait for BIT_TIME;  -- bit1
        rx <= '1';  wait for BIT_TIME;  -- bit2
        rx <= '0';  wait for BIT_TIME;  -- bit3
        rx <= '1';  wait for BIT_TIME;  -- bit4
        rx <= '0';  wait for BIT_TIME;  -- bit5
        rx <= '1';  wait for BIT_TIME;  -- bit6
        rx <= '0';  wait for BIT_TIME;  -- bit7
        rx <= '1';  wait for BIT_TIME;  -- stop bit


    end process;


end Behavioral;








