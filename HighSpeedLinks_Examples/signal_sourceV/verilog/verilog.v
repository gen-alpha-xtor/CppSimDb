/////////// Auto-generated from CppSim module ///////////
/////////// NOTE:  Do not modify this file! ///////////
////// Instead, modify the associated CppSim module //////

module signal_sourceV(phaseV, outV, clkV);

   parameter stype = 0;
   parameter freq = 3.00000000e+09;
   parameter Ts = 1; 

   input phaseV;
   output outV;
   output clkV;

   wreal phaseV;
   real phase_rv;
   wreal out;
   real out_rv;

   wreal clk;
   reg clk_rv;

   assign outV = out_rv;
   assign clkV = clk_rv;

   initial
      begin
        assign phase_rv = phaseV;
	assign clk_rv = 1'b0;
      end

   always
      begin
        # (1)
        clk_rv = ~clk_rv; 
      end

endmodule

