----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2026 07:23:08 PM
-- Design Name: 
-- Module Name: UART_SEND - Behavioral
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

entity UART_SEND is
  Port ( 
        clock : in std_logic;
        parallel_in : in std_logic_vector( 7 downto 0);
        send        : in std_logic;
        busy        : out std_logic;
        serial_out  : out std_logic  );
end UART_SEND;

architecture Behavioral of UART_SEND is
       signal send_packet : std_logic_vector( 9 downto 0);
       signal busy_int : std_logic :='0' ;
       signal baud_rate_count : unsigned( 11 downto 0) := (others => '0');
       signal bit_count : unsigned( 3 downto 0) :=(others =>'0');

begin

        busy  <= busy_int ;
 
        process (clock)
        begin
             if rising_edge(clock) then
                              if busy_int = '0' then
                                   send_packet <= '1' & Parallel_in & '0';
                                   if send = '1' then
                                          busy_int <= '1';
                                          Serial_out <= send_packet(0);
                                          bit_count <= x"1";
                                    end if;
                               else
                                     baud_rate_count <= baud_rate_count + 1;
                                     if baud_rate_count = to_unsigned(2499, 12) then
                                             baud_rate_count <= (others => '0');
                                             if bit_count = to_unsigned(10, 4) then
                                                             bit_count <= (others =>'0');
                                                             Serial_out <= '1'; -- idle
                                                             busy_int <= '0';
                                             else
                                                   bit_count <= bit_count + 1;
                                                   serial_out <= send_packet(to_integer(bit_count));
                                             end if;
                                     end if;
                            end if;
            end if;       
    end process;


end Behavioral;
