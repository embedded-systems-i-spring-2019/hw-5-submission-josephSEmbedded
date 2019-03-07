----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 07:31:54 PM
-- Design Name: 
-- Module Name: exercise2_IF - BehavioralIF
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

entity exercise2_IF is
    Port (signal A_1, A_2,B_1,B_2,D_1 : in std_logic;
      signal E_out : out std_logic);end exercise2_IF;

architecture BehavioralIf of exercise2_IF is

signal A : std_logic;
signal B : std_logic;
signal C : std_logic;
signal ABC : std_logic_vector(2 downto 0);

begin

A <= A_1 and A_2;
B <= B_1 or B_2;
C <= B_2 and (not D_1);
ABC <= A & B & C;

IfProcess : process
begin
    if (ABC = "000") then
        E_out <= '0';
    else 
        E_out <= '1';
    end if;
end process;

end BehavioralIf;

