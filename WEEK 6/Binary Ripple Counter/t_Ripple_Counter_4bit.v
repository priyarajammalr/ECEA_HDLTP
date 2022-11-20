`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2022 09:46:39 PM
// Design Name: 
// Module Name: t_Ripple_Counter_4bit
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


module t_Ripple_Counter_4bit;
reg Count;
reg Reset;
wire A0, A1, A2, A3;
// Instantiate ripple counter
Ripple_Counter_4bit M0 (A3, A2, A1, A0, Count, Reset);
always
#5 Count = ~Count;
initial
begin
Count = 1'b0;
Reset = 1'b1;
#4 Reset = 1'b0;
end
initial #170 $finish;
endmodule
