----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:00:22 08/08/2020 
-- Design Name: 
-- Module Name:    prop_mux - Behavioral 
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

Entity prop_mux is
Port(sel:in std_logic;
         sum0,sum1:in std_logic_vector(6 downto 1);
         sum:out std_logic_vector(6 downto 1));
End prop_mux;
architecture Behavioral of prop_mux is
Begin
Process(sel,sum0,sum1)
Begin
If(sel='0') then
sum(5 downto 1)<=sum1(5 downto 1);
sum(6)<=sum0(6) and sel;

Else
sum(5 downto 1)<=sum0(5 downto 1);
sum(6)<=sum0(6) and sel;
End if;
End process;
End behavioral;
