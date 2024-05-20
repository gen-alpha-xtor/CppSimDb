module cpp_internal_bool_to_double_interp_convert(in, out, update_in, update_out);

   input in;
   input update_in;
   output [63:0] out;
   output update_out;

   reg update_out;
   real out_rv;

   assign out = $realtobits(out_rv);

   initial
     begin
       out_rv = -1.0;
     end

   always@update_in
      begin
         if (in == 0)
            out_rv = -1.0;
         else
            out_rv = 1.0;
        update_out = update_in;
      end

endmodule
