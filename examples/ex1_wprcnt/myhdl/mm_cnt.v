// File: mm_cnt.v
// Generated by MyHDL 0.9dev
// Date: Fri Mar 28 20:00:08 2014


`timescale 1ns/10ps

module mm_cnt (
    clock,
    reset,
    out
);


input clock;
input reset;
output [4:0] out;
reg [4:0] out;






always @(posedge clock, negedge reset) begin: MM_CNT_RTL
    if (reset == 0) begin
        out <= 0;
    end
    else begin
        if ((out <= 30)) begin
            out <= (out + 1);
        end
        else begin
            out <= (out - 1);
        end
    end
end

endmodule
