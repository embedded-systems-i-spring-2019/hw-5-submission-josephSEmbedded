----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 07:49:03 PM
-- Design Name: 
-- Module Name: exercise_7Case - BehavioralCase
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

entity exercise_7Case is
    port( signal A : in std_logic_vector(2 downto 0);
          signal D : out std_logic_vector(7 downto 0) := (others => '1'));  
end exercise_7Case;

architecture BehavioralCase of exercise_7Case is

begin
process 
begin
    case A is
        when "000" => D <= "11111110";
        when "001" => D <= "11111101";
        when "010" => D <= "11111011";
        when "011" => D <= "11110111";
        when "100" => D <= "11101111";
        when "101" => D <= "11011111";
        when "110" => D <= "10111111";
        when "111" => D <= "01111111";
    end case;
end process;
        

end BehavioralCase;
