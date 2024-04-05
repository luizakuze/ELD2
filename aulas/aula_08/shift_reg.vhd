library ieee;
-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
use ieee.std_logic_1164.all;

entity shift_reg is 
	generic (N: natural := 20);
	port( 
	clock, reset, preset, enable: in std_LOGIC; 
	d_in : in std_LOGIC;
	q_out : out std_LOGIC);
end entity;

architecture ifsc_v1 of shift_reg is
	signal d: std_LOGIC_VECTOR(N-1 downto 0);
	signal q: std_LOGIC_VECTOR(N-1 downto 0);
begin
d(0) <= d_in;
l1: for k in N-1 downto 0 generate
		process (clock,reset)
		begin
			if (reset = '1') then
				q(k) <= '0';
			elsif (rising_edge(clock)) then
				q(k) <= d(k);
			end if;
		end process;
	 end generate;

l2: for k in 1 to N-1 generate
		d(k) <= q(k-1);
	 end generate;
	 q_out <= q(N-1);
	 end architecture;

configuration cfg_ifsc2 of shift_reg is
	for ifsc_v1 end for;
end configuration;