----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2026 08:14:32 PM
-- Design Name: 
-- Module Name: TB_UART_SEND - Behavioral
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

entity TB_UART_SEND is
end TB_UART_SEND;

architecture Behavioral of TB_UART_SEND is
    constant clk_period : time := 41.666 ns; -- 24MHz

    signal clk         : std_logic := '0';
    signal parallel_in : std_logic_vector(7 downto 0) := (others => '0');
    signal send        : std_logic := '0';
    signal busy        : std_logic;
    signal serial_out  : std_logic;

    type byte_array is array (natural range <>) of std_logic_vector(7 downto 0);

    constant TEXT1 : byte_array := (
        x"48", x"65", x"6C", x"6C", x"6F", -- Hello
        x"20",                             -- space
        x"57", x"6F", x"72", x"6C", x"64", -- World
        x"0D", x"0A"                      -- CRLF
    );
begin

    -- clock
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Instantiate your component 
    DUT : entity work.UART_SEND
        port map(
            clock        => clk,
            parallel_in  => parallel_in,
            send         => send,
            busy         => busy,
            serial_out   => serial_out
        );

    -- stimulus
    stimulus : process
    begin
        wait for 200 ns;

        -- send twice: Hello World CRLF then Hello World CRLF
        for rep in 1 to 2 loop
            for i in TEXT1'range loop
                parallel_in <= TEXT1(i);
                send <= '1';
                wait for clk_period;
                send <= '0';

                -- wait until transmitter finishes sending
                wait until busy = '0';
            end loop;
        end loop;

        wait for 2000 ns;
        assert false report "Simulation completed." severity failure;
    end process;


end Behavioral;


















