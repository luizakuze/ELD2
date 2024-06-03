library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity par_ou_impar is
	generic (N_BITS: natural:= 4);
	port (clk, rst: in std_logic;
			q: out std_logic_vector(N_BITS-1 downto 0);
			clk_out: out std_logic);
end entity;

architecture ifsc_v1 of par_ou_impar is
	signal r_reg: unsigned(N_BITS-1 downto 0);
	signal r_next: unsigned(N_BITS-1 downto 0);
begin
	process(clk, rst) 
	begin 
		if (rst = '1') then
			r_reg <= (others=>'0');
		elsif (rising_edge(clk)) then
			r_reg <= r_next;
		end if;
	end process;
	
	r_next <= r_reg when r_reg=(2**N_BITS-1) else
				 r_reg + 1;
				 
	--output
	q <= std_logic_vector(r_reg);
	clk_out <= '1' when (r_reg mod 2 = 0) else
				  '0';
end architecture;