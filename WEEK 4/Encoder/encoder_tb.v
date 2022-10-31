`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 23:48:24
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb();
reg y0,y1,y2,y3;
wire a0,a1;

encoder uut(.y0(y0),.y1(y1),.y2(y2),.y3(y3),.a0(a0),.a1(a1));

initial
begin

y0 = 1;
y1 = 0;
y2 = 0;
y3 = 0;

#10
y0 = 0;
y1 = 1;
y2 = 0;
y3 = 0;

#10
y0 = 0;
y1 = 0;
y2 = 1;
y3 = 0;

#10
y0 = 0;
y1 = 0;
y2 = 0;
y3 = 1;

#10 $finish;
end
endmodule
