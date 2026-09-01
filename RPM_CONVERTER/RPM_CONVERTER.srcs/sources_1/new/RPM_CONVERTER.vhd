----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2026 11:39:40 PM
-- Design Name: 
-- Module Name: RPM_CONVERTER - Behavioral
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

entity RPM_CONVERTER is
    generic (
        CLK_FREQ_HZ : integer := 24000000;
        WINDOW_MS   : integer := 10;
        PPR         : integer := 1000
    );
    port (
        clk        : in  std_logic;
        pulse_count : in  unsigned(31 downto 0);
        rpm_out    : out unsigned(31 downto 0)
    );
end RPM_CONVERTER;

architecture Behavioral of RPM_CONVERTER is


    constant WINDOW_CYCLES : integer := (CLK_FREQ_HZ / 1000) * WINDOW_MS;

    signal timer_cnt : integer range 0 to WINDOW_CYCLES - 1 := 0;
    signal rpm_reg   : unsigned(31 downto 0) := (others => '0');


begin


    process(clk)
        variable rpm_val : integer;
    begin
        if rising_edge(clk) then
            if timer_cnt = WINDOW_CYCLES - 1 then
                timer_cnt <= 0;

                rpm_val := (to_integer(pulse_count) * 60 * CLK_FREQ_HZ) / (PPR * WINDOW_CYCLES);

                rpm_reg <= to_unsigned(rpm_val, 32);

            else
                timer_cnt <= timer_cnt + 1;
            end if;
        end if;
    end process;

    rpm_out <= rpm_reg;
    
end Behavioral;