# Organização do código VHDL

## Package/Library
Conjunto de sub-programas que
descrevem, elementos e componentes já programados para serem
reutilizados.
```vhdl
library ieee;
use ieee.std_logic_1164.all; -- fornece tipo std_logic e operadores and, nand, or...
use ieee.numeric_std.all; -- operações matemáticas '+', '-', '>'... fornece os tipos signed e unsigned
```


## Entity 
Define as portas de entradas e saídas dos
circuitos na descrição.
```vhdl
entity nome_entidade is
generic (
        contante: const_type valor_constante
        );
port (
        sinal_entrada: in tipo_sinal;
        sinal_saida: out tipo_sinal
     );
end entity;
```
- Atribuição de *variável* tem efeito imediato.

## Architecture
Implementações do projeto;
descreve as relações entre as portas.

```vhdl
architecture arquivo of nome_arquitetura is
begin
...
end architecture;
```

## Configuration 
Define as arquiteturas que
serão utilizadas

```vhdl
configuration cfg_ifsc of nome_arquivo is
--	for ifsc_v1 end for;
--	for ifsc_v2 end for;
	for ifsc_v3 end for;
end configuration;
```

--- 

_Link estudos:_ ``https://edisciplinas.usp.br/pluginfile.php/2704790/mod_resource/content/1/Apostila%20de%20Introdu%C3%A7%C3%A3o%20a%20VHDL_2014.pdf``

_Link estudos:_ ``https://dcc.ufrj.br/~gabriel/circlog/VHDL-2.pdf``