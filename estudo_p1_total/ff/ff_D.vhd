library ieee;
-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
use ieee.std_logic_1164.all;

entity ff_D is 
	generic (N: natural := 4);
	port( 
	clock, reset, preset, enable: in std_LOGIC; 
	d: in std_LOGIC_VECTOR(N-1 downto 0);
	q: out std_LOGIC;
	--q: out std_LOGIC_VECTOR(N-1 downto 0));
end entity;

architecture ifsc_v1 of ff_D is
begin
	--Flip Flop tipo D com reset assincrono, sensivel a borda de subida.
	process (clock,reset)
	begin
		if (reset = '1') then
			q <= '0';
		elsif (rising_edge(clock)) then
			q <= d;
		end if;
	end process;
end architecture;

architecture ifsc_v2 of ff_D is
begin
	--Flip Flop tipo D com preset assincrono e sinal de enable, sensivel a borda de descida.
	process (clock,preset)
	begin
		if (preset = '1') then
			q <= '1';
		elsif (falling_edge(clock)) then
			if (enable = '1') then
				q <= d;
			end if;
		end if;
	end process;
end architecture;

architecture ifsc_v3 of ff_D is
begin
	--Latch tipo D com reset assincrono.
	process (clock,reset,d)
	begin
		if (reset = '1') then
			q <= '0';
		elsif (clock='1') then
			q <= d;
		end if;
	end process;
end architecture;

architecture ifsc_v4 of ff_D is
begin
	process (clock,reset)
	begin
		if (rising_edge(clock)) then
			if (reset = '1') then
				q <= (others => '0');
			else 
				q <= d;
			end if;
		end if;
	end process;
end architecture;

architecture ifsc_v5 of ff_D is
begin
L1: 
	for k in N-1 downto 0 generate
		process (clock,reset)
	begin
		if (reset = '1') then
			q(k) <= '0';
		elsif (rising_edge(clock)) then
			q(k) <= d(N-1-k);
		end if;
	end process;
	end generate;
end architecture;



configuration cfg_ifsc3 of ff_D is
-- for ifsc_v1 end for;
-- for ifsc_v2 end for;
--for ifsc_v3 end for;
--	for ifsc_v4 end for;
for ifsc_v5 end for;
end configuration;