`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:   21:29:15 10/17/2019
// Design Name:   BancoRegistro
// Module Name:   C:/Users/UECCI/Documents/GitHub/SPARTAN6-ATMEGA-MAX5864/lab/lab07-BancosRgistro/bancoreg/src/TestBench.v
// Project Name:  lab07-BancosRgistro
// Target Device:
// Tool versions:
// Description:
//
// Verilog Test Fixture created by ISE for module: BancoRegistro
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
////////////////////////////////////////////////////////////////////////////////

module TestBench;

	// Inputs
	reg [2:0] addrRa;
	reg [2:0] addrRb;
	reg [3:0] addrW;
	reg [3:0] datW;
	reg RegWrite;
	reg clk;
	reg rst;

	
	wire [0:6] sseg;
	wire [3:0] an;
	integer i;

	// Outputs
	wire [0:6] datOutRa;
	wire [3:0] datOutRb;

	// Instantiate the Unit Under Test (UUT)
	Lab04 uut (
		.addrRa(addrRa), 
		.addrRb(addrRb), 
		.addrW(addrW), 
		.datW(datW), 
		.RegWrite(RegWrite), 
		.clk(clk), 
		.rst(rst),
		.sseg(sseg),
		.an(an)
	);
	initial begin
		// Initialize Inputs
		addrRa = 0;
		addrRb = 0;
		addrW = 0;
		datW = 0;
		RegWrite = 0;
		clk = 0;
		rst = 0;

		/// Wait 100 ns for global reset to finish
		#100;
	
      for (addrRa = 0; addrRa < 4; addrRa = addrRa + 1) begin
		//Lectura registros
			#5000 addrRb=addrRa+4;
	
		end
		// Escritura
		#5000
		// Se activa la escritura
		RegWrite=1;
		//Se indica la direccion de escritura
		addrW=7;
		for(i=0; i<9;i=i+1) begin
		#5000 datW=i;
		end
		
	   // Reset
		#1000
		rst=1;
		#25;
		rst=0;
		#25;
		
	 end
	 
	 always #1 clk = ~clk;

endmodule
