`timescale 1ns / 1ps



module tb(
            
    );
    reg A,B,C,D,select1,select2;
    wire y ;
    Four_2_1 mux_test(.s1(select1),.s2(select2),.s3(y),.a(A),.b(B),.c(C),.d(D));      
    initial
    begin
    select1=0;A=0;B=0;C=0;D=0;select2=0;
    #100 select1=0;A=0;B=1;C=0;D=0;
    #100 select1=0;A=1;B=0;C=1;D=0;
    #100 select1=0;A=1;B=1;D=0;C=0;
    #100 select1=1;A=0;B=0;C=1;D=1;
    #100 select1=1;A=0;B=1;D=1;C=0;
    #100 select1=1;A=1;B=0;C=0;D=0;
    #100 select1=1;A=1;B=1;C=1;D=1;
    #100 select2 = 1;
    #100 select1=0;A=0;B=1;C=0;D=0;
    #100 select1=0;A=1;B=0;C=1;D=0;
    #100 select1=0;A=1;B=1;D=0;C=0;
    #100 select1=1;A=0;B=0;C=1;D=1;
    #100 select1=1;A=0;B=1;D=1;C=0;
    #100 select1=1;A=1;B=0;C=0;D=0;
    #100 select1=1;A=1;B=1;C=1;D=1;
    end
endmodule
