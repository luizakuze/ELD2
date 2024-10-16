-- LATCH D

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity latch_d is
	generic (N: natural := 4);
	port (clk, rst, set, ena: in std_logic;
			d: in std_logic;
			q: out std_logic);
end entity;
 
-- reset assincrono e sensivel a borda de subida
architecture latch_v1 of latch_d is
begin	
	process(clk, rst)
	begin
		if (rst = '1') then
			q <= '0';
		elsif (clk = '1') then
			q <= d;
		end if;
	end process;
end architecture; 

configuration latch_cfg of latch_d is
	for latch_v1 end for;
end configuration;