-- Pacote: fulladd_package
-- Objetivo: Declarar o componente somador completo de 1 bit (fulladd).
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE fulladd_package IS
	COMPONENT fulladd -- Declaração do componente somador completo básico
		PORT( Cin, x, y : IN STD_LOGIC; -- Sinais de entrada: Carry-in e bits individuais
				s, Cout : OUT STD_LOGIC);  -- Sinais de saída: Soma e Carry-out
	END COMPONENT;
END fulladd_package;