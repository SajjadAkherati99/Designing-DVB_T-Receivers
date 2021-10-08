--------------------------------------------------------------------------------
-- Company: Sharif University of Technology
-- Engineer: Sajjad Akherati
--
-- Create Date:   22:48:32 07/28/2021
-- Design Name:   Syndrom Calculator For a RS_Decoder in DVB_T Receivers
-- Module Name:   D:/my_files/course/projects/RS_decoder/VHDL/Syndrom/Syndrom_tb.vhd
-- Project Name:  Syndrom
-- Target Device:  spartan6
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Syndrom
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library std;
use std.textio.all;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use STD.TEXTIO.ALL;
--use IEEE.STD_LOGIC_TEXTIO.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Syndrom_tb IS
END Syndrom_tb;
 
ARCHITECTURE behavior OF Syndrom_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Syndrom
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         Msg_Rsv : IN  std_logic_vector(7 downto 0);
         S1 : OUT  std_logic_vector(7 downto 0);
         S2 : OUT  std_logic_vector(7 downto 0);
         S3 : OUT  std_logic_vector(7 downto 0);
         S4 : OUT  std_logic_vector(7 downto 0);
         S5 : OUT  std_logic_vector(7 downto 0);
         S6 : OUT  std_logic_vector(7 downto 0);
         S7 : OUT  std_logic_vector(7 downto 0);
         S8 : OUT  std_logic_vector(7 downto 0);
         S9 : OUT  std_logic_vector(7 downto 0);
         S10 : OUT  std_logic_vector(7 downto 0);
         S11 : OUT  std_logic_vector(7 downto 0);
         S12 : OUT  std_logic_vector(7 downto 0);
         S13 : OUT  std_logic_vector(7 downto 0);
         S14 : OUT  std_logic_vector(7 downto 0);
         S15 : OUT  std_logic_vector(7 downto 0);
         S16 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Msg_Rsv : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal S1 : std_logic_vector(7 downto 0);
   signal S2 : std_logic_vector(7 downto 0);
   signal S3 : std_logic_vector(7 downto 0);
   signal S4 : std_logic_vector(7 downto 0);
   signal S5 : std_logic_vector(7 downto 0);
   signal S6 : std_logic_vector(7 downto 0);
   signal S7 : std_logic_vector(7 downto 0);
   signal S8 : std_logic_vector(7 downto 0);
   signal S9 : std_logic_vector(7 downto 0);
   signal S10 : std_logic_vector(7 downto 0);
   signal S11 : std_logic_vector(7 downto 0);
   signal S12 : std_logic_vector(7 downto 0);
   signal S13 : std_logic_vector(7 downto 0);
   signal S14 : std_logic_vector(7 downto 0);
   signal S15 : std_logic_vector(7 downto 0);
   signal S16 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Syndrom PORT MAP (
          Clk => Clk,
          Reset => Reset,
          Msg_Rsv => Msg_Rsv,
          S1 => S1,
          S2 => S2,
          S3 => S3,
          S4 => S4,
          S5 => S5,
          S6 => S6,
          S7 => S7,
          S8 => S8,
          S9 => S9,
          S10 => S10,
          S11 => S11,
          S12 => S12,
          S13 => S13,
          S14 => S14,
          S15 => S15,
          S16 => S16
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
	
	
    variable line_v : line;
    file read_file : text;
    variable slv_v : integer;--std_logic_vector(7 downto 0) := (others => '0');
	 variable file_status: file_open_status;
	 variable val_SPACE : character;
	
   begin		
      -- hold reset state for 10 ns.
		
		
		file_open(file_status, read_file, "MATLAB_encoder_Verilog.txt", read_mode);
		
      wait for 10 ns;
		Reset <= '1';
			
		readline(read_file, line_v);

		for i in 1 to 256 loop
			--report file_open_status'image(file_status);
			wait for 10 ns;
			read(line_v, slv_v);
			report "byte " & integer'image(i) & " = " & integer'image(slv_v) &";";
			Msg_Rsv <= std_logic_vector(to_unsigned(slv_v, Msg_Rsv'length));
		end loop;
		file_close(read_file);
		assert FALSE Report "SImulation Finished" severity FAILURE;
      --wait;
   end process;

END;
