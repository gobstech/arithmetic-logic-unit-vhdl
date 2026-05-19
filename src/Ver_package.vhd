LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Ver_package IS 
	COMPONENT Ver
		PORT( Res : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				Zero : OUT STD_LOGIC);
	END COMPONENT;
END Ver_package;