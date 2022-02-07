module Lab04(
	output [0:6] sseg,
	output [3:0] an,
	input [3:0] addrRa,
	input [3:0] addrRb,
	input [3:0] addrW,
	input [3:0] datW,
	input RegWrite,
	input clk,
	input rst);
	
	wire [3:0] datOutRa;
	wire [3:0] datOutRb;
	
	BancoRegistro banco(.addrRa(addrRa),.addrRb(addrRb),.datOutRa(datOutRa),.datOutRb(datOutRb),.addrW(addrW),.datW(datW),.RegWrite(RegWrite),.clk(clk),.rst(rst));
	display display(.numA(datOutRa),.numB(datOutRb),.clk(clk),.sseg(sseg),.an(an),.rst(rst));
	
endmodule
