----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2026 02:59:10 PM
-- Design Name: 
-- Module Name: MOTOR_PWM_TOP - Behavioral
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

entity MOTOR_PWM_TOP is
    Port ( clk : in STD_LOGIC;
           rx : in STD_LOGIC;
           pwm_out : out STD_LOGIC);
end MOTOR_PWM_TOP;

architecture Behavioral of MOTOR_PWM_TOP is

    component UART_RECEIVE is
        port (
            clock         : in  std_logic;
            serial_in     : in  std_logic;
            parallel_out  : out std_logic_vector(7 downto 0);
            vallid         : out std_logic
        );
    end component;

    component PWM_GENERATOR is
        port (
            clk       : in  std_logic;
            duty_perc : in  std_logic_vector(7 downto 0);
            pwm_out   : out std_logic
        );
    end component;

    signal rx_data   : std_logic_vector(7 downto 0);
    signal rx_valid  : std_logic;
    signal duty_reg  : std_logic_vector(7 downto 0) := (others => '0');

begin

    U_RX: UART_RECEIVE
        port map (
            clock          => clk,
            serial_in      => rx,
            parallel_out   => rx_data,
            vallid          => rx_valid
        );
    -- latch received percent
    process(clk)
    begin
        if rising_edge(clk) then
            if rx_valid = '1' then
                if unsigned(rx_data) > 100 then
                    duty_reg <= std_logic_vector(to_unsigned(100, 8));
                else
                    duty_reg <= rx_data;
                end if;
            end if;
        end if;
    end process;

    U_PWM: PWM_GENERATOR
        port map (
            clk       => clk,
            duty_perc => duty_reg,
            pwm_out   => pwm_out
        );
end Behavioral;













