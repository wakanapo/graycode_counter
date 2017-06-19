module graycode_test;

   localparam T = 10; // period

   reg        CLK;
   reg        RST;
   reg        UP;
   reg        DOWN;
   wire [3:0] CODE;
 
   counter counter(.CLK(CLK), .RST(RST), .UP(UP), .DOWN(DOWN), .CODE(CODE));

   always begin
      CLK = 0; #(T/2);
      CLK = 1; #(T/2);
   end

   initial begin
      RST = 1;
      #(T*50) RST = 0;
      #(T*10) RST = 1;
      #(T*10) UP = 1;
      #(T*10) UP = 0;
      #(T*10) DOWN = 1;
      #(T*10) DOWN = 0;
      #(T*10);
      $finish;
   end // initial begin

endmodule // graycode_test

   
 
      
