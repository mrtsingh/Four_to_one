`timescale 1ns / 1ps



module Four_2_1(input a,
                input b,
                input c,
                input d,
                input s1,
                input s2,output s3
    );
    
    wire a1;
    wire a2;
//    wire a3
    
    Two_to_one m1(.sel(s1),.i0(a),.i1(b),.y(a1));
    Two_to_one m2(.sel(s1),.i0(c),.i1(d),.y(a2));
    Two_to_one m3(.sel(s2),.i0(a1),.i1(a2),.y(s3));
    
endmodule
