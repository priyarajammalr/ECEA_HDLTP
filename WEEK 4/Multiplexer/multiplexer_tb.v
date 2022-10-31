`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 22:23:13
// Design Name: 
// Module Name: multiplexer_tb
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


module multiplexer_tb( );

reg a,b,c,d,s1,s0;
wire y;

multiplexer uut(.a(a),.b(b),.c(c),.d(d),.s1(s1),.s0(s0),.y(y));

initial
begin
s0 = 0;
s1 = 0;
a = 0;
b = 0;
c = 0;
d = 0;
end
always
#320 a = ~a;
always
#160 b = ~b;
always
#80 c = ~c;
always 
#40 d = ~d;
always
#20 s0 = ~s0;
always
#10 s1 = ~s1;
always #640 $finish; 
endmodule
