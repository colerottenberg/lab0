library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
    port(
        clk : in std_logic;
        reset : in std_logic;
        count : out std_logic_vector(3 downto 0)
    );
end counter;

architecture rtl of counter is
		signal count_r : integer range 0 to 15 := 0;

begin

	process(clk, reset)
		begin
			if reset = '1' then
				count_r <= 0;
			elsif rising_edge(clk) then
				count_r <= count_r + 1;
			end if;
	end process;

	count <= std_logic_vector(to_unsigned(count_r, 4));
end rtl;
