LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Comparator_package IS
	COMPONENT Comp 
		PORT( x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			E : OUT STD_LOGIC;
			G : OUT STD_LOGIC;
			L : OUT STD_LOGIC);
	END COMPONENT;
END Comparator_package;