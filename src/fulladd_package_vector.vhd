-- Pacote: fulladd_package_vector
-- Objetivo: Declarar o componente somador de 4 bits (adder4) para uso modular.
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE fulladd_package_vector IS
	COMPONENT adder4 -- Declaração do somador de 4 bits que utiliza vetores
		PORT( Cin : IN STD_LOGIC;                    -- Carry de entrada
				x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);   -- Operando A (vetor de 4 bits)
				y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);   -- Operando B (vetor de 4 bits)
				s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);  -- Resultado da soma (vetor de 4 bits)
				Cout : OUT STD_LOGIC);                 -- Carry de saída
	END COMPONENT;
END fulladd_package_vector;