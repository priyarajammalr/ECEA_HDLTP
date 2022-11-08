`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2022 10:35:08
// Design Name: 
// Module Name: counter_tb
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


module counter_tb( );

reg clk;
wire[3:0] count;

counter uut(.clk(clk),.count(count));

initial begin
clk = 0;
end

always 
begin
#5
clk =~clk;

end
always #250 $finish;
endmodule
