`timescale 1ns / 1ps
//////


module Two_to_one(input sel,
                  input i0,
                  input i1,
                  output reg y
    );
    
//    reg y;
    always @*
    begin
    if(sel)
        y = i0;
    else
        y = i1;
    end
endmodule
