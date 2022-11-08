`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2022 10:52:33
// Design Name: 
// Module Name: shit_register
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


module shit_register(input clk,rst,input si,output reg so, output reg [3:0] sr );

always @(posedge clk or posedge rst)
if (rst == 1)
sr = 4'b0000;
else
begin
sr[3]<=si;
sr[2]<=sr[3];
sr[1]<=sr[2];
sr[0]<=sr[1];
so<=sr[0];
end
endmodule
