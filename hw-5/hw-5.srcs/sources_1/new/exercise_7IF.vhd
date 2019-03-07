----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 08:01:37 PM
-- Design Name: 
-- Module Name: exercise_7IF - BehavioralIF
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity exercise_7IF is
 port( signal A : in std_logic_vector(2 downto 0);
         signal D : out std_logic_vector(7 downto 0) := (others => '1'));  
end exercise_7IF;

architecture BehavioralIF of exercise_7IF is

begin
process 
    begin
    
        if(A = "000") then
            D <= "11111110";
        elsif (A = "001") then
            D <= "11111101";
        elsif (A = "010") then
            D <= "11111011";
        elsif (A = "011") then
            D <= "11110111";
        elsif (A = "100") then
            D <= "11101111";
        elsif( A = "101") then
            D <= "11011111";
        elsif ( A = "110") then
            D <= "10111111";
        elsif ( A = "111") then
            D <= "01111111";
        end if;
    end process;
    


end BehavioralIF;
