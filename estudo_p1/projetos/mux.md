# Multiplexador

## Versão mux2x1

- __arch name = "mux2x1"__
- Somente tipo bit utilizado, não é preciso incluir novas bibliotecas.
````vhdl
library ieee;
use std_logic_1644.all;

entity mux2x1 is 
    port (
        x: in bit_vector (1 downto 0);
        sel: in bit_vector (1 downto 0);
        y: out bit
    );
end entity;

architecture ifsc_v1 of mux2x1 is
begin
    y <= (x(0) and sel(0)) or (x(1) and sel(1));
end architecture;
````

---

_Link:_ ``https://edisciplinas.usp.br/pluginfile.php/2704814/mod_resource/content/2/Aula%203%20VHDL%20Luiza%202017.pdf``