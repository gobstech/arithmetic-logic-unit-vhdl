# Unidade Lógica Aritmética (ULA) em VHDL

Este projeto implementa uma Unidade Lógica Aritmética (ULA) de 4 bits desenvolvida para FPGAs (família Intel/Altera). A unidade processa operações aritméticas, lógicas e de comparação, exibindo os resultados em displays de 7 segmentos e sinalizando estados através de LEDs.

## 🎮 Interface de Usuário (Mapeamento de Hardware)

### Entradas (Switches)
*   **SW(10 DOWNTO 7):** Operando A (4 bits).
*   **SW(6 DOWNTO 3):** Operando B (4 bits).
*   **SW(2 DOWNTO 0):** **Opcode** (Seletor de Operação).

### Saídas (Displays e LEDs)
*   **HEX6:** Exibe o resultado da operação selecionada.
*   **HEX4 / HEX2:** Exibem os operandos de entrada (variável conforme a operação).
*   **LEDR(2 DOWNTO 0):** Flags Aritméticas `[Overflow, Zero, Carry Out]`.
*   **LEDR(5 DOWNTO 3):** Flags do Comparador `[Igual, Maior, Menor]`.

## 📑 Tabela de Operações (Opcodes)

| Opcode | Operação | Descrição |
| :--- | :--- | :--- |
| `001` | **AND** | Lógica E bit a bit entre A e B |
| `010` | **OR** | Lógica OU bit a bit entre A e B |
| `011` | **NOT** | Inversão lógica do Operando B |
| `100` | **SOMA** | Soma aritmética (A + B) |
| `101` | **SUB** | Subtração (A - B) via Complemento de 2 |
| `110` | **MULT** | Multiplicação de 2 bits (C * D) |
| `111` | **COMP** | Comparação de magnitude entre A e B |

## 🏗️ Arquitetura do Sistema

O projeto é estruturado de forma modular:

1.  **Circ_Comp.vhd (Top-Level):** Atua como o controlador central, realizando o roteamento dos sinais entre as chaves, os componentes internos e os displays/LEDs.
2.  **adder_comp.vhd / adder4.vhd:** Implementa um somador de 4 bits do tipo *Ripple Carry*. Na subtração, utiliza a lógica de inverter o operando B e somar 1 (Carry In = 1).
3.  **Prod.vhd:** Realiza a multiplicação de dois vetores de 2 bits, gerando um produto de 4 bits.
4.  **Comp.vhd:** Comparador de magnitude que identifica se o valor A é igual, maior ou menor que B através de portas lógicas fundamentais (XNOR, AND, OR).
5.  **Decodificadores de 7 Segmentos:** Integrados nos módulos de operação para converter valores binários em padrões hexadecimais legíveis nos displays da placa.

## 🛠️ Detalhes Técnicos

*   **Subtração:** Implementada através da arquitetura de soma: `A + (NOT B) + 1`.
*   **Flags de Status:**
    *   **Overflow:** Detectado através da lógica de XOR entre carries, indicando erro em operações aritméticas com sinal.
    *   **Cout:** Indica o transporte de saída da operação aritmética atual.
    *   **Zero:** Placeholder para detecção de resultado nulo (0000).

---
*Projeto desenvolvido como parte dos estudos de sistemas digitais e arquitetura de computadores por Enzo Marchi Romera e Gabriel de Oliveira Baptista.*
