# Tipos - Sinais

## BIT, BIT_VECTOR (sequencial/concorrente)
- '0' ou '1'
- NÃO necessitam de bibliotecas

## STD_LOGIC, STD_LOGIC_VECTOR (sequencial/concorrente)
- '0', '1', '-' (dont't case), 'Z' (alta impedância)
- Bibliotecas: ```library ieee;```  ```use ieee.std_logic_1164.all;```

## CONSTANT (sequencial)
- Valor constante.

## VARIABLE (sequencial)
- Valores na parte sequencial.

## SIGNAL (concorrente)
- Dados de dentro para fora da entidade ou entre componentes internos do circuito que atuam como fios.
- Armazena "variáveis temporárias".

--- 

# Atribuições 

- **<=** SINAL
- **:=** VARIÁVEL, CONSTANTE