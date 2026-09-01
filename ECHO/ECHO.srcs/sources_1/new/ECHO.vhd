----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2026 02:50:50 AM
-- Design Name: 
-- Module Name: ECHO - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ECHO is
    Port ( clock      : in STD_LOGIC;
           serial_in  : in STD_LOGIC;
           serial_out : out STD_LOGIC);
end ECHO;

architecture Behavioral of ECHO is


    signal rx_data   : std_logic_vector(7 downto 0) ;
    signal rx_valid  : std_logic ;
    signal tx_send   : std_logic  ;
    signal tx_data   : std_logic_vector(7 downto 0);

    component UART_RECEIVE
        port (
            clock        : in  std_logic;
            serial_in    : in  std_logic;
            parallel_out : out std_logic_vector(7 downto 0);
            vallid       : out std_logic
        );
    end component;

    component UART_SEND
        port (
            clock       : in  std_logic;
            send        : in  std_logic;
            parallel_in : in  std_logic_vector(7 downto 0);
            serial_out  : out std_logic
        );
    end component;

begin


    tx_data <= rx_data;

    tx_send <= rx_valid;

    U_RX: UART_RECEIVE
        port map (
            clock        => clock,
            serial_in    => serial_in,
            parallel_out => rx_data,
            vallid       => rx_valid
        );

    U_TX: UART_SEND
        port map (
            clock       => clock,
            send        => tx_send,
            parallel_in => tx_data,
            serial_out  => serial_out
        );
--        process
--        begin
--             tx_send <= '1';
--             wait for 100 ns;
--             rx_valid <= '0';
--              wait for 104.166 us;
--              rx_valid <= '1';
--              wait for 104.166 us;
--               wait;
--end process;


end Behavioral;














