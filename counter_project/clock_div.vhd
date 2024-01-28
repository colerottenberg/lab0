library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- Clock Divider turns the 500MHz clock into a 1Hz clock

entity clock_div is
    port(
        clk : in std_logic;
        reset : in std_logic;
        clk_out : out std_logic
    );
end clock_div;

architecture Behavioral of clock_div is
    constant COUNTER_MAX : integer := 25000000; -- Half of 500,000,000 for 1 Hz
    signal counter : integer range 0 to COUNTER_MAX := 0;
    signal temp_clk : STD_LOGIC := '0';

begin
    process(clk, reset)
    begin
        if reset = '1' then
            counter <= 0;
            temp_clk <= '0';
        elsif rising_edge(clk) then
            if counter = COUNTER_MAX then
                counter <= 0;
                temp_clk <= not temp_clk;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    clk_out <= temp_clk;

end Behavioral;
