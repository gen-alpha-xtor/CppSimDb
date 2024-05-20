//Verilog HDL for "CppSimModules", "constant_bool" "verilog"


module constant_bool ( out );

output out;
parameter val = 0 ;

reg out;

initial begin
   out = (val == 0) ? 1'b0 : 1'b1;
end

endmodule
