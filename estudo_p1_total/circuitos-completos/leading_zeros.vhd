library ieee;
use ieee.std_logic_1164.all;

entity leading_zeros is
	generic (N : natural := 8);
	port
		(	data 	: in std_logic_vector(0 to N-1);
			zeros	: out integer range 0 to N
		);
end entity;

-- Determina quantos 0 ha antes do primeiro 1
architecture ifsc_v1 of leading_zeros is
begin
	process (data)
		variable count : integer range 0 to N;
	begin
		count := 0;
		for i in data'range loop
			case data(i) is
				when '0' => count := count + 1;
				when others => exit;
			end case;
		end loop;
		zeros <= count;
	end process;
end architecture;

-- Determina quantos 0 no total
architecture ifsc_v2 of leading_zeros is
begin
	process (data)
		variable count : integer range 0 to N;
	begin
		count := 0;
	for i in data'range loop
		case data(i) is
			when '0' => count := count + 1;
			when others => next;
		end case;
	end loop;
		zeros <= count;
	end process;
end architecture;

-- Determina quantos 0 ha no total
architecture ifsc_v3 of leading_zeros is
begin
	process (data)
		variable count : integer range 0 to N;
	begin
		count := 0;
	for i in data'range loop
		if data(i) = '0' then count := count + 1;
		end if;
	end loop;
		zeros <= count;
	end process;
end architecture;