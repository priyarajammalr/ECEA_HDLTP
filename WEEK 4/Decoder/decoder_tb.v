`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2022 00:41:09
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb( );
reg a0,a1;
wire y0,y1,y2,y3;

decoder uut(.y0(y0),.y1(y1),.y2(y2),.y3(y3),.a0(a0),.a1(a1));

initial begin
a0 =0;
a1 =0;
end

always
#20 a1 = ~a1;
always 
#10 a0 = ~a0;
always
#40 $finish;

endmodule
