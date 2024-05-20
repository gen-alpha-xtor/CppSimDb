
module prbsV(clkV, outV);

input	clkV;
output	outV;

wire	outV;

reg [31:0] lfsr;
reg	tmp;

initial begin
	//set seeds
 	lfsr = 32'b11111111111111111111111111111110;  
end

assign outV = lfsr[0];

always @ (posedge clkV)
begin   
   tmp = ~((lfsr[31]^lfsr[21])^(lfsr[1]^lfsr[0]));
   lfsr = { lfsr[30: 0], tmp};
//   #5
//   $monitor("\n %b %b %b %b %b", lfsr[31], lfsr[21], lfsr[1], lfsr[0], tmp);
end


endmodule


