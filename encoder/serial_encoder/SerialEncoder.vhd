library IEEE;
use IEEE.STD_LOGIC_1164.all;

library counterRegisters;
use counterRegisters.all;

entity SerialEncoder is
	port (clk	: in std_logic;
			mI		: in std_logic;
			GRst	: in std_logic;
			busy	: out std_logic;
			y		: out std_logic_vector(7 downto 0));
end SerialEncoder;

architecture Structural of SerialEncoder is
	component Register8bit
		port (clk	: in std_logic;
				GRst	: in std_logic;
				D		: in std_logic_vector(7 downto 0);
				Q		: out std_logic_vector(7 downto 0));
	end component;
	component Counter3bit
		port (clk	: in std_logic;
				GRst	: in std_logic;
				Q		: out std_logic_vector(2 downto 0));
	end component;
begin
	counter30	: Counter3bit port map (clk, GRst, y(2 downto 0));
end Structural;
