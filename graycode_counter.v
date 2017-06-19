module graycode_counter (
                         input            CLK,
                         input            RST,
                         input  [1:0]     BTN,
                         output [3:0]     LED         
                         );

   /* チャタリング除去回路に接続 */
   wire                                   UP, DOWN;
   debounce d0(.CLK(CLK), .RST(RST), .BTNIN(BTN[0]), .BTNOUT(UP));
   debounce d1(.CLK(CLK), .RST(RST), .BTNIN(BTN[1]), .BTNOUT(DOWN));

   /* グレイコードカウンタ */
   counter counter(.CLK(CLK), .RST(RST), .UP(UP), .DOWN(DOWN), .CODE(LED));
   
endmodule
        
