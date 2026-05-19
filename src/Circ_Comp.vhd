-- Circuito Principal (Top-Level): Unidade Lógica e Aritmética (ULA)
-- Integra operações lógicas, aritméticas, produto e comparação com exibição em 7 segmentos.
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.compadder_package.all;
USE work.prodcomp_package.all;
USE work.Comparator_Signals.all;
USE work.Sig_package.all;
USE work.Ver_package.all;

ENTITY Circ_Comp IS
	PORT( SW : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
			HEX7 : OUT STD_LOGIC_VECTOR(0 TO 6); -- Sinal do operando A
			HEX6 : OUT STD_LOGIC_VECTOR(0 TO 6); -- Resultado principal (7 seg)
			HEX5 : OUT STD_LOGIC_VECTOR(0 TO 6); -- Sinal do operando B
			HEX4 : OUT STD_LOGIC_VECTOR(0 TO 6); -- Entrada A (Display)
			HEX3 : OUT STD_LOGIC_VECTOR(0 TO 6); -- Sinal do Resultado
			HEX2 : OUT STD_LOGIC_VECTOR(0 TO 6); -- Entrada B (Display)
			HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6); -- Identificador da Operação
			LEDR : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)); -- Flags e Comparadores
END Circ_Comp;

ARCHITECTURE Final OF Circ_Comp IS 
	-- Barramentos de dados internos
	SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);   -- Operando A
	SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);   -- Operando B
	SIGNAL C : STD_LOGIC_VECTOR(1 DOWNTO 0);   -- Parte de A para Produto
	SIGNAL D : STD_LOGIC_VECTOR(1 DOWNTO 0);   -- Parte de B para Produto
	
	-- Sinais de controle e carry
	SIGNAL C1 : STD_LOGIC; 
	SIGNAL C2 : STD_LOGIC;
	SIGNAL C3 : STD_LOGIC;
	SIGNAL Cout : STD_LOGIC;
	SIGNAL Cin : STD_LOGIC;
	SIGNAL Cin2 : STD_LOGIC;
	SIGNAL Overflow : STD_LOGIC;
	SIGNAL Opcode : STD_LOGIC_VECTOR(2 DOWNTO 0);
	
	-- Sinais para displays de 7 segmentos
	SIGNAL HEX7_a : STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL HEX5_a : STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL HEX3_a : STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL HEX2_SOMA : STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL HEX4_SOMA : STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL HEX2_SUB : STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL HEX4_SUB : STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL HEX2_PROD : STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL HEX4_PROD : STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL HEX2_COMP : STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL HEX4_COMP : STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL Res1 : STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL Res2 : STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL Res3 : STD_LOGIC_VECTOR(0 TO 6);    -- Resultado formatado para HEX
	
	-- Resultados de comparação e operações
	SIGNAL Equ : STD_LOGIC;
	SIGNAL Grt : STD_LOGIC;
	SIGNAL Lst : STD_LOGIC;
	SIGNAL Operator_Vector : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL Operation1 : STD_LOGIC_VECTOR(3 DOWNTO 0); -- AND
	SIGNAL Operation2 : STD_LOGIC_VECTOR(3 DOWNTO 0); -- OR
	SIGNAL Operation3 : STD_LOGIC_VECTOR(3 DOWNTO 0); -- NOT
	SIGNAL B_not      : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Complemento de B
	SIGNAL HEX6_aux1 : STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL HEX6_aux2 : STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL HEX6_aux3 : STD_LOGIC_VECTOR(0 TO 6);
	SIGNAL Flag_Vector : STD_LOGIC_VECTOR(2 DOWNTO 0); -- Carry, Zero, Overflow
	
	-- Resultados aritméticos
	SIGNAL Soma : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL Sub : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL Sum_Prod : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL Zero : STD_LOGIC;
	SIGNAL Res : STD_LOGIC_VECTOR(2 DOWNTO 0);      -- Vetor para lógica de sinal
	SIGNAL Auxiliar : STD_LOGIC;
	SIGNAL Zero_aux : STD_LOGIC;
	SIGNAL Ver_Res : STD_LOGIC_VECTOR(3 DOWNTO 0);  -- Vetor para verificação de zero
BEGIN
	-- Mapeamento das chaves (Switches)
	A <= SW(10 DOWNTO 7);
	B <= SW(6 DOWNTO 3);
	B_not <= NOT B; -- Necessário para subtração
	
	C <= SW(8 DOWNTO 7);
	D <= SW(4 DOWNTO 3);
	Opcode <= SW(2 DOWNTO 0);
	
	Cin <= SW(0);  -- Carry de entrada manual (ajustável via switch)
	
	-- Operações Lógicas Bit-a-Bit
	Operation1 <= A AND B;
	Operation2 <= A OR B;
	Operation3 <= NOT B;
	
	-- Instanciação dos Componentes de Cálculo
	-- Soma: A + B
	Operation4: adder_comp PORT MAP (Cin,A,B,C1,Soma,HEX4_SOMA,HEX2_SOMA,Res1);
	-- Subtração: A + (NOT B) + 1
	Operation5: adder_comp PORT MAP (Cin,A,B_not,C2,Sub,HEX4_SUB,HEX2_SUB,Res2);
	-- Produto (2x2 bits)
	Operation6: Prod_Comp PORT MAP (C,D,C3,Sum_Prod,HEX4_PROD,HEX2_PROD,Res3);
	-- Comparador de Magnitude
	Operation7: Comparator_Operations PORT MAP (A,B,Equ,Grt,Lst,HEX4_COMP,HEX2_COMP);
	
	-- Seleção do bit de sinal conforme a operação selecionada
	WITH Opcode SELECT 
     Auxiliar <= Operation1(3) WHEN "001",
	              Operation2(3) WHEN "010",
					  Operation3(3) WHEN "011",
					  Soma(3) WHEN "100",
	              Sub(3) WHEN "101",
					  Sum_Prod(3) WHEN "110",
					  '0' WHEN "111",
					  '0' WHEN OTHERS;

	Res <= Auxiliar&A(3)&B(3);	
	Sign: Sig PORT MAP (Res,HEX7,HEX5,HEX3);
	
	Operator_Vector <= Lst&Grt&Equ;
	
	WITH Opcode SELECT
	  Overflow <= C1 XOR (B(2) AND A(2)) WHEN "100",
	              C2 XOR (B(2) AND A(2)) WHEN "101",
					  C3 WHEN "110",
					  '0' WHEN OTHERS;
	
	WITH Opcode SELECT
	  Cout <= C1 WHEN "100",
	          C2 WHEN "101",
				 C3 WHEN "110",
				 '0' WHEN OTHERS;
	
	-- Seleção do resultado binário para verificação de zero
	WITH Opcode SELECT
	  Ver_Res <= Operation1 WHEN "001",
	              Operation2 WHEN "010",
					  Operation3 WHEN "011",
					  Soma WHEN "100",
	              Sub WHEN "101",
					  Sum_Prod WHEN "110",
					  "0000" WHEN "111",
					  "0000" WHEN OTHERS;
	
	verify: Ver PORT MAP (Ver_Res,Zero_aux);
	
	-- Controle da Flag Zero
	WITH Opcode SELECT 
	  Zero <= '0' WHEN "000", 
	          Zero_aux WHEN "001" | "010" | "011" | "100" | "101" | "110",
	          '0' WHEN OTHERS;
	
	Flag_Vector <= Overflow&Zero&Cout; -- Organização das flags
				  
	-- Multiplexação das saídas para Displays HEX4 e HEX2 (Inputs A/B e sinais auxiliares)
	WITH Opcode SELECT
		HEX4 <= HEX4_SOMA WHEN "001" | "010" | "100" | "011",
				  HEX4_SOMA WHEN "101",
				  HEX4_PROD WHEN "110",
				  HEX4_COMP WHEN "111",
				  "1111111" WHEN OTHERS;
				  
	WITH Opcode SELECT
		HEX2 <= HEX2_SOMA WHEN "001" | "010" | "100" | "011",
				  HEX2_SOMA WHEN "101",
				  HEX2_PROD WHEN "110",
				  HEX2_COMP WHEN "111",
				  "1111111" WHEN OTHERS; 
				  
	-- Identificação visual da operação no display HEX0
	WITH Opcode SELECT
		HEX0 <= "1001111" WHEN "001",
	           "0010010" WHEN "010",
				  "0000110" WHEN "011",
				  "1001100" WHEN "100",
				  "0100100" WHEN "101",
				  "0100000" WHEN "110",
				  "0001111" WHEN "111",
				  "0000001" WHEN OTHERS; 
	
	-- Decodificadores de 7 segmentos para resultados lógicos (Op 1, 2 e 3)
	WITH Operation1 SELECT
	   HEX6_aux1 <= "0000001" WHEN "0000",
					"1001111" WHEN "0001",
					"0010010" WHEN "0010",
					"0000110" WHEN "0011",
					"1001100" WHEN "0100",
					"0100100" WHEN "0101",
					"0100000" WHEN "0110",
					"0001111" WHEN "0111",
					"0000000" WHEN "1000",
					"0001111" WHEN "1001",
					"0100000" WHEN "1010",
					"0100100" WHEN "1011",
					"1001100" WHEN "1100",
					"0000110" WHEN "1101",
					"0010010" WHEN "1110",
					"1001111" WHEN "1111",
					"0000000" WHEN OTHERS;
					
	WITH Operation2 SELECT
	   HEX6_aux2 <= "0000001" WHEN "0000",
					"1001111" WHEN "0001",
					"0010010" WHEN "0010",
					"0000110" WHEN "0011",
					"1001100" WHEN "0100",
					"0100100" WHEN "0101",
					"0100000" WHEN "0110",
					"0001111" WHEN "0111",
					"0000000" WHEN "1000",
					"0001111" WHEN "1001",
					"0100000" WHEN "1010",
					"0100100" WHEN "1011",
					"1001100" WHEN "1100",
					"0000110" WHEN "1101",
					"0010010" WHEN "1110",
					"1001111" WHEN "1111",
					"0000000" WHEN OTHERS;
					
	WITH Operation3 SELECT
	   HEX6_aux3 <= "0000001" WHEN "0000",
					"1001111" WHEN "0001",
					"0010010" WHEN "0010",
					"0000110" WHEN "0011",
					"1001100" WHEN "0100",
					"0100100" WHEN "0101",
					"0100000" WHEN "0110",
					"0001111" WHEN "0111",
					"0000000" WHEN "1000",
					"0001111" WHEN "1001",
					"0100000" WHEN "1010",
					"0100100" WHEN "1011",
					"1001100" WHEN "1100",
					"0000110" WHEN "1101",
					"0010010" WHEN "1110",
					"1001111" WHEN "1111",
					"0000000" WHEN OTHERS;
	
	-- Seleção final do display de resultado (HEX6)
	WITH Opcode SELECT
		HEX6 <= "1111111" WHEN "000",
		        HEX6_aux1 WHEN "001",
				  HEX6_aux2 WHEN "010",
				  HEX6_aux3 WHEN "011",
				  Res1 WHEN "100",
				  Res2 WHEN "101", -- Alinhado com Opcode de Subtração
		        Res3 WHEN "110",
			"1111111" WHEN OTHERS;
			
	-- Saídas para LEDs (Comparação)
	WITH Opcode SELECT 
		LEDR(5 DOWNTO 3) <= Operator_Vector WHEN "111",
		                    "000"WHEN OTHERS; 

	-- Saídas para LEDs (Flags de Status)
	WITH Opcode SELECT
		LEDR(2 DOWNTO 0) <= Flag_Vector WHEN "100" | "101" | "110" | "111",
                        "000" WHEN OTHERS;
END Final;