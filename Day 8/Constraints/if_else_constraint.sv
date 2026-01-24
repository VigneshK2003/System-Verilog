// if-else constraint basic code

class if_else_const;
  rand bit en;
  rand bit [7:0]a;
  
  constraint if_ctr { 
              if(en)
                a inside {[100:150]}; 
              else
                a == 0;
             };
endclass

module if_const;
    if_else_const iec;
  
  initial begin
     iec = new();
    repeat(5) begin
    iec.randomize();
      $display(" en = %0d, a = %0d", iec.en, iec.a);
    end
  end
endmodule
