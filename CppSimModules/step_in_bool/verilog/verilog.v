//Verilog HDL for "CppSimModules", "step_in_bool" "verilog"


module step_in_bool ( step );

  output step;
parameter tstep = 0.0 ;
parameter vstart = 0 ;
parameter vend = 0 ;

reg step;


initial begin
   step = (vstart == 0) ? 0 : 1;
   #(tstep/100e-12) 
   step = (vend == 0) ? 0 : 1;
end
endmodule
