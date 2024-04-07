-- Contador BCD de 00 a 99, com parada em MAX_DU. 
-- ex) Se D = 5 e U = 9, implica em contar de 000 ate 59 e ficar parado neste valor.
-- Ao atingir o valor final MAX_DU, uma saida adicional OPA deve ser ativada.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is
	generic(
		MAX_D : natural := 1;
		MAX_U : natural := 7
	);
	port (
		clk, rst: in std_logic;
		OPA: out std_logic;
		dezena, unidade: out std_logic_vector (3 downto 0)
	);
end entity;

-- O contador crescente usa contagem separada de 0 a 9 da Unidade, Dezena, com parada em MAX_DU,
architecture ifsc_v1 of contador is
begin
	process (clk,rst)
		variable count_d : integer range 0 to 9;
		variable count_u : integer range 0 to 9;
	begin
		if (rst = '1') then
			count_d := 0;
			count_u := 0;
			OPA <= '0';
		elsif (rising_edge(clk)) then
		
			-- verifica se chegou em MAX_DU
			if (MAX_D = count_d and MAX_U = count_u) then
				OPA <= '1';
				
				-- verifica se tem unidade disponivel
			elsif (count_u = 9) then
				count_u := 0;
				
				-- verifica se tem dezena disponivel
				if (count_d = 9) then
					count_d := 0;
				else
					count_d := count_d + 1;
				end if;
					
			else 
				count_u := count_u + 1;
			end if;
			
		end if;
		dezena <= std_LOGIC_VECTOR(to_unsigned(count_d,dezena'length)); -- 4
		unidade <= std_LOGIC_VECTOR(to_unsigned(count_u,unidade'length)); 
	end process;
end architecture;

-- O contador crescente incrementa 6 ao passar de 9 (1001) para 10 (1010), com parada em MAX_DU
architecture ifsc_v2 of contador is
begin
	process (clk,rst)
		variable count_d : integer range 0 to 9;
		variable count_u : integer range 0 to 9;
	begin
		if (rst = '1') then
			count_d := 0;
			count_u := 0;
			OPA <= '0';
		elsif (rising_edge(clk)) then
		
			-- verifica se chegou em MAX_DU
			if (MAX_D = count_d and MAX_U = count_u) then
				OPA <= '1';
				
			-- verifica condicao mudanca 9->10	
			elsif (count_d = 0 and count_u = 9) then -- 9 (unidade) + 6 ---> 1111 (15)
				count_u := 5;
				count_d := 1;
				
			-- verifica se tem unidade disponivel
			elsif (count_u = 9) then
				count_u := 0;
				
				-- verifica se tem dezena disponivel
				if (count_d = 9) then
					count_d := 0;
				else
					count_d := count_d + 1;
				end if;
					
			else 
				count_u := count_u + 1;
			end if;
			
		end if;
		dezena <= std_LOGIC_VECTOR(to_unsigned(count_d,dezena'length)); -- 4
		unidade <= std_LOGIC_VECTOR(to_unsigned(count_u,unidade'length)); 
	end process;
end architecture;

-- O contador decrescente usa contagem separada de 0 a 9 da Unidade, Dezena, com inicio em MAX_DU e parada em 00
architecture ifsc_v3 of contador is
begin
	process (clk,rst)
		variable count_d : integer range 0 to 9;
		variable count_u : integer range 0 to 9;
	begin
		if (rst = '1') then
			count_d := MAX_D;
			count_u := MAX_U;
			OPA <= '0';
		elsif (rising_edge(clk)) then
		
			-- verifica se chegou em MAX_DU
			if (count_d = 0 and count_u = 0) then
				OPA <= '1';
				-- verifica se tem unidade disponivel
			elsif (count_u = 0) then
				count_u := 9;
				
				-- verifica se tem dezena disponivel
				if (count_d = 0) then
					count_d := 9;
				else
					count_d := count_d - 1;
				end if;
					
			else 
				count_u := count_u - 1;
			end if;
			
		end if;
		dezena <= std_LOGIC_VECTOR(to_unsigned(count_d,dezena'length)); -- 4
		unidade <= std_LOGIC_VECTOR(to_unsigned(count_u,unidade'length)); 
	end process;
end architecture;

configuration cfg_ifsc of contador is
--	for ifsc_v1 end for;
	for ifsc_v2 end for;
-- for ifsc_v3 end for;
end configuration;
