library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity counter is
    port(
        clk_in : in std_logic;
        reset : in std_logic;
        count : out std_logic_vector(3 downto 0);
		  seg : out std_logic_vector(6 downto 0)
    );
end counter;
architecture rtl of counter is
    signal count_int : std_logic_vector(3 downto 0);
	 signal clk_count : std_logic_vector(25 downto 0);
	 signal clk : std_logic;
begin
	 process(clk_in)
	 begin
		if rising_edge(clk_in) then
			clk_count <= std_logic_vector(unsigned(clk_count) + 1);
		end if;
		-- stepping down 50 MHz clock to 1 Hz
		if unsigned(clk_count) = 24999999 then
			clk_count <= "00000000000000000000000000";
			clk <= not clk;
		end if;
	 end process;
	 
    process(clk, reset)
    begin
        if reset = '1' then
            count_int <= "0000";
        elsif clk = '1' then
				count_int <= std_logic_vector(unsigned(count_int) + 1);
				clk <= not clk;
        end if;
    end process;
	 
	 process(count_int)
	 begin
		case count_int is
			when "0000" => seg <= "1000000"; -- 0
         when "0001" => seg <= "1111001"; -- 1
			when "0010" => seg <= "0100100"; -- 2
			when "0011" => seg <= "0110000"; -- 3
			when "0100" => seg <= "0011001"; -- 4
			when "0101" => seg <= "0010010"; -- 5
			when "0110" => seg <= "0000010"; -- 6
			when "0111" => seg <= "1111000"; -- 7
			when "1000" => seg <= "0000000"; -- 8
			when "1001" => seg <= "0010000"; -- 9
			when "1010" => seg <= "0001000"; -- A
			when "1011" => seg <= "0000011"; -- B
			when "1100" => seg <= "1000110"; -- C
			when "1101" => seg <= "0100001"; -- D
			when "1110" => seg <= "0000110"; -- E
			when "1111" => seg <= "0001110"; -- F
            -- Add the rest of the binary to seven-segment mappings here
         when others => seg <= "1111111"; -- Error condition
      end case;
	end process;
   count <= std_logic_vector(count_int);
end rtl;
