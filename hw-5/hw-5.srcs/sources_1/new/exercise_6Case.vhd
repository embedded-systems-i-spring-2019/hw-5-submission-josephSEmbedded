----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 07:39:02 PM
-- Design Name: 
-- Module Name: exercise_6Case - BehavioralCase
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

entity exercise_6Case is
    Port( signal input : in std_logic_vector(7 downto 0);
          signal sel : in std_logic_vector(2 downto 0);
          signal output : out std_logic);
end exercise_6Case;

architecture BehavioralCase of exercise_6Case is

begin

process
begin
    case sel is
        when "000" => output <=  input(0);
        when "001" => output <= input(1);
        when "010" => output <= input(2);
        when "011" => output <= input(3);
        when "100" => output <= input(4);
        when "101" => output <= input(5);
        when "110" => output <= input(6);
        when "111" => output <= input(7);
    end case;
end process;
end BehavioralCase;
