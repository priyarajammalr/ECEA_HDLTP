`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2022 09:41:47 PM
// Design Name: 
// Module Name: Ripple_Counter_4bit
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


module Ripple_Counter_4bit (A3, A2, A1, A0, Count, Reset);
output A3, A2, A1, A0;
input Count, Reset;
// Instantiate complementing fl ip-fl op
Comp_D_flip_flop F0 (A0, Count, Reset);
Comp_D_flip_flop F1 (A1, A0, Reset);
Comp_D_flip_flop F2 (A2, A1, Reset);
Comp_D_flip_flop F3 (A3, A2, Reset);
endmodule
// Complementing fl ip-fl op with delay
// Input to D fl ip-fl op = Q'
module Comp_D_flip_flop (Q, CLK, Reset);
output Q;
input CLK, Reset;
reg Q;
always @ ( negedge CLK, posedge Reset)
if (Reset) Q <= 1'b0;
else Q <= #2 ~Q; // intra-assignment delay
endmodule
