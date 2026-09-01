----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2026 11:58:09 PM
-- Design Name: 
-- Module Name: EXERCISE5_TOP - Behavioral
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

entity EXERCISE5_TOP is
    generic (
        CLK_FREQ_HZ : positive := 50000000;
        WINDOW_MS   : positive := 1000;
        PPR         : positive := 20
    );
    port (
        clk        : in  std_logic;
        encoder_in : in  std_logic;
        uart_tx    : out std_logic
    );
end EXERCISE5_TOP;

architecture Behavioral of EXERCISE5_TOP is


    component ENCODER_COUNTER
        port (
            clk        : in  std_logic;
            encoder_a : in  std_logic;
            pulse_count  : out unsigned(31 downto 0)
        );
    end component;

    component RPM_CONVERTOR
        generic (
            WINDOW_MS : positive := 1000;
            PPR       : positive := 20
        );
        port (
            clk       : in  std_logic;
            pulse_cnt : in  unsigned(31 downto 0);
            rpm_out   : out unsigned(31 downto 0);
            rpm_valid : out std_logic
        );
    end component;

    component UART_SEND
        port (
            clock        : in  std_logic;
            parallel_in  : in  std_logic_vector(7 downto 0);
            send         : in  std_logic;
            serial_out   : out std_logic;
            busy         : out std_logic
        );
    end component;

    type state_type is (
        IDLE,
        SEND_R,
        SEND_P,
        SEND_M,
        SEND_EQ,
        SEND_NUM,
        SEND_CR,
        SEND_LF
    );

    signal state        : state_type := IDLE;
    signal pulse_cnt    : unsigned(31 downto 0);
    signal rpm_sig      : unsigned(31 downto 0);
    signal rpm_valid    : std_logic;

    signal uart_data    : std_logic_vector(7 downto 0) := (others => '0');
    signal uart_start   : std_logic := '0';
    signal uart_busy    : std_logic;

    signal rpm_work     : unsigned(31 downto 0) := (others => '0');

begin


    U1: ENCODER_COUNTER
        port map (
            clk       => clk,
            encoder_a => encoder_in,
            pulse_count => pulse_cnt
        );

    U2: RPM_CONVERTOR
        generic map (
            WINDOW_MS => WINDOW_MS,
            PPR       => PPR
        )
        port map (
            clk       => clk,
            pulse_cnt => pulse_cnt,
            rpm_out   => rpm_sig,
            rpm_valid => rpm_valid
        );

    U3: UART_SEND
        port map (
            clock       => clk,
            parallel_in => uart_data,
            send        => uart_start,
            serial_out  => uart_tx,
            busy        => uart_busy
        );

    process(clk)
        variable digit : integer;
    begin
        if rising_edge(clk) then
            uart_start <= '0';

            case state is
                when IDLE =>
                    if rpm_valid = '1' then
                        rpm_work <= rpm_sig;
                        state    <= SEND_R;
                    end if;

                when SEND_R =>
                    if uart_busy = '0' then
                        uart_data  <= x"52";  -- 'R'
                        uart_start <= '1';
                        state      <= SEND_P;
                    end if;

                when SEND_P =>
                    if uart_busy = '0' then
                        uart_data  <= x"50";  -- 'P'
                        uart_start <= '1';
                        state      <= SEND_M;
                    end if;

                when SEND_M =>
                    if uart_busy = '0' then
                        uart_data  <= x"4D";  -- 'M'
                        uart_start <= '1';
                        state      <= SEND_EQ;
                    end if;

                when SEND_EQ =>
                    if uart_busy = '0' then
                        uart_data  <= x"3D";  -- '='
                        uart_start <= '1';
                        state      <= SEND_NUM;
                    end if;
                    when SEND_NUM =>
                    if uart_busy = '0' then
                        digit := to_integer(rpm_work mod 10);
                        uart_data  <= std_logic_vector(to_unsigned(character'pos('0') + digit, 8));
                        uart_start <= '1';
                        state      <= SEND_CR;
                    end if;

                when SEND_CR =>
                    if uart_busy = '0' then
                        uart_data  <= x"0D";
                        uart_start <= '1';
                        state      <= SEND_LF;
                    end if;

                when SEND_LF =>
                    if uart_busy = '0' then
                        uart_data  <= x"0A";
                        uart_start <= '1';
                        state      <= IDLE;
                    end if;
            end case;
        end if;
    end process;


end Behavioral;



