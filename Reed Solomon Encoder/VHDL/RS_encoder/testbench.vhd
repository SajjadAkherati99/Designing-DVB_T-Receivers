LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_textio.ALL;
USE std.textio.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TESTBENCH IS
END TESTBENCH;
 
ARCHITECTURE behavior OF TESTBENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RS_encoder
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         din : IN  std_logic_vector(7 downto 0);
         dout : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal din : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal dout : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RS_encoder PORT MAP (
          clk => clk,
          reset => reset,
          din => din,
          dout => dout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process is
		variable v_ILINE     : line;
		variable v_OLINE     : line;
		file read_file : text;
		file write_file : text;
		variable slv_v : std_logic_vector(7 downto 0);
   begin
      -- hold reset state for 100 ns.
      wait for 105 ns;	
		reset <= '1';
			
		file_open(read_file, "source.txt", read_mode);
		file_open(write_file, "target.txt", write_mode);
		for i in 0 to 255 loop
			readline(read_file, v_ILINE);
			read(v_ILINE, slv_v);
			din <= slv_v;
			--report "din: " & string(din);
			wait for 10 ns;
			--report "dout: " & string(dout);
			write(v_OLINE, dout);
			writeline(write_file, v_OLINE);
		end loop;
		file_close(read_file);
		file_close(write_file);
			
      wait for clk_period*10;
      -- insert stimulus here 

      wait;
   end process;
	
	stop_simulation :process
	begin
		wait for 10000 ns; --run the simulation for this duration
		assert false
			 report "simulation ended"
			 severity failure;
	end process ;

END;
