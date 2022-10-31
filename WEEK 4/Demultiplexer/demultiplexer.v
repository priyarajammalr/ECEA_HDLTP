`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 22:48:28
// Design Name: 
// Module Name: demultiplexer
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


module demultiplexer(input s0,s1,x,output reg a,b,c,d);
always @(s0 or s1 or x)
case ({s0,s1})
    2'b00 : begin a = x; b=0; c=0; d=0; end
    2'b01 : begin a = 0; b=x; c=0; d=0; end
    2'b10 : begin a = 0; b=0; c=x; d=0; end
    2'b11 : begin a = 0; b=0; c=0; d=x; end
    default : begin a = 0;b =0;c=0;d=0; end
    
endcase
    
endmodule
