----------------------------------------------------------------------------------
-- Company: QMUL DSD Group 2
-- Engineer: Patrick Balcombe
-- 
-- Create Date:    16:01:58 10/28/2016 
-- Design Name: 		n-bit register
-- Module Name:    nbitReg - Behavioral 
-- Project Name: Lab 3
-- Target Devices: 
-- Tool versions: 
-- Description: n-bit register made up of d type flip flops
--
-- Dependencies: 
--						-dFlopFlop.vhd
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

entity nbitReg is
	generic(n : positive := 4);
    Port ( CLK : in  STD_LOGIC;
           D_inputs : in  STD_LOGIC_vector (n-1 downto 0);
           reset : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           Q_outputs : inout  STD_LOGIC_vector (n-1 downto 0);
           Q_bar_outputs : inout  STD_LOGIC_vector (n-1 downto 0));
end nbitReg;

architecture Behavioral of nbitReg is

component dFlipFlop is
    Port ( D : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : inout  STD_LOGIC;
           Q_bar : inout  STD_LOGIC);
end component;

begin

	init: for i in n-1 downto 0 generate--loop through all n d flip lops to add
		dIinit: dFLipFlop port map (D_inputs(i), reset, preset, CLK, Q_outputs(i), Q_bar_outputs(i));--define connections of d flip flop within the device
		
	end generate;

	


end Behavioral;

