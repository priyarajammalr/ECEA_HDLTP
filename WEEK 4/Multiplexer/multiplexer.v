`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 12:03:47
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb(
 );
 
 reg a,b;
 wire s,c;
 
 half_adder uut(.a(a),.b(b),.s(s),.c(c));
 
initial begin
 
 a = 'b0;
 b = 'b0;
 
 #10
 
 a = 1'b0;
 b = 1'b1;
 
 #10
 
 a = 1'b1;
 b = 1'b0;
 
 #10
 
 a = 1'b1;
 b = 1'b1;
 
 #10
 $finish;
 end

endmodule
