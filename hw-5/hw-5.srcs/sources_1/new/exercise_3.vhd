----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 07:27:26 PM
-- Design Name: 
-- Module Name: exercise_3 - DataFlow
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

entity exercise_3 is
    Port (signal A_1, A_2,B_1,B_2,D_1 : in std_logic;
      signal E_out : out std_logic);
end exercise_3;

architecture DataFlow of exercise_3 is

signal A : std_logic;
signal B : std_logic;
signal C : std_logic;

begin
A <= A_1 and A_2;
B <= B_1 or B_2;
C <= B_2 and (not D_1);

E_out <= A or B or C;


end DataFlow;
