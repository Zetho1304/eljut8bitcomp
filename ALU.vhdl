library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
    port (
        A      : in  std_logic_vector(7 downto 0);
        B      : in  std_logic_vector(7 downto 0);
        ALU_Sel: in  std_logic_vector(2 downto 0);
        NZVC   : out std_logic_vector(3 downto 0);
        Result : out std_logic_vector(7 downto 0)
    );
end ALU;

architecture Behavioral of ALU is
    signal ALU_Result : std_logic_vector(7 downto 0);
    signal C, Z, V, N, add_ov, sub_ov : std_logic;
begin
    process(ALU_Sel, A, B)
    begin
        case ALU_Sel is
            when "000" => -- ADD
                ALU_Result <= std_logic_vector(unsigned(A) + unsigned(B));
            when "001" => -- SUB
                ALU_Result <= std_logic_vector(unsigned(B) - unsigned(A));
            when "010" => -- AND
                ALU_Result <= A and B;
            when "011" => -- OR
                ALU_Result <= A or B;
            when "100" => -- Increment
                ALU_Result <= std_logic_vector(unsigned(A) + 1);
            when "101" => -- Decrement
                ALU_Result <= std_logic_vector(unsigned(A) - 1);
            when others =>
                ALU_Result <= std_logic_vector(unsigned(A) + unsigned(B));
        end case;
    end process;

    Result <= ALU_Result;
    N      <= ALU_Result(7);
    Z      <= '1' when (ALU_Result = "00000000") else '0';

    -- Overflow flag
    add_ov <= (A(7) and B(7) and (not ALU_Result(7))) or ((not A(7)) and (not B(7)) and ALU_Result(7));
    sub_ov <= (A(7) and (not B(7)) and (not ALU_Result(7))) or ((not A(7)) and B(7) and ALU_Result(7));
    with ALU_Sel select
        V <= add_ov when "000",
             sub_ov when "001",
             '0' when others;
    
    -- Carry out flag
    C <= '0'; -- No carry out flag in this implementation
    
    NZVC <= N & Z & V & C;
end Behavioral;
