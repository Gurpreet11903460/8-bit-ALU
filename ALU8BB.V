module ALU8BB(a,b,s,y);
input[7:0]a,b;
input[1:0]s;
output reg[15:0]y;
always @(*)
begin
case(s)
2'b00:y=a+b;
2'b01:y=a-b;
2'b10:y=a*b;
2'b11:y=a/b;
endcase
end
endmodule

module alu8BBtb();
reg[7:0]a,b;
reg[1:0]s;
wire[15:0]y;
ALU8BB a1(a,b,s,y);
initial
begin
#2 a=8'b00100001;b=8'b00010001;s=2'b00;
#2 a=8'b00100011;b=8'b00100001;s=2'b01;
#2 a=8'b01010000;b=8'b11000010;s=2'b10;
#2 a=8'b11100010;b=8'b11000001;s=2'b11;
#50 $stop;
end
endmodule
