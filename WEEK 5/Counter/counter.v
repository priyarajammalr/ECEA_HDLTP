`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2022 10:28:04
// Design Name: 
// Module Name: counter
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


module counter(input clk,output reg[3:0] count);

initial begin
count =0;
end

always @(posedge clk)
begin
if (count<=15) begin
count = count+1;
end
else if (count==16)
begin 
count = 0;
end
end
endmodule
