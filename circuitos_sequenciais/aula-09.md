## 1. Shift Register (Registrador de Deslocamento)
````vhdl
entity shift_reg is
    generic (N : natural := 4);
    port (
        clock, reset : in std_LOGIC;
        d_in: in std_LOGIC;
        q_out : out std_LOGIC);
end entity;
````
Este é um exemplo de uma entidade em VHDL que define um registrador de deslocamento. Ele tem portas de entrada para o sinal de clock (clock), sinal de reset (reset) e entrada de dados (d_in), e uma porta de saída para o sinal de saída (q_out). Esta parte é principalmente declarativa e não executa nenhuma operação.

````vhdl
architecture ifsc_v1 of shift_reg is
    signal d: std_logic_vector(N-1 downto 0);
    signal q: std_logic_vector(N-1 downto 0);
begin
    ...
end architecture;
````
Aqui, na arquitetura, são declarados os sinais internos d e q, que representam os registradores de deslocamento de entrada e saída, respectivamente. Esta parte é apenas uma descrição da estrutura do registrador de deslocamento e é considerada concorrente, pois não especifica uma sequência de execução.

## 2. Contador Crescente 0-N
````vhdl
entity conta_0_N is
    generic (MAX : natural := 15);
    port (clock, reset: in std_logic; q : out integer range 0 to MAX);
end entity;
````
Esta é uma entidade que define um contador crescente de 0 a N, onde N é especificado pelo parâmetro genérico MAX. Ele possui portas de entrada para o sinal de clock (clock) e o sinal de reset (reset), e uma porta de saída para o valor do contador (q), que é um número inteiro entre 0 e MAX.

````vhdl
architecture ifsc_v1 of conta_0_N is
begin
    process (clock,reset)
        variable count : integer range 0 to MAX;
    begin
        if (reset = '1') then
            count := 0;
        elsif (rising_edge(clock)) then
            count := count + 1;
        end if;
        q <= count;
    end process;
end architecture;
````
Na arquitetura, há um processo sequencial que é sensível às mudanças em clock e reset. Dentro desse processo, uma variável count é declarada para armazenar o valor atual do contador. Se ocorrer um sinal de reset (reset = '1'), o contador é reiniciado para 0. Se ocorrer uma borda de subida em clock, o contador é incrementado em 1. O valor atual do contador é atribuído à saída q. Este processo é sequencial, pois as operações dentro dele são executadas em sequência, de acordo com a mudança nos sinais de entrada.

Diferenças:
- O Shift Register é um componente concorrente, pois sua arquitetura descreve a interconexão entre os elementos internos, sem especificar uma ordem de execução.
- O Contador Crescente 0-N é sequencial, pois a operação de contagem ocorre dentro de um processo sequencial que é sensível a sinais de clock e reset, e as operações são executadas em uma ordem determinística.
