----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2026 01:55:16 AM
-- Design Name: 
-- Module Name: TB_UART_RECIEVE - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_UART_RECIEVE is
end TB_UART_RECIEVE;

architecture Behavioral of TB_UART_RECIEVE is

    constant clk_period : time := 41.666 ns;   -- 24 MHz
    constant bit_period : time := 104.166 us;  -- 9600 baud

    signal clock        : std_logic := '0';
    signal serial_in    : std_logic := '1';
    signal parallel_out : std_logic_vector(7 downto 0);
    signal vallid       : std_logic;
      
begin
    DUT: entity work.UART_RECEIVE
        port map (
            clock        => clock,
            serial_in    => serial_in,
            parallel_out => parallel_out,
            vallid       => vallid
        );

    clk_process: process
    begin
        loop
            clock <= '0';
            wait for clk_period / 2;
            clock <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    stim_proc: process

        procedure send_uart_byte(
            signal tx : out std_logic;
            data      : in std_logic_vector(7 downto 0)
        ) is
        begin
            -- idle
            tx <= '1';
            wait for bit_period;

            -- start bit
            tx <= '0';
            wait for bit_period;

            -- data bits, LSB first
            for i in 0 to 7 loop
                tx <= data(i);
                wait for bit_period;
            end loop;

            -- stop bit
            tx <= '1';
            wait for bit_period;
        end procedure;

    begin
        serial_in <= '1';
        wait for 500 us;

        send_uart_byte(serial_in, x"48"); -- H
        wait for 300 us;

        send_uart_byte(serial_in, x"65"); -- e
        wait for 300 us;

        send_uart_byte(serial_in, x"6C"); -- l
        wait for 300 us;

        send_uart_byte(serial_in, x"6C"); -- l
        wait for 300 us;

        send_uart_byte(serial_in, x"6F"); -- o
        wait for 300 us;

        wait;
    end process;

end Behavioral;
































