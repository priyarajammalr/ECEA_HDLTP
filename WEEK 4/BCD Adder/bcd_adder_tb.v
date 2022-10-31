`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2022 01:16:21
// Design Name: 
// Module Name: bcd_adder_tb
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


module bcd_adder_tb();

reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

bcd_adder uut (.a(a), .b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin
        a = 0;  b = 0;  cin = 0;   #10;
        a = 0;  b = 1;  cin = 0;   #10;
        a = 7;  b = 2;  cin = 0;   #10;
        a = 4;  b = 7;  cin = 0;   #10;
        a = 9;  b = 6;  cin = 1;   #10;
        a = 4;  b = 7;  cin = 0;   #10;
        a = 8;  b = 5;  cin = 0;   #10;
        a = 9;  b = 9;  cin = 1;   #10;
        $finish;
    end
      
endmodule
