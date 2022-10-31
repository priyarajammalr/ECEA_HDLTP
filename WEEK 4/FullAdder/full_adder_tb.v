`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 12:35:56
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb( );

reg a,b,cin;
wire sum,cout;

full_adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
a = 0;
b = 0;
cin = 0;
end

always

#40 a<= ~a;
always
#20 b <= ~b;
always
#10 cin <= ~cin;

always
#80 $finish;


endmodule
