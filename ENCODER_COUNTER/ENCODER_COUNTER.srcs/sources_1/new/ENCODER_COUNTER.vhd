----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2026 11:11:53 PM
-- Design Name: 
-- Module Name: ENCODER_COUNTER - Behavioral
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
entity ENCODER_COUNTER is
    port (
        clk         : in  std_logic;
        encoder_a   : in  std_logic;
        pulse_count : out unsigned(31 downto 0)
    );
end entity ENCODER_COUNTER;

architecture Behavioral of ENCODER_COUNTER is

    signal count_reg      : unsigned(31 downto 0) := (others => '0');
    signal encoder_a_prev : std_logic := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if (encoder_a = '1' and encoder_a_prev = '0') then
                count_reg <= count_reg + 1;
            end if;

            encoder_a_prev <= encoder_a;
        end if;
    end process;

    pulse_count <= count_reg;

end Behavioral;