library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux2x1 is
	port -- SINAIS
	(
		-- Input ports
		x: in std_logic_vector (1 downto 0);
		sel: in std_logic_vector (1 downto 0);
		-- Output ports
		y : out std_logic
	);
end entity;

-- Logica pura - CONCORRENTE
architecture ifsc_v1 of mux2x1 is
begin
	y <= (x(0) and sel(0)) or (x(1) and sel(1));
end architecture;

-- when-else (when) - CONCORRENTE
architecture ifsc_v2 of mux2x1 is
begin	
	y <= x(0) when sel = "00" else x(1); -- when sel(0) = '0'
end architecture;

-- when-select-when (select) - CONCORRENTE
architecture ifsc_v3 of mux2x1 is
begin	
	with sel select
	y <= x(0) when "00", 
		  x(1) when others;
end architecture;

-- if - SEQUENCIAL
architecture ifsc_v4 of mux2x1 is
begin	
	process(sel, x)
		variable y_out: std_logic;
	begin
		if (sel(0) = '0') then -- sel = "00"
			y_out := x(0);
		else 
			y_out := x(1);
		end if;
	y <= y_out;
	end process;
end architecture;

configuration cfg_ifsc of mux2x1 is
--	for ifsc_v1
--	for ifsc_v2
--	for ifsc_v3
	for ifsc_v4
	end for;
end configuration;