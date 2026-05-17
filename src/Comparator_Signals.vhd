LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Comparator_Signals IS 
	COMPONENT Comparator_Operations
		PORT( x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			e : OUT STD_LOGIC;
			g : OUT STD_LOGIC;
			l : OUT STD_LOGIC;
			M1 : OUT STD_LOGIC_VECTOR(0 TO 6);
			M2 : OUT STD_LOGIC_VECTOR(0 TO 6));
	END COMPONENT;
END Comparator_Signals;