-- registrador com rotacao
library ieee;
use ieee.std_logic_1164.all;
entity shift_rotate is
	generic (N: natural := 10);
   port(
      clk, reset: in std_logic;
      ctrl: in std_logic_vector(1 downto 0);
      d: in std_logic_vector(N-1 downto 0);
      q: out std_logic_vector(N-1 downto 0)
   );
end shift_rotate;

architecture ifsc_v1 of shift_rotate is
   signal r_reg: std_logic_vector(N-1 downto 0);
   signal r_next: std_logic_vector(N-1 downto 0);
begin
   -- register
   process(clk,reset)
   begin
      if (reset='1') then
         r_reg <= (others=>'0');
      elsif (clk'event and clk='1') then
         r_reg <= r_next;
      end if;
   end process;
   -- next-state logic
   with ctrl select --mux
      r_next <=
         r_reg                    when "00", --no op
         r_reg(N-2 downto 0) & r_reg(N-1) when "01", --shift left;
         r_reg(0) & r_reg(N-1 downto 1) when "10", --shift right;
         d                        when others;
   -- output
   q <= r_reg;
end ifsc_v1;