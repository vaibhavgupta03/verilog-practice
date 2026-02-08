module cyclicLight(clk,light);
input clk;
output reg [2:0] light;

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;

parameter RED = 3'b100;
parameter YELLOW = 3'b010;
parameter GREEN = 3'b001;

reg [1:0] state;

always @(posedge clk)
begin
  case (state)
  S0 : begin
    light <= YELLOW;
    state <= S1;
  end
  S1 : begin
    light <= GREEN;
    state <= S2;
  end
  S2 : begin
    light <= RED;
    state <= S0;
  end
  default : begin
    light <= RED;
    state <= S0;
  end
  endcase
end
endmodule