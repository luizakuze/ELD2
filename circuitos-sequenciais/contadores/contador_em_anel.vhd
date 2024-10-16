--=============================
-- Listing 9.8 ring counter
--=============================
library ieee;
use ieee.std_logic_1164.all;
entity contador_em_anel is
   generic(N: natural := 4);
   port(
      clk, reset: in std_logic;
      q: out std_logic_vector(N-1 downto 0)
   );
end contador_em_anel;

architecture reset_arch of contador_em_anel is
   signal r_reg: std_logic_vector(N-1 downto 0);
   signal r_next: std_logic_vector(N-1 downto 0);
begin
   -- register
   process(clk,reset)
   begin
      if (reset='1') then
         r_reg <= (0=>'1', others=>'0'); --posicao 0 => 1, o restante => 000000
      elsif (clk'event and clk='1') then
         r_reg <= r_next;
      end if;
   end process; 
	
   r_next <= r_reg(0) & r_reg(N-1 downto 1); 
   q <= r_reg;
	
end reset_arch;

configuration cfg_test_ring of contador_em_anel is
	for reset_arch end for;
end configuration;