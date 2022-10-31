`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2022 00:37:43
// Design Name: 
// Module Name: decoder
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


module decoder(output y0,y1,y2,y3,input a0,a1 );

assign y3 = a1 & a0;
assign y2 = a1 & ~a0;
assign y1 = ~a1 & a0;
assign y0 = ~a1 & ~a0;
endmodule
