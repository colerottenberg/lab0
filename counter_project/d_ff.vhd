library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- The D FF is a positive edge triggered D flip flop with asynchronous reset

entity d_ff is 
  port(
    clk : in std_logic;
    d   : in std_logic;
    rst : in std_logic;
    q   : out std_logic
  );
end entity d_ff;

architecture rtl of d_ff is
begin
  process(clk, rst)
  begin
    if rst = '1' then
      q <= '0';
    elsif rising_edge(clk) then
      q <= d;
    end if;
  end process;
end architecture rtl;
