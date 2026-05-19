LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE compadder_package IS
	COMPONENT adder_comp
		PORT( Cin  : IN STD_LOGIC;
				A    : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				B    : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				Cout : OUT STD_LOGIC;
				s    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
				M1   : OUT STD_LOGIC_VECTOR(0 TO 6);
				M2   : OUT STD_LOGIC_VECTOR(0 TO 6);
				M3   : OUT STD_LOGIC_VECTOR(0 TO 6));
	END COMPONENT;
END compadder_package;