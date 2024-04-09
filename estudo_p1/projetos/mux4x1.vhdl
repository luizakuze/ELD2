library ieee;
use ieee.std_logic_1164.all;

entity mux4x1 is
generic (N : natural := 4);
	port 
	(
		x		: in STD_LOGIC_VECTOR(N-1 downto 0);
		sel   : in STD_LOGIC_VECTOR(1 downto 0);
		y     : out STD_LOGIC
	);
end entity;

architecture LOGICA_PURA of mux4x1 is
	x0 <= x(0);
    x1 <= x(1);
    x2 <= x(2);
    x3 <= x(3);
	 
    s1 <= sel(1);
    s0 <= sel(0);
begin
	y <= (not s1 and not s0 and x0) or
		(not s1 and s0 and x1) or
		(s1 and not s0 and x2) or
		(s1 and s0 and x3);
end architecture;

architecture WHEN_ELSE of mux4x1 is
	 x0 <= x(0);
    x1 <= x(1);
    x2 <= x(2);
    x3 <= x(3);
begin
	y <= x0 when sel = "00" else
        x1 when sel = "01" else
	     x2 when sel = "10" else
		  x3;
end architecture;

architecture WITH_SELECT of mux4x1 is
	 x0 <= x(0);
    x1 <= x(1);
    x2 <= x(2);
    x3 <= x(3);
begin
	with sel select
	y <= x0 when "00", 
	     x1 when "01",
	     x2 when "10",
		 x3 when others; -- evita latches
end architecture;

configuration cfg_ifsc of mux4x1 is
--	for LOGICA_PURA end for;
--	for WHEN_ELSE end for;
	for WITH_SELECT end for;
end configuration;