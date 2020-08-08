----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:52:39 03/02/2020 
-- Design Name: 
-- Module Name:    oneHot2Binary - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity oneHot2Binary is
    Port ( b : in  STD_LOGIC_VECTOR (6 downto 0);
           s1,s2,s4 : out  STD_LOGIC);
end oneHot2Binary;

architecture Behavioral of oneHot2Binary is

begin
s4 <= b(6) or b(5) or b(4);
s2 <= b(2) or b(3) or b(6);
s1 <= b(1) or b(3) or b(5);

end Behavioral;

