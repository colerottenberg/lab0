library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- The D FF is a positive edge triggered D flip flop with asynchronous reset
-- The width of the data input and output will be generic

entity d_ff is
    generic (width : positive := 4);
    port (
        clk : in std_logic;
        reset : in std_logic;
        d : in std_logic_vector(width-1 downto 0);
        q : out std_logic_vector(width-1 downto 0)
         );
end entity d_ff;

architecture rtl of d_ff is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            q <= (others => '0');
        elsif rising_edge(clk) then
            q <= d;
        end if;
    end process;
end architecture rtl;
