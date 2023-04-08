module mux2x1 (A, B, SEL, Gbar, Y);
input A, B, SEL, Gbar;
output Y;
reg Y;

always @ (SEL, A, B, Gbar) 
begin
    if(Gbar == 1)
        Y = 1'bz;
    else
    begin
        if(SEL) Y=B;
        else
        Y=A;
    end
end
endmodule