`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 22:58:08
// Design Name: 
// Module Name: demultiplexer_tb
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


module demultiplexer_tb( );
reg x,s0,s1;
wire a,b,c,d;

demultiplexer uut(.a(a),.b(b),.c(c),.d(d),.s1(s1),.s0(s0),.x(x));

initial begin
s0 = 0;
s1 = 0;
x = 0;
end

always 
#40 s0 = ~s0;
always 
#20 s1 = ~s1;
always 
#10 x = ~x;
always 
#80 $finish;
endmodule
