--=============================
-- Listing 9.12 decimal counter
--=============================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity decimal_counter is
   port(
      clk, reset: in std_logic;
      d1, d10, d100: out std_logic_vector(3 downto 0)
   );
end entity;

--=============================
-- Listing 9.12 synchronous
--=============================

architecture concurrent_arch of decimal_counter is
   signal d1_reg, d10_reg, d100_reg: unsigned(3 downto 0);
   signal d1_next, d10_next, d100_next: unsigned(3 downto 0);
begin
   -- register
   process(clk,reset)
   begin
      if (reset='1') then
         d1_reg <= (others=>'0');
         d10_reg <= (others=>'0');
         d100_reg <= (others=>'0');
      elsif (clk'event and clk='1') then
         d1_reg <= d1_next;
         d10_reg <= d10_next;
         d100_reg <= d100_next;
      end if;
   end process;
   -- next-state logic
   d1_next <= "0000" when d1_reg=9 else
              d1_reg + 1;
   d10_next <= "0000" when (d1_reg=9 and d10_reg=9) else
               d10_reg + 1 when d1_reg=9 else
               d10_reg;
   d100_next <=
     "0000" when (d1_reg=9 and d10_reg=9 and d100_reg=9) else
     d100_reg + 1 when (d1_reg=9 and d10_reg=9) else
     d100_reg;
   -- output
   d1 <= std_logic_vector(d1_reg);
   d10 <= std_logic_vector(d10_reg);
   d100 <= std_logic_vector(d100_reg);
end architecture;

--=============================
-- Listing 9.13
--=============================
architecture if_arch of decimal_counter is
   signal d1_reg, d10_reg, d100_reg: unsigned(3 downto 0);
   signal d1_next, d10_next, d100_next: unsigned(3 downto 0);
begin
   -- register
   process(clk,reset)
   begin
      if (reset='1') then
         d1_reg <= (others=>'0');
         d10_reg <= (others=>'0');
         d100_reg <= (others=>'0');
      elsif (clk'event and clk='1') then
         d1_reg <= d1_next;
         d10_reg <= d10_next;
         d100_reg <= d100_next;
      end if;
   end process;
   -- next-state logic
   process(d1_reg,d10_reg,d100_reg)
   begin
      d10_next <= d10_reg;
      d100_next <= d100_reg;
      if d1_reg/=9 then
         d1_next <= d1_reg + 1;
      else -- reach --9
         d1_next <= "0000";
         if d10_reg/=9 then
            d10_next <= d10_reg + 1;
         else -- reach -99
            d10_next <= "0000";
            if d100_reg/=9 then
               d100_next <= d100_reg + 1;
            else -- reach 999
               d100_next <= "0000";
            end if;
         end if;
      end if;
   end process;
   -- output
   d1 <= std_logic_vector(d1_reg);
   d10 <= std_logic_vector(d10_reg);
   d100 <= std_logic_vector(d100_reg);
end architecture;


--=============================
-- Listing 9.12 asynchronous
--=============================

architecture assinc_arch of decimal_counter is
   signal d1_reg, d10_reg, d100_reg: unsigned(3 downto 0);
   signal d1_next, d10_next, d100_next: unsigned(3 downto 0);
    signal clk_c, clk_d: std_logic := '1';
begin
   -- register unidade
   process(clk,reset)
   begin
      if (reset='1') then
         d1_reg <= (others=>'0');
      elsif (clk'event and clk='1') then
         d1_reg <= d1_next;
      end if;
   end process;
   -- register dezena
   process(clk_d,reset)
   begin
      if (reset='1') then
         d10_reg <= (others=>'0');
      elsif (clk_d'event and clk_d='1') then
         d10_reg <= d10_next;
      end if;
   end process;
   -- register centena
   process(clk_c,reset)
   begin
      if (reset='1') then
         d100_reg <= (others=>'0');
      elsif (clk_c'event and clk_c='1') then
         d100_reg <= d100_next;
      end if;
   end process;
    
   -- next-state logic
   d1_next <= "0000" when d1_reg=9 else d1_reg + 1;
   clk_d <= '1' when d1_reg=0 else '0';
   d10_next <= "0000" when d10_reg=9 else d10_reg + 1;
   clk_c <= '1' when d10_reg=0 else '0';
   d100_next <= "0000" when d100_reg=9 else d100_reg + 1;
   -- output
   d1 <= std_logic_vector(d1_reg);
   d10 <= std_logic_vector(d10_reg);
   d100 <= std_logic_vector(d100_reg);
end architecture;


configuration dc_cfg of decimal_counter is
   for concurrent_arch end for;
--    for if_arch end for;
--    for assinc_arch end for;
end configuration;