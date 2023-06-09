library IEEE;
use IEEE.std_logic_1164.all;

entity computer_tb is
end entity computer_tb;

architecture computer_tb of computer_tb is
        
    constant t_clk_per : time := 20 ns;  -- Period of a 50MHz Clock

    -- Component Declaration
    component computer
        port (
            clock         : in   std_logic;
            reset         : in   std_logic;
            port_in_00    : in   std_logic_vector(7 downto 0);
            port_in_01    : in   std_logic_vector(7 downto 0);
            port_in_02    : in   std_logic_vector(7 downto 0);
            port_in_03    : in   std_logic_vector(7 downto 0);
            port_in_04    : in   std_logic_vector(7 downto 0);
            port_in_05    : in   std_logic_vector(7 downto 0);
            port_in_06    : in   std_logic_vector(7 downto 0);
            port_in_07    : in   std_logic_vector(7 downto 0);
            port_in_08    : in   std_logic_vector(7 downto 0);
            port_in_09    : in   std_logic_vector(7 downto 0);
            port_in_10    : in   std_logic_vector(7 downto 0);
            port_in_11    : in   std_logic_vector(7 downto 0);
            port_in_12    : in   std_logic_vector(7 downto 0);
            port_in_13    : in   std_logic_vector(7 downto 0);
            port_in_14    : in   std_logic_vector(7 downto 0);
            port_in_15    : in   std_logic_vector(7 downto 0);                                                                   
            port_out_00   : out  std_logic_vector(7 downto 0);
            port_out_01   : out  std_logic_vector(7 downto 0);
            port_out_02   : out  std_logic_vector(7 downto 0);
            port_out_03   : out  std_logic_vector(7 downto 0);
            port_out_04   : out  std_logic_vector(7 downto 0);
            port_out_05   : out  std_logic_vector(7 downto 0);
            port_out_06   : out  std_logic_vector(7 downto 0);
            port_out_07   : out  std_logic_vector(7 downto 0);
            port_out_08   : out  std_logic_vector(7 downto 0);
            port_out_09   : out  std_logic_vector(7 downto 0);
            port_out_10   : out  std_logic_vector(7 downto 0);
            port_out_11   : out  std_logic_vector(7 downto 0);
            port_out_12   : out  std_logic_vector(7 downto 0);
            port_out_13   : out  std_logic_vector(7 downto 0);
            port_out_14   : out  std_logic_vector(7 downto 0);
            port_out_15   : out  std_logic_vector(7 downto 0)
        );
    end component;

    -- Signal Declaration
    signal clock_TB       : std_logic;
    signal reset_TB       : std_logic;
    signal port_out_00_TB : std_logic_vector(7 downto 0);
    signal port_out_01_TB : std_logic_vector(7 downto 0);
    signal port_out_02_TB : std_logic_vector(7 downto 0);
    signal port_out_03_TB : std_logic_vector(7 downto 0);
    signal port_out_04_TB : std_logic_vector(7 downto 0);
    signal port_out_05_TB : std_logic_vector(7 downto 0);
    signal port_out_06_TB : std_logic_vector(7 downto 0);
    signal port_out_07_TB : std_logic_vector(7 downto 0);
    signal port_out_08_TB : std_logic_vector(7 downto 0);
    signal port_out_09_TB : std_logic_vector(7 downto 0);
    signal port_out_10_TB : std_logic_vector(7 downto 0);
    signal port_out_11_TB : std_logic_vector(7 downto 0);
    signal port_out_12_TB : std_logic_vector(7 downto 0);
    signal port_out_13_TB : std_logic_vector(7 downto 0);
    signal port_out_14_TB : std_logic_vector(7 downto 0);
    signal port_out_15_TB : std_logic_vector(7 downto 0);
    signal port_in_00_TB  : std_logic_vector(7 downto 0);
    signal port_in_01_TB  : std_logic_vector(7 downto 0);
    signal port_in_02_TB  : std_logic_vector(7 downto 0);
    signal port_in_03_TB  : std_logic_vector(7 downto 0);
    signal port_in_04_TB  : std_logic_vector(7 downto 0);
    signal port_in_05_TB  : std_logic_vector(7 downto 0);
    signal port_in_06_TB  : std_logic_vector(7 downto 0);
    signal port_in_07_TB  : std_logic_vector(7 downto 0);
    signal port_in_08_TB  : std_logic_vector(7 downto 0);
    signal port_in_09_TB  : std_logic_vector(7 downto 0);
    signal port_in_10_TB  : std_logic_vector(7 downto 0);
    signal port_in_11_TB  : std_logic_vector(7 downto 0);
    signal port_in_12_TB  : std_logic_vector(7 downto 0);
    signal port_in_13_TB  : std_logic_vector(7 downto 0);
    signal port_in_14_TB  : std_logic_vector(7 downto 0);
    signal port_in_15_TB  : std_logic_vector(7 downto 0);

begin
  
    -- Instantiate the computer module
    microcontroller_unit : computer
        port map (
            clock        => clock_TB,
            reset        => reset_TB,
            port_out_00  => port_out_00_TB,
            port_out_01  => port_out_01_TB,
            port_out_02  => port_out_02_TB,
            port_out_03  => port_out_03_TB,
            port_out_04  => port_out_04_TB,
            port_out_05  => port_out_05_TB,
            port_out_06  => port_out_06_TB,
            port_out_07  => port_out_07_TB,
            port_out_08  => port_out_08_TB,
            port_out_09  => port_out_09_TB,
            port_out_10  => port_out_10_TB,
            port_out_11  => port_out_11_TB,
            port_out_12  => port_out_12_TB,
            port_out_13  => port_out_13_TB,
            port_out_14  => port_out_14_TB,
            port_out_15  => port_out_15_TB,
            port_in_00   => port_in_00_TB,
            port_in_01   => port_in_01_TB,
            port_in_02   => port_in_02_TB,
            port_in_03   => port_in_03_TB,
            port_in_04   => port_in_04_TB,
            port_in_05   => port_in_05_TB,
            port_in_06   => port_in_06_TB,
            port_in_07   => port_in_07_TB,
            port_in_08   => port_in_08_TB,
            port_in_09   => port_in_09_TB,
            port_in_10   => port_in_10_TB,
            port_in_11   => port_in_11_TB,
            port_in_12   => port_in_12_TB,
            port_in_13   => port_in_13_TB,
            port_in_14   => port_in_14_TB,
            port_in_15   => port_in_15_TB
        );

        STIMULUS_PROCESS: process
        begin
            clock_tb <= '0';
            reset_tb <= '0';
        
            -- Wait for initial signals to stabilize
            wait for 10 ns;
        
            -- Apply reset
            reset_tb <= '1';
            wait for 5 ns;
            reset_tb <= '0';
        
            -- Generate clock and provide stimulus values
            for i in 0 to 63 loop
                -- Generate clock cycle
                clock_tb <= '0';
                wait for 10 ns;
                clock_tb <= '1';
                wait for 10 ns;
        
                -- Provide stimulus values
                case i is
                    when 0 =>
                        -- Load values into registers
                        port_in_00_tb <= x"11";
                        port_in_01_tb <= x"22";
                        port_in_02_tb <= x"33";
                        port_in_03_tb <= x"44";
                    when 1 =>
                        -- Perform addition
                        port_in_04_tb <= x"01";
                        port_in_05_tb <= x"02";
                        port_in_06_tb <= x"03";
                        port_in_07_tb <= x"04";
                    when 2 =>
                        -- Perform subtraction
                        port_in_08_tb <= x"05";
                        port_in_09_tb <= x"02";
                        port_in_10_tb <= x"01";
                        port_in_11_tb <= x"00";
                    when 3 =>
                        -- Perform bitwise AND
                        port_in_12_tb <= x"FF";
                        port_in_13_tb <= x"0F";
                        port_in_14_tb <= x"AA";
                        port_in_15_tb <= x"55";
                    when 4 =>
                        -- Perform bitwise OR
                        port_in_12_tb <= x"FF";
                        port_in_13_tb <= x"0F";
                        port_in_14_tb <= x"AA";
                        port_in_15_tb <= x"55";
                    when 5 =>
                        -- Perform increment
                        port_in_12_tb <= x"01";
                        port_in_13_tb <= x"02";
                        port_in_14_tb <= x"03";
                        port_in_15_tb <= x"04";
                    when 6 =>
                        -- Perform decrement
                        port_in_12_tb <= x"01";
                        port_in_13_tb <= x"02";
                        port_in_14_tb <= x"03";
                        port_in_15_tb <= x"04";
                    when others =>
                        -- Reset all inputs to zero
                        port_in_00_tb <= x"00";
                        port_in_01_tb <= x"00";
                        port_in_02_tb <= x"00";
                        port_in_03_tb <= x"00";
                        port_in_04_tb <= x"00";
                        port_in_05_tb <= x"00";
                        port_in_06_tb <= x"00";
                        port_in_07_tb <= x"00";
                        port_in_08_tb <= x"00";
                        port_in_09_tb <= x"00";
                        port_in_10_tb <= x"00";
                        port_in_11_tb <= x"00";
                        port_in_12_tb <= x"00";
                        port_in_13_tb <= x"00";
                        port_in_14_tb <= x"00";
                        port_in_15_tb <= x"00";
                end case;
            end loop;
        
            -- Wait for simulation to finish
            wait;
        end process;
        

end architecture computer_tb; -- Add this line

