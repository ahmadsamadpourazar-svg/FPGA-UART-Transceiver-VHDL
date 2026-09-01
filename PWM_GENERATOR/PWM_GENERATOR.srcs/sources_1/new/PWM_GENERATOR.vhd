----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2026 02:41:25 PM
-- Design Name: 
-- Module Name: PWM_GENERATOR - Behavioral
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

entity PWM_GENERATOR is
    Port ( clk : in STD_LOGIC;
           duty_perc : in STD_LOGIC_VECTOR (7 downto 0);
           pwm_out : out STD_LOGIC);
end PWM_GENERATOR;

architecture Behavioral of PWM_GENERATOR is

    constant PWM_TOP : integer := 23999;  -- 24MHz / 1kHz - 1
    signal pwm_cnt   : integer range 0 to PWM_TOP := 0;
    signal duty_cnt  : integer range 0 to PWM_TOP := 0;


begin

    process(clk)
    begin
        if rising_edge(clk) then
            if pwm_cnt = PWM_TOP then
                pwm_cnt <= 0;
            else
                pwm_cnt <= pwm_cnt + 1;
            end if;

            duty_cnt <= (to_integer(unsigned(duty_perc)) * PWM_TOP) / 100;

            if pwm_cnt < duty_cnt then
                pwm_out <= '1';
            else
                pwm_out <= '0';
            end if;
        end if;
    end process;


end Behavioral;








