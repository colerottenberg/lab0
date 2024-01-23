library ieee;
use ieee.std_logic_1164.all;
entity counter is
    port(
        clk : in std_logic;
        reset : in std_logic;
        count : out std_logic_vector(3 downto 0)
    );
end counter;
architecture rtl of counter is
    signal count_int : std_logic_vector(3 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            count_int <= "0000";
        elsif rising_edge(clk) then
            count_int <= count_int + 1;
        end if;
    end process;

    count <= std_logic_vector(count_int);
end rtl;