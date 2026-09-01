----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2026 08:53:28 PM
-- Design Name: 
-- Module Name: UART_RECEIVE - Behavioral
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

entity UART_RECEIVE is
    Port ( clock        : in STD_LOGIC;
           serial_in    : in STD_LOGIC;
           parallel_out : out STD_LOGIC_VECTOR (7 downto 0);
           vallid       : out STD_LOGIC);
end UART_RECEIVE;

architecture Behavioral of UART_RECEIVE is
      
      signal recieved_packet :std_logic_vector (9 downto 0 ) := (others =>'0');
      type states is (Idle,waiting_half_BR,recieving,wait_to_finish);
      signal current_state : states := Idle;
      signal baud_rate_count : unsigned ( 11 downto 0 ) := (others =>'0');
      signal bit_count : unsigned ( 3 downto 0 ) := (others =>'0');


begin
        
        parallel_out <= recieved_packet(8 downto 1);
        
        process(clock)
        begin
                if rising_edge(clock)  then
                                       if current_state = Idle then
                                           vallid  <= '0';
                                           if serial_in = '0' then
                                              current_state <= waiting_half_BR;
                                           end if;
                                       elsif current_state = waiting_half_BR then
                                             baud_rate_count <= baud_rate_count + 1 ;
                                              vallid  <= '0';
                                              if baud_rate_count = 1250 then
                                                 baud_rate_count <= (others => '0');
                                                 if serial_in = '0' then
                                                    current_state <= recieving;
                                                    recieved_packet <= serial_in & recieved_packet(9 downto 1);
                                                    bit_count <= bit_count + 1 ;
                                                 else
                                                    current_state <= Idle;
                                              end if;
                                       end if;
                                   elsif current_state = recieving then
                                         vallid <= '0' ;
                                         bit_count <= bit_count + 1 ;
                                         if baud_rate_count = 2499 then
                                            baud_rate_count <= (others => '0');
                                            recieved_packet <= serial_in & recieved_packet(9 downto 1);
                                             bit_count <= bit_count + 1 ;
                                             if  bit_count = to_unsigned(9 , 4) then 
                                                 current_state <= wait_to_finish;
                                                 vallid <= '1';
                                             end if;
                                         end if;
                                  else
                                      vallid <= '1' ; 
                                      baud_rate_count <= baud_rate_count + 1 ;
                                      if baud_rate_count = 1249 then
                                         baud_rate_count <= (others =>'0');
                                         bit_count <= (others =>'0');
                                         current_state <= Idle;
                                         vallid <= '0' ;
                                  end if;
                 end if;
       end if;
       
       end process;
                      



                                              

                                           


end Behavioral;
