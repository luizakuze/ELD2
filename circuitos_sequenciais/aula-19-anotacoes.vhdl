# do contador_bcd_run_msim_rtl_vhdl.do
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
# vlib rtl_work
# vmap work rtl_work
# Model Technology ModelSim - Intel FPGA Edition vmap 2020.1 Lib Mapping Utility 2020.02 Feb 28 2020
# vmap work rtl_work 
# Copying /opt/intelFPGA/20.1/modelsim_ae/linuxaloem/../modelsim.ini to modelsim.ini
# Modifying modelsim.ini
# 
# vcom -93 -work work {/home/luiza.k12/eld2/aula-13/p2/contador_bcd.vhd}
# Model Technology ModelSim - Intel FPGA Edition vcom 2020.1 Compiler 2020.02 Feb 28 2020
# Start time: 11:14:11 on Apr 05,2024
# vcom -reportprogress 300 -93 -work work /home/luiza.k12/eld2/aula-13/p2/contador_bcd.vhd 
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package NUMERIC_STD
# -- Compiling entity contador_bcd
# -- Compiling architecture ifsc_v1 of contador_bcd
# End time: 11:14:11 on Apr 05,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# 
# 
# stdin: <EOF>
vsim work.contador_bcd
# vsim work.contador_bcd 
# Start time: 11:14:16 on Apr 05,2024
# //  ModelSim - Intel FPGA Edition 2020.1 Feb 28 2020 Linux 4.19.0-26-amd64
# //
# //  Copyright 1991-2020 Mentor Graphics Corporation
# //  All Rights Reserved.
# //
# //  ModelSim - Intel FPGA Edition and its associated documentation contain trade
# //  secrets and commercial or financial information that are the property of
# //  Mentor Graphics Corporation and are privileged, confidential,
# //  and exempt from disclosure under the Freedom of Information Act,
# //  5 U.S.C. Section 552. Furthermore, this information
# //  is prohibited from disclosure under the Trade Secrets Act,
# //  18 U.S.C. Section 1905.
# //
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.numeric_std(body)
# Loading work.contador_bcd(ifsc_v1)
vsim work.contador_bcd(ifsc_v1)
# End time: 11:14:30 on Apr 05,2024, Elapsed time: 0:00:14
# Errors: 0, Warnings: 0
# vsim work.contador_bcd(ifsc_v1) 
# Start time: 11:14:30 on Apr 05,2024
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.numeric_std(body)
# Loading work.contador_bcd(ifsc_v1)
add wave -position end  sim:/contador_bcd/clk
add wave -position end  sim:/contador_bcd/rst
add wave -position end  sim:/contador_bcd/dezena
add wave -position end  sim:/contador_bcd/unidade
force -freeze sim:/contador_bcd/rst 1 0
force -freeze sim:/contador_bcd/rst 1 0, 0 20
force -freeze sim:/contador_bcd/clk 1 0, 0 {50 ps} -r 100
run 10500

f





library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_bcd is
	port (
		clk, rst: std_logic;
		dezena, unidade    : out std_logic_vector (3 downto 0)
	);
end entity;

architecture ifsc_v1 of contador_bcd is
begin
	process (clk,rst)
		variable count_d : integer range 0 to 9;
		variable count_u : integer range 0 to 9;
	begin
		if (rst = '1') then
			count_d := 0;
			count_u := 0;
		elsif (rising_edge(clk)) then
			if count_u = 9 then
				count_u := 0;
				if (count_d = 9)  then
					count_d := 0;
				else
					count_d := count_d + 1;
				end if;
			else 
				count_u := count_u + 1;
			end if;
		end if;
		dezena <= std_LOGIC_VECTOR(to_unsigned(count_d,4)); 
		unidade <= std_LOGIC_VECTOR(to_unsigned(count_u,4)); 
	end process;
end architecture;


library ieee;
use ieee.std_logic_1164.all;

entity carry_ripple_adder is
	generic (N : integer := 3);
	port (
		a, b : std_logic_vector (N-1 downto 0);
		cin  : std_logic;
		s    : out std_logic_vector (N-1 downto 0);
		cout : out std_logic
	);
end entity;

architecture estrutural_sequencial_v1 of carry_ripple_adder is
begin
	-- Uso de um codigo sequencial para geracao de um circuito combinacional
	process (a, b, cin) is
		variable c : std_logic;
	begin
		c := cin;
		for i in 0 to N-1 loop
			s(i) <= a(i) xor b(i) xor c;
			c := (a(i) and b(i)) or (a(i) and c) or (b(i) and c);
		end loop;
		cout <= c;
	end process;
end architecture;

architecture estrutural_concorrente_v1 of carry_ripple_adder is
	signal c : std_logic_vector(N downto 0);
begin
	-- Uso de um codigo concorrente para geracao de um circuito combinacional
	c(0) <= cin;
	l1: for i in 0 to N-1 generate
		s(i) <= a(i) xor b(i) xor c(i);
		c(i+1) <= (a(i) and b(i)) or (a(i) and c(i)) or (b(i) and c(i));
	end generate;
	cout <= c(N);
end architecture;

configuration cfg_ifsc of carry_ripple_adder is
--	for estrutural_sequencial_v1 end for;
	for estrutural_concorrente_v1 end for;
end configuration;
