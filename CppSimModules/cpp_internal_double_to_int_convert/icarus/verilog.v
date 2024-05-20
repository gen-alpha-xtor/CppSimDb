module cpp_internal_double_to_int_convert(in, out, update_in, update_out);

   input [63:0] in;
   input update_in;
   output [31:0] out;
   output update_out;

   real in_rv;
   reg update_out;
   integer out_iv;

   assign out = out_iv;
 
   initial
     begin
       out_iv = 32'd0;
     end

   always@in
      in_rv = $bitstoreal(in);

   always@update_in
      begin
        out_iv = in_rv;
        update_out = update_in;
      end

endmodule
