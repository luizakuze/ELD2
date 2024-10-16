-- ring counter

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity ring_counter is
	generic (N: natural := 4);
	port (clk, rst: std_logic;
			q: out std_logic_vector(N-1 downto 0));
end entity;

architecture ring_v1 of ring_counter is 
	signal r_reg: std_logic_vector(N-1 downto 0);
	signal r_next: std_logic_vector(N-1 downto 0);
begin
	process (clk, rst) is
	begin
		if (rst = '1') then
			r_reg <= 0=>'1',others => '0'; -- first pos = 1
		elsif (rising_edge(clk)) then
			r_reg <= r_next;
		end if;
	end process;
		
	-- ring counter logic
	r_next <= r_reg(0) & r_reg(N-1 downto 1);
	
	-- output
	q <= r_reg;
end architecture;