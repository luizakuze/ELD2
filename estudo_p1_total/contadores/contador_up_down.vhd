library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

-- Conta crescente ou decrescente de forma concorrente
entity contador_up_down is
	generic
	(
		MIN : natural := 0;
		MAX : natural := 49;
		UPDOWN : natural := 0 -- 0 => up; 1 => down
	);
	port
	(
		clk, rst		   : in std_logic;
		count_out   : out integer range MIN to MAX
	);
end entity;

architecture ifsc_v1 of contador_up_down is
begin
	L1: if UPDOWN = 0 generate
		process (clk, rst)
			variable cnt : integer range MIN to MAX;
		begin
			if rst = '1' then
				cnt := MIN;
			elsif (rising_edge(clk)) then
					if cnt = MAX then
						cnt := MIN;
					else
						cnt := cnt + 1;
					end if;
			end if;
			count_out <= cnt;
		end process;
	end generate;
	L2: if UPDOWN = 1 generate
		process (clk, rst)
			variable cnt : integer range MIN to MAX;
		begin
			if rst = '1' then
				cnt := MAX;
			elsif (rising_edge(clk)) then
					if cnt = MIN then
						cnt := MAX;
					else
						cnt := cnt - 1;
					end if;
			end if;
			count_out <= cnt;
		end process;	
	end generate;
end architecture;