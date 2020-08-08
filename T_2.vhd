----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:49:46 02/20/2020 
-- Design Name: 
-- Module Name:    T_2 - Behavioral 
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

Entity T_2 is
Port(a:in std_logic_vector(7 downto 1);
S1,s2,s4:out std_logic);
End entity;
architecture behavioral of T_2 is
Signal X1,X2,X3,X4:std_logic;
Begin
X1<=a(3) xor a(1);
X2<= a(2) xor a(6);
X3<=a(5) xor x1;
X4<=x2 xor a(4);
S1<=x3 xor x4;
S2<=x4;
S4<=a(4);
end behavioral;

