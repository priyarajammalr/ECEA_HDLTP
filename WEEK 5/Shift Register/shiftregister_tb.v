
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2022 11:11:25
// Design Name: 
// Module Name: shift_register_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module shift_register_tb();
reg rst,clk,si;
wire so;
wire [3:0]sr;

shit_register uut(.si(si),.clk(clk),.rst(rst),.so(so),.sr(sr));
initial
begin
clk=0;

#5 
rst=1;

#10 
rst=0;
si=0;

#10 
si=0;

#10 
si=1;
#10 
si=0;

#10 
si=1;

#10 
si=1;

#10 
si=0;

#100 $finish;
end

always 
#5 
clk=~clk;

endmodule
