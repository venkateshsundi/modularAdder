--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:30:12 08/08/2020
-- Design Name:   
-- Module Name:   C:/Users/venkatesh/Desktop/test codes/PROJECT1/test_prop_OHR.vhd
-- Project Name:  PROJECT1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_prop_OHR
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
 
ENTITY test_prop_OHR IS
END test_prop_OHR;
 
ARCHITECTURE behavior OF test_prop_OHR IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_prop_OHR
    PORT(
         a : IN  std_logic_vector(6 downto 0);
         b : IN  std_logic_vector(6 downto 0);
         Sum : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(6 downto 0) := (others => '0');
   signal b : std_logic_vector(6 downto 0) := (others => '0');

 	--Outputs
   signal Sum : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_prop_OHR PORT MAP (
          a => a,
          b => b,
          Sum => Sum
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for <clock>_period*10;
a <= "0000100";
b <= "0000100";
wait for 10 ns;
a <= "0000100";
b <= "0000010";
wait for 10 ns;
a <= "0100000";
b <= "0010000";
wait for 10 ns;
a <= "1000000";
b <= "1000000";
wait for 10 ns;
a <= "0100000";
b <= "0000100";
wait for 10 ns;
a <= "0000001";
b <= "0000001";
wait for 10 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
