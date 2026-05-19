LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Comp IS
	PORT( x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			E : OUT STD_LOGIC;
			G : OUT STD_LOGIC;
			L : OUT STD_LOGIC);
END Comp;

ARCHITECTURE Comp_Work OF Comp IS
	SIGNAL I : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL J : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL E_aux : STD_LOGIC;
	SIGNAL G_aux : STD_LOGIC;
	
BEGIN
	-- Comparação de igualdade bit a bit usando NOT XOR (equivalente ao XNOR)
	-- Isso garante maior compatibilidade e clareza na detecção de bits iguais.
	I(0) <= (x(0) XNOR y(0));
	I(1) <= (x(1) XNOR y(1));
	I(2) <= (x(2) XNOR y(2));
	I(3) <= (x(3) XNOR y(3));
	
	-- Lógica para "Maior Que" (G): x é maior que y se o bit significativo de x for 1 e o de y for 0,
	-- ou se os bits mais significativos forem iguais e o próximo bit seguir a mesma regra.
	J(3) <=  x(3) AND NOT y(3);                        -- Bit 3 (MSB) é determinante
	J(2) <=  x(2) AND NOT y(2) AND I(3);               -- Bit 2 decide se Bit 3 é igual
	J(1) <=  x(1) AND NOT y(1) AND I(2) AND I(3);      -- Bit 1 decide se Bits 3 e 2 são iguais
	J(0) <=  x(0) AND NOT y(0) AND I(1) AND I(2) AND I(3); -- LSB decide se todos os outros são iguais

	-- Atribuição dos sinais auxiliares
	E_aux <= (x(0) XNOR y(0)) AND (x(1) XNOR y(1)) AND (x(2) XNOR y(2)) AND (x(3) XNOR y(3));
	G_aux <= (x(3) AND NOT y(3)) OR (x(2) AND NOT y(2) AND (x(3) XNOR y(3))) OR (x(1) AND NOT y(1) AND (x(2) XNOR y(2)) AND (x(3) XNOR y(3))) OR (x(1) AND NOT y(1) AND I(2) AND (x(3) XNOR y(3))) OR (x(0) AND NOT y(0) AND I(1) AND I(2) AND (x(3) XNOR y(3)));
	E <= E_aux;
	G <= G_aux;
	L <= NOT (E_aux OR G_aux);
END Comp_Work;