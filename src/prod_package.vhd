LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE prod_package IS 
	COMPONENT Prod 
		PORT( x : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
				y : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
				Sum : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
				Cout : OUT STD_LOGIC);
	END COMPONENT;
END prod_package;