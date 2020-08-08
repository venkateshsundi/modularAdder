----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:49:37 03/04/2020 
-- Design Name: 
-- Module Name:    MUX4 - Behavioral 
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

entity MUX4 is
Port ( s:in std_logic;
a,b : in STD_LOGIC_VECTOR (2 downto 0);
y : out STD_LOGIC_VECTOR (2 downto 0));
end MUX4;

architecture Behavioral of MUX4 is

begin
process(s,a,b)
begin
if(s = '0' ) then
y<=a;
else
y<=b;
end if;
end process;

end Behavioral;

