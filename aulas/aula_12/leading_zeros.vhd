library ieee;
use ieee.std_logic_1164.all;

entity leading_zeros is
	generic (N : natural := 8);
	port
		(	data : in std_logic_vector(0 to N-1);
			zeros	: out integer range 0 to N;
			
			clk, reset : in std_logic
		);
end entity;

architecture ifsc_v1 of leading_zeros is
begin
	process (data)
		variable count : integer range 0 to N;
	begin
		count := 0;
		for i in data'range loop
			case data(i) is
				when '0' => count := count + 1;
				when others => next; -- when others => null      soma todos os zeros independente do lugar -- when others => exit, padrao
			end case;
		end loop;
		zeros <= count;
	end process;
end architecture;

-- latch com o if
architecture ifsc_v2 of leading_zeros is
begin
	process (data)
		variable count : integer range 0 to N;
	begin
		--count := 0;
		for i in data'range loop
			if (data(i) = '0') then
				count := count + 1;
			else 
				exit;
			end if;
		end loop;
		zeros <= count;
	end process;
end architecture;

---- transformar latch em ff
--architecture ifsc_v3 of leading_zeros is
--begin
--	process (data)
--		variable count : integer range 0 to N;
--	begin
----		count := 0;
--		for i in data'range loop
--			if (rising_edge(clk)) then
--				if (data(i) = '0') then
--					count := count + 1;
----				else 
----					exit;
--				end if;
--			end if;
--		end loop;
--		zeros <= count;
--	end process;
--end architecture;