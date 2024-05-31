library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_bcd is
	port (
		clk, rst: std_logic;
		dezena, unidade    : out std_logic_vector (3 downto 0)
	);
end entity;

architecture ifsc_v1 of contador_bcd is
begin
	process (clk,rst)
		variable count_d : integer range 0 to 9;
		variable count_u : integer range 0 to 9;
	begin
		if (rst = '1') then
			count_d := 0;
			count_u := 0;
		elsif (rising_edge(clk)) then
			-- verifica unidade
			if (count_u = 9) then
				count_u := 0;
				-- verifica dezena
				if (count_d = 9)  then
					count_d := 0;
				else
					count_d := count_d + 1;
				end if;
			else 
				count_u := count_u + 1;
			end if;
		end if;
		dezena <= std_LOGIC_VECTOR(to_unsigned(count_d,4)); 
		unidade <= std_LOGIC_VECTOR(to_unsigned(count_u,4)); 
	end process;
end architecture;