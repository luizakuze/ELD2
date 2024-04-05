-- Contador Bidirecional entre MIN e MAX.
-- entrada DIR: '0' = Crescente e '1' = Decrescente.

library ieee;
-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contadores is 
	generic(MIN: natural := 0; MAX: natural := 5);
	port(clock, reset, dir: in std_LOGIC; 
	q: out integer range MIN to MAX);
end entity;

-- Com underflow no valor mínimo (MIN) e overflow no máximo (MAX)
architecture ifsc_v1 of contadores is
begin
	process (clock,reset,dir)
		variable count : integer range MIN to MAX;
begin
		if (reset = '1') then
			count := MIN;
		elsif (rising_edge(clock)) then
			if (dir = '0') then
				-- Crescente
				if (count = MAX) then
					count := MIN;
				else 
					count := count + 1;
				end if;
			else
				-- Decrescente 
				if (count = MIN) then
					count := MAX;
				else 
					count := count - 1;
				end if;
			end if;
		end if;
	q <= count;
	end process;
end architecture;

-- Com parada no valor minimo (MIN), se decrescente e tambem no maximo (MAX) se crescente
architecture ifsc_v2 of contadores is
begin
	process (clock,reset,dir)
		variable count : integer range MIN to MAX;
begin
		if (reset = '1') then
			if (dir = '0') then
				-- Crescente
				count := MIN;
			else
				-- Decrescente
				count := MAX;
			end if;
		elsif (rising_edge(clock)) then
			if (dir = '0') then
				-- Crescente
				if (count /= MAX) then
					count := count + 1;
				end if;
			else
				-- Decrescente 
				if(count /= MIN) then
					count := count - 1;
				end if;
			end if;
		end if;
		q <= count;
	end process;
end architecture;

configuration cfg_ifsc of contadores is
--for ifsc_v1 end for;
for ifsc_v2 end for;
end configuration;