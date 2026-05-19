-- Componente: Prod (Multiplicador de 2x2 bits)
-- Descrição: Realiza a multiplicação de dois vetores de 2 bits gerando um resultado de 4 bits.
-- A lógica utiliza portas AND para produtos parciais e somadores completos para a soma final.
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.fulladd_package.all; -- Importa o componente fulladd

ENTITY Prod IS
PORT(	x : IN STD_LOGIC_VECTOR(1 DOWNTO 0);         -- Entrada x (2 bits)
		y : IN STD_LOGIC_VECTOR(1 DOWNTO 0);         -- Entrada y (2 bits)
		Sum_Prod : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);  -- Vetor de saída com o produto
		Cout : OUT STD_LOGIC);                        -- Carry de saída do MSB
END Prod;

ARCHITECTURE Pon OF Prod IS
	SIGNAL Product : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Armazena os resultados das portas AND (produtos parciais)
	SIGNAL Coutaux : STD_LOGIC;                    -- Carry intermediário entre as somas
	SIGNAL Cout_1  : STD_LOGIC;                    -- Carry final que define o MSB
BEGIN
	-- Geração dos produtos parciais bit a bit
	Product(0) <= x(0) AND y(0);
	Product(1) <= x(1) AND y(0);
	Product(2) <= x(0) AND y(1);
	Product(3) <= x(1) AND y(1);
	
	-- O primeiro bit do produto final é sempre o resultado de x(0) AND y(0)
	Sum_Prod(0) <= Product(0);
	
	-- Soma dos produtos parciais para gerar o segundo bit do resultado
	operation0: fulladd PORT MAP ('0',Product(1),Product(2),Sum_Prod(1),Coutaux);
	
	-- Correção: Remove Product(2) redundante. Soma apenas o carry anterior com o bit MSB do produto.
	operation1: fulladd PORT MAP (Coutaux,Product(3),'0',Sum_Prod(2),Cout_1);
	
	Cout <= Cout_1;          -- O carry final é enviado para a saída
	Sum_Prod(3) <= Cout_1;   -- O quarto bit do produto é definido pelo carry final da soma
END Pon;	
	