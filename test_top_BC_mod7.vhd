--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:56:31 03/04/2020
-- Design Name:   
-- Module Name:   C:/Users/mamatha/Desktop/test/PROJECT1/test_top_BC_mod7.vhd
-- Project Name:  PROJECT1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_BC_mod
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_top_BC_mod7 IS
END test_top_BC_mod7;
 
ARCHITECTURE behavior OF test_top_BC_mod7 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_BC_mod
    PORT(
         a : IN  std_logic_vector(2 downto 0);
         b : IN  std_logic_vector(2 downto 0);
         cout : OUT  std_logic;
         s : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(2 downto 0) := (others => '0');
   signal b : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal cout : std_logic;
   signal s : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_BC_mod PORT MAP (
          a => a,
          b => b,
          cout => cout,
          s => s
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

 --     wait for <clock>_period*10;

      -- insert stimulus here 
a <= "001";
b <= "011";
wait for 10 ns;
a <= "010";
b <= "011";
wait for 10 ns;
a <= "100";
b <= "101";
wait for 10 ns;
a <= "100";
b <= "011";
wait for 10 ns;
a <= "110";
b <= "110";
wait for 10 ns;

      wait;
   end process;

END;
