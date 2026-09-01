----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2026 02:57:51 AM
-- Design Name: 
-- Module Name: VIO_ICON - Behavioral
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

entity VIO_ICON is
    port (
        clk        : in  std_logic;    
        encoder_a  : in  std_logic      
    );
end VIO_ICON;

architecture Behavioral of VIO_ICON is



    component ila_0
        port (
            clk    : in std_logic;
            probe0 : in std_logic_vector(7 downto 0);
            probe1 : in std_logic_vector(31 downto 0);
            probe2 : in std_logic_vector(31 downto 0)
        );
    end component;

    component vio_0
        port (
            clk        : in std_logic;
            probe_in0  : in std_logic_vector(31 downto 0);
            probe_out0 : out std_logic_vector(7 downto 0)
        );
    end component;

    component ENCODER_COUNTER
        port (
            clk         : in  std_logic;
            encoder_a   : in  std_logic;
            pulse_count : out unsigned(31 downto 0)
        );
    end component;

    component RPM_CONVERTER
        generic (
            CLK_FREQ_HZ : integer := 24000000;
            WINDOW_MS   : integer := 100;
            PPR         : integer := 1000
        );
        port (
            clk         : in  std_logic;
            pulse_count : in  unsigned(31 downto 0);
            rpm_out     : out unsigned(31 downto 0)
        );
    end component;



    signal speed_percent : std_logic_vector(7 downto 0);    
    signal pulse_count_s : unsigned(31 downto 0);           
    signal rpm_s         : unsigned(31 downto 0);           
    signal rpm_vec       : std_logic_vector(31 downto 0);   

begin


    rpm_vec <= std_logic_vector(rpm_s);


    U_COUNTER : ENCODER_COUNTER
        port map (
            clk         => clk,
            encoder_a   => encoder_a,
            pulse_count => pulse_count_s
        );


    U_RPM : RPM_CONVERTER
        port map (
            clk         => clk,
            pulse_count => pulse_count_s,
            rpm_out     => rpm_s
        );


    U_VIO : vio_0
        port map (
            clk        => clk,
            probe_in0  => rpm_vec,        
            probe_out0 => speed_percent   
        );


    U_ILA : ila_0
        port map (
            clk    => clk,
            probe0 => speed_percent,             
            probe1 => std_logic_vector(pulse_count_s), 
            probe2 => rpm_vec                    
        );

end Behavioral;
