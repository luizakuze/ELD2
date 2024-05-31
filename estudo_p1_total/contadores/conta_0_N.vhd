library ieee;
-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity conta_0_N is 
	generic(N_bits: natural := 6; MAX: natural := 50); -- 6 bits para numero 50
	port(clock, reset: in std_LOGIC; 
	--q : out integer range 0 to MAX);
	q: out std_LOGIC_VECTOR(N_bits-1 downto 0)); 
end entity;

architecture ifsc_v1 of conta_0_N is
begin
	process (clock,reset)
		variable count : integer range 0 to MAX;
	begin
		if (reset = '1') then
			count := 0;
		elsif (rising_edge(clock)) then
			if (count = MAX) then
				count := 0;
			else 
				count := count + 1;
			end if;
		end if;
		q <= std_LOGIC_VECTOR(to_unsigned(count,N_bits)); -- convertendo tipos
	end process;
end architecture;
