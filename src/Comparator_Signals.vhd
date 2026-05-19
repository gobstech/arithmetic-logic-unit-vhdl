-- Pacote: Comparator_Signals
-- Objetivo: Declarar o componente Comparator_Operations para permitir sua instância em outros designs.
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Comparator_Signals IS 
	COMPONENT Comparator_Operations -- Componente que une o comparador e a lógica de display
		PORT( x : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- Entrada A (4 bits)
			y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);      -- Entrada B (4 bits)
			e : OUT STD_LOGIC;                         -- Saída: Igual (Equal)
			g : OUT STD_LOGIC;                         -- Saída: Maior (Greater)
			l : OUT STD_LOGIC;                         -- Saída: Menor (Less)
			M1 : OUT STD_LOGIC_VECTOR(0 TO 6);         -- Saída para Display 7 Seg (referente a X)
			M2 : OUT STD_LOGIC_VECTOR(0 TO 6));        -- Saída para Display 7 Seg (referente a Y)
	END COMPONENT;
END Comparator_Signals;