module cpp_internal_double_interp_to_bool_convert(in, out, update_in, update_out);

   input [63:0] in;
   input update_in;
   output out;
   output update_out;

   real in_rv;
   reg update_out;
   reg out_bv;

   assign out = out_bv; 

   initial
     begin
       out_bv = 0;
     end

   always@in
     in_rv = $bitstoreal(in);

   always@update_in
      begin
         if (out_bv == 0)
            begin
               if (in_rv > -1.0)
                   out_bv = 1;
            end
         else
            begin
               if (in_rv < 1.0)
                   out_bv = 0;
            end
        update_out = update_in;
      end

endmodule
