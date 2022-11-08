`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2022 15:11:31
// Design Name: 
// Module Name: jkflipflop
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


module jkflipflop(input clk,j,k,output reg q,qd);

always @(posedge clk)
    case({j,k})
        2'b00 : begin q <= q ; qd <= qd ; end
        2'b01 : begin q <= 0 ; qd <= 1 ; end
        2'b10 : begin q <= 1 ; qd <= 0 ; end
        2'b11 : begin q <= ~q ; qd <= ~qd ; end
      endcase
endmodule
