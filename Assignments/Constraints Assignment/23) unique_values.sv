// Write a constraint to generate unique numbers without using the unique keyword.

class unique_values;
  
  randc bit [7:0]num;
  
  constraint ctr { num inside {[60:90],[120:140]}; };
endclass

module example;
  
   unique_values v;
  
  initial begin
    v = new();
    repeat(10) begin
      v.randomize();
      $display(" values of given num = %0d", v.num);
    end
  end
endmodule
