`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2023 23:55:35
// Design Name: 
// Module Name: shift_add
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
module shift_addmultiplier( clk,rest,M, Q, C);
parameter m=8, n=8;
integer i;
input clk,rst;
input [m-1:0] M;
input [n-1:0] Q;
output reg [m+n-1:0]C;
reg [m+n-1:0]M1;
reg [n-1:0]Q1;
always@(posedge clk or posedge rest )
begin
		if (rest)
		begin
		C=0;
		end
		else 
		begin
		C=0;
		M1[m-1:0]=M;
		N1[m+n-1:m]=0;
		Q1=Q;
        for (i=0;i<n;i=i+1)
        begin
			if(Q1[i]==1'b0)
			begin
				C=C+0;
			end
			else if (Q1[i]==1'b1)
			begin
				C=C+(M1<<i);
			end
		end
		end
end
endmodule
