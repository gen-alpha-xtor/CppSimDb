//Verilog HDL for "CppSimModules", "triangle_wave_gen" "functional"


module triangle_wave_gen ( out, clk );

  input clk;
  output out;
parameter offset = 0 ;
parameter amp_pp = 1 ;
parameter freq_out = 1 ;
parameter freq_clk = 1 ;

reg out;

initial begin
   out <= 1'b0;
end
  
endmodule
