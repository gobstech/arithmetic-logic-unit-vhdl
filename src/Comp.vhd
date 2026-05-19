-- Componente: Comparador de Magnitude de 4 bits
-- Descrição: Este módulo compara dois vetores binários de 4 bits (x e y) 
--            e ativa saídas específicas para Igual (E), Maior (G) ou Menor (L).
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Comp IS
	PORT( x : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- Operando A (4 bits)
			y : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- Operando B (4 bits)
			E : OUT STD_LOGIC;                    -- Saída: '1' se x = y
			G : OUT STD_LOGIC;                    -- Saída: '1' se x > y
			L : OUT STD_LOGIC);                   -- Saída: '1' se x < y
END Comp;

ARCHITECTURE Comp_Work OF Comp IS
	-- Sinais intermediários para processamento lógico
	SIGNAL I : STD_LOGIC_VECTOR(3 DOWNTO 0);     -- Resultado da comparação de igualdade bit a bit
	SIGNAL J : STD_LOGIC_VECTOR(3 DOWNTO 0);     -- Condições parciais de "Maior Que" (Greater Than)
	SIGNAL E_aux : STD_LOGIC;                    -- Buffer interno para a saída de igualdade
	SIGNAL G_aux : STD_LOGIC;                    -- Buffer interno para a saída de "maior que"
	
BEGIN
	-- Comparação de igualdade bit a bit: I(n) será '1' se os bits na posição n forem idênticos.
	I(0) <= (x(0) XNOR y(0));
	I(1) <= (x(1) XNOR y(1));
	I(2) <= (x(2) XNOR y(2));
	I(3) <= (x(3) XNOR y(3));
	
	-- Lógica de magnitude bit a bit:
	-- Determina se x > y analisando do bit mais significativo (MSB) para o menos significativo (LSB).
	J(3) <=  x(3) AND NOT y(3);                            -- x é maior se MSB de x é 1 e y é 0
	J(2) <=  x(2) AND NOT y(2) AND I(3);                   -- x é maior se bits 3 são iguais e bit 2 de x é maior
	J(1) <=  x(1) AND NOT y(1) AND I(2) AND I(3);          -- x é maior se bits 3,2 são iguais e bit 1 de x é maior
	J(0) <=  x(0) AND NOT y(0) AND I(1) AND I(2) AND I(3); -- x é maior se bits 3,2,1 são iguais e LSB de x é maior

	-- Atribuição da Igualdade: x = y apenas se todos os pares de bits (I) forem iguais a '1'.
	E_aux <= (x(0) XNOR y(0)) AND (x(1) XNOR y(1)) AND (x(2) XNOR y(2)) AND (x(3) XNOR y(3));
	
	-- Atribuição de "Maior Que": Combinação das condições J ou comparação direta dos bits com pesos de igualdade.
	G_aux <= (x(3) AND NOT y(3)) OR (x(2) AND NOT y(2) AND (x(3) XNOR y(3))) OR (x(1) AND NOT y(1) AND (x(2) XNOR y(2)) AND (x(3) XNOR y(3))) OR (x(1) AND NOT y(1) AND I(2) AND (x(3) XNOR y(3))) OR (x(0) AND NOT y(0) AND I(1) AND I(2) AND (x(3) XNOR y(3)));
	
	-- Mapeamento dos sinais auxiliares para as portas de saída físicas
	E <= E_aux;
	G <= G_aux;
	
	-- Lógica de "Menor Que": Se x não é igual a y e não é maior que y, obrigatoriamente é menor.
	L <= NOT (E_aux OR G_aux); 
END Comp_Work;