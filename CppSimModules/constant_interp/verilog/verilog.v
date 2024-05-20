//Verilog HDL for "CppSimModules", "constant_interp" "verilog"


module constant_interp ( out );

  output out;
parameter consval = 0 ;

reg out;
initial out = (consval > 0) ? 1 : 0; 
endmodule
