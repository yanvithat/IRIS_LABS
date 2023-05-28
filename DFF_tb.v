`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2023 18:24:34
// Design Name: 
// Module Name: Tb_dff
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
module Tb_dff();
reg clk,reset,D;
wire Q,Qbar;
Dff dut(clk,reset,D,Qbar,Q);

initial
begin
clk=0;
reset=0;
D=1'b0;
forever #10 clk=~clk;
end

initial
begin
#10
D=1'b1;
#10
reset=1;
#10;
D=1'b0;
#10;
D=1'b1;
#20;
reset=0;
end
endmodule
