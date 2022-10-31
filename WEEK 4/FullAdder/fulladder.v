`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 12:16:25
// Design Name: 
// Module Name: full_adder
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


module full_adder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire x,y,z;

half_adder h1(.a(a),.b(b),.s(x),.c(y));
half_adder h2(.a(x),.b(cin),.s(sum),.c(z));

or carryout(cout,y,z);

endmodule :full_adder

module half_adder(
input a,
input b,
output s,
output c);

 xor sum(s,a,b);
 and carry(c,a,b);
 endmodule :half_adder
