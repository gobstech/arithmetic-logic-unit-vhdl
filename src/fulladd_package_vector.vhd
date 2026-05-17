LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE fulladd_package_vector IS
	COMPONENT adder4
		PORT( Cin : IN STD_LOGIC;
				x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
				Cout : OUT STD_LOGIC);
	END COMPONENT;
END fulladd_package_vector;