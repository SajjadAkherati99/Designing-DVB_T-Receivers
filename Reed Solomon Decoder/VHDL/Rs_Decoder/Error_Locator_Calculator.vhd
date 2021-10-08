----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:56:08 07/30/2021 
-- Design Name: 
-- Module Name:    Error_Locator_Calculator - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Error_Locator_Calculator is
	port(
		Clk: in std_logic;
		Reset: in std_logic;
		S1: in std_logic_vector(7 downto 0);
		S2: in std_logic_vector(7 downto 0);
		S3: in std_logic_vector(7 downto 0);
		S4: in std_logic_vector(7 downto 0);
		S5: in std_logic_vector(7 downto 0);
		S6: in std_logic_vector(7 downto 0);
		S7: in std_logic_vector(7 downto 0);
		S8: in std_logic_vector(7 downto 0);
		S9: in std_logic_vector(7 downto 0);
		S10: in std_logic_vector(7 downto 0);
		S11: in std_logic_vector(7 downto 0);
		S12: in std_logic_vector(7 downto 0);
		S13: in std_logic_vector(7 downto 0);
		S14: in std_logic_vector(7 downto 0);
		S15: in std_logic_vector(7 downto 0);
		S16: in std_logic_vector(7 downto 0);
		Sigma1: out std_logic_vector(7 downto 0);
		Sigma2: out std_logic_vector(7 downto 0);
		Sigma3: out std_logic_vector(7 downto 0);
		Sigma4: out std_logic_vector(7 downto 0);
		Sigma5: out std_logic_vector(7 downto 0);
		Sigma6: out std_logic_vector(7 downto 0);
		Sigma7: out std_logic_vector(7 downto 0);
		Sigma8: out std_logic_vector(7 downto 0)
	);
end Error_Locator_Calculator;

architecture Behavioral of Error_Locator_Calculator is

	type vec16_8bit_index_from_one is array(1 to 16) of std_logic_vector(7 downto 0);
	type vec16_8bit_index_from_zero is array(0 to 15) of std_logic_vector(7 downto 0);
	type memory_array is array(0 to 255) of std_logic_vector(7 downto 0);
		
	impure function initialize_alpha_table return memory_array is
		file text_file : text open read_mode is "alpha.txt";
		variable text_line : line;
		variable ram_content : memory_array;
		begin
			for i in 0 to 255 loop
				readline(text_file, text_line);
				read(text_line, ram_content(i));
			end loop;
		return ram_content;
	end function;
	
	impure function initialize_tuple_table return memory_array is
		file text_file : text open read_mode is "tuple.txt";
		variable text_line : line;
		variable ram_content : memory_array;
		begin
			for i in 0 to 255 loop
				readline(text_file, text_line);
				read(text_line, ram_content(i));
			end loop;
		return ram_content;
	end function;
	
	constant alpha : memory_array := initialize_alpha_table ;
	constant tuple : memory_array := initialize_tuple_table ;
	
	signal S : vec16_8bit_index_from_one := (others =>(others => '0'));
	signal sig : vec16_8bit_index_from_zero := (others =>(others => '0'));
	signal sig_p : vec16_8bit_index_from_zero := (others =>(others => '0'));
	signal Beta : vec16_8bit_index_from_zero := (others =>(others => '0'));
	
	signal l : std_logic_vector(4 downto 0) := (others => '0');
	signal i : std_logic_vector(4 downto 0) := (others => '0');
	signal u : std_logic_vector(4 downto 0) := (others => '0');
	signal d : std_logic_vector(7 downto 0) := (others => '0');
	signal ready : std_logic;

	constant state0 : std_logic_vector(1 downto 0) := "00"; 
	constant state1 : std_logic_vector(1 downto 0) := "01"; 
	constant state2 : std_logic_vector(1 downto 0) := "10"; 
	constant state3 : std_logic_vector(1 downto 0) := "11"; 
	signal current_s : std_logic_vector(1 downto 0) := "00";
	
begin
	process (S1,  S2,  S3,  S4,
				S5,  S6,  S7,  S8,
				S9,  S10, S11, S12,
				S13, S14, S15, S16)
	begin
		S(1) <= S1;
		S(2) <= S2;
		S(3) <= S3;
		S(4) <= S4;
		S(5) <= S5;
		S(6) <= S6;
		S(7) <= S7;
		S(8) <= S8;
		S(9) <= S9;
		S(10) <= S10;
		S(11) <= S11;
		S(12) <= S12;
		S(13) <= S13;
		S(14) <= S14;
		S(15) <= S15;
		S(16) <= S16;
	end process;
	
	process(Clk)
		begin
			if (rising_edge(Clk)) then
				if (Reset = '0') then
					u <= '0' & x"1";
					l <= '0' & x"0";
					i <= '0' & x"0";
					current_s <= state0;
					d <= x"00";
					ready <= '0';
				else
					case (current_s) is
						when state0 => 
							if ((sig(conv_integer(i)) /= x"00") and (S(conv_integer(u)-conv_integer(i)) /= x"00")) then
								if(S(conv_integer(u)-conv_integer(i)) > (x"ff"-sig(conv_integer(i)))) then
									d <= d xor alpha(conv_integer(S(conv_integer(u)-conv_integer(i)) + sig(conv_integer(i)) + x"01"));
								else
									d <= d xor alpha(conv_integer(S(conv_integer(u)-conv_integer(i)) + sig(conv_integer(i))));
								end if;
							end if;
							
							if (i = l) then
								current_s <= state1;
								i <= "00000";
							else
								i <= i + "00001";
							end if;
							
							
						when state1 =>
							if (d /= x"00") then
								if((l+l) < u) then
									l <= u-l;
									current_s <= state2;
								else
									current_s <= state3;
								end if;
							else
								if (u = "10000") then
									ready <= '1';
								else
									current_s <= state0;
									u <= u + "00001";
								end if;
							end if;
						
						when state2 =>
							if (u = "10000") then
								ready <= '1';
							else
								current_s <= state0;
								u <= u + "00001";
								d <= x"00";
							end if;
							
						when state3 =>
							if (u = "10000") then
								ready <= '1';
							else
								current_s <= state0;
								u <= u + "00001";
								d <= x"00";
							end if;
							
						when others => 
							current_s <= state0;
					end case;
				end if;
			end if;
		end process;
		
UPDATE_BLOCKS_ONE:
   for j in 1 to 15 generate
		process(Clk)
		begin
			if (rising_edge(Clk)) then
				if (Reset = '1') then
					if (current_S = state1) then
						if (d /= x"00") then
							sig_p(0) <= sig(0);
							if (Beta(j-1) /= x"00") then
								if (Beta(j-1) > (x"ff" - tuple(conv_integer(d)))) then
									sig_p(j) <= tuple(conv_integer(alpha(conv_integer(Beta(j-1) + tuple(conv_integer(d)) + x"01"))
																			 xor alpha(conv_integer(sig(j)))));
								else
									sig_p(j) <= tuple(conv_integer(alpha(conv_integer(Beta(j-1) + tuple(conv_integer(d))))
																			 xor alpha(conv_integer(sig(j)))));
								end if;
							else
								sig_p(j) <= sig(j);
							end if;
						end if;
					end if;
				end if;
			end if;
		end process;
	end generate UPDATE_BLOCKS_ONE;

UPDATE_BLOCKS_TWO:
   for k in 1 to 15 generate
		process(Clk)
		begin
			if (rising_edge(Clk)) then
				if(Reset = '0') then
					sig(0) <= x"ff";
					sig(k) <= x"00";
				else
					if (current_s(1) = '1') then
						sig(0) <= sig_p(0);
						sig(k) <= sig_p(k);
					end if;
				end if;
			end if;
		end process;
	end generate UPDATE_BLOCKS_TWO;
	
UPDATE_BLOCKS_THREE:
   for m in 1 to 15 generate
		process(Clk)
		begin
			if (rising_edge(Clk)) then
				if(Reset = '0') then
					Beta(0) <= x"00";
					Beta(m) <= x"00";
				else
					case (current_s) is
						when state1 =>
							if (d = x"00") then
								Beta(m) <= Beta(m-1);
								Beta(0) <= x"00";
							end if;
							
						when state2 =>
							if (sig(0) = x"00") then
								Beta(0) <= x"00";
							else
								if (sig(0) > tuple(conv_integer(d))) then
									Beta(0) <= sig(0) - tuple(conv_integer(d));
								else
									Beta(0) <= sig(0) + not(tuple(conv_integer(d)));
								end if;
							end if;
						
							if (sig(m) = x"00") then
								Beta(m) <= x"00";
							else
								if (sig(m) > tuple(conv_integer(d))) then
									Beta(m) <= sig(m) - tuple(conv_integer(d));
								else
									Beta(m) <= sig(m) + not(tuple(conv_integer(d)));
								end if;
							end if;
							
						when state3 =>
							Beta(0) <= x"00";
							Beta(m) <= Beta(m-1);
						when others =>
--							Beta(0) <= x"00";
--							Beta(m) <= Beta(m-1);
					end case;
				end if;
			end if;
		end process;
	end generate UPDATE_BLOCKS_THREE;

	process(Clk)
	begin
		if(rising_edge (Clk)) then
			if (ready = '1') then
				Sigma1 <= sig(1);
				Sigma2 <= sig(2);
				Sigma3 <= sig(3);
				Sigma4 <= sig(4);
				Sigma5 <= sig(5);
				Sigma6 <= sig(6);
				Sigma7 <= sig(7);
				Sigma8 <= sig(8);
			end if;
		end if;
	end process;

end Behavioral;

