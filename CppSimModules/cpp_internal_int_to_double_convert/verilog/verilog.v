module cpp_internal_int_to_double_convert(in, out, update_in, update_out);

   input [31:0] in;
   input update_in;
   output [63:0] out;
   output update_out;

   integer in_iv;
   reg update_out;
   real out_rv;

   assign out = $realtobits(out_rv);
 
   initial
     begin
       out_rv = 0.0;
       assign in_iv = in;
     end

   always@update_in
      begin
        out_rv = in_iv;
        update_out = update_in;
      end

endmodule
