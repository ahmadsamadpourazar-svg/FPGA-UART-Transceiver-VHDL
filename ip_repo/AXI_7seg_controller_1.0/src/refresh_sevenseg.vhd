library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sevenseg_refresh is
    generic (
        CLK_FREQ_HZ : integer := 100000000;
        REFRESH_HZ  : integer := 1000
    );
    port (
        clk    : in std_logic;
        resetn : in std_logic;

        digit0 : in std_logic_vector(3 downto 0);
        digit1 : in std_logic_vector(3 downto 0);
        digit2 : in std_logic_vector(3 downto 0);
        digit3 : in std_logic_vector(3 downto 0);
        dots   : in std_logic_vector(3 downto 0);

        seg : out std_logic_vector(6 downto 0);
        an  : out std_logic_vector(3 downto 0);
        dp  : out std_logic
    );
end sevenseg_refresh;

architecture rtl of sevenseg_refresh is

    constant DIVIDER : integer := CLK_FREQ_HZ / (REFRESH_HZ * 4);

    signal refresh_counter : integer range 0 to DIVIDER-1 := 0;
    signal active_digit    : unsigned(1 downto 0) := (others => '0');
    signal current_digit   : std_logic_vector(3 downto 0) := (others => '0');

begin

    --------------------------------------------------------------------
    -- Refresh Counter
    --------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if resetn = '0' then
                refresh_counter <= 0;
                active_digit    <= (others => '0');
            else
                if refresh_counter = DIVIDER - 1 then
                    refresh_counter <= 0;
                    active_digit    <= active_digit + 1;
                else
                    refresh_counter <= refresh_counter + 1;
                end if;
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- ?????? ??? ????
    -- ???: an ? dp ?????-?? ?????
    --------------------------------------------------------------------
    process(active_digit, digit0, digit1, digit2, digit3, dots)
    begin
        case active_digit is

            when "00" =>
                current_digit <= digit0;
                an <= "1110";
                dp <= not dots(0);

            when "01" =>
                current_digit <= digit1;
                an <= "1101";
                dp <= not dots(1);

            when "10" =>
                current_digit <= digit2;
                an <= "1011";
                dp <= not dots(2);

            when "11" =>
                current_digit <= digit3;
                an <= "0111";
                dp <= not dots(3);

            when others =>
                current_digit <= "0000";
                an <= "1111";
                dp <= '1';

        end case;
    end process;

    --------------------------------------------------------------------
    -- ?????? ??? ?? 7segment
    -- ???: ???????? ?????-?? ?????
    -- ????? ??????:
    -- seg(0)=a
    -- seg(1)=b
    -- seg(2)=c
    -- seg(3)=d
    -- seg(4)=e
    -- seg(5)=f
    -- seg(6)=g
    --------------------------------------------------------------------
    process(current_digit)
    begin
        case current_digit is

            when x"0" =>
                seg <= "1000000";

            when x"1" =>
                seg <= "1111001";

            when x"2" =>
                seg <= "0100100";

            when x"3" =>
                seg <= "0110000";

            when x"4" =>
                seg <= "0011001";

            when x"5" =>
                seg <= "0010010";

            when x"6" =>
                seg <= "0000010";

            when x"7" =>
                seg <= "1111000";

            when x"8" =>
                seg <= "0000000";

            when x"9" =>
                seg <= "0010000";

            when x"A" =>
                seg <= "0001000";

            when x"B" =>
                seg <= "0000011";

            when x"C" =>
                seg <= "1000110";

            when x"D" =>
                seg <= "0100001";

            when x"E" =>
                seg <= "0000110";

            when x"F" =>
                seg <= "0001110";
                when others =>
                seg <= "1111111";

        end case;
    end process;

end rtl;