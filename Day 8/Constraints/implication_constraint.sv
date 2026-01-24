// implication constraint

class implict_const;
   rand bit en;
  rand bit [7:0]a;
  
  constraint ctr { 
    en == 1 -> a inside {[80:100]}; };                 // implication operator ( -> )
endclass

module implication_constraint_ex;
   
     implict_const ic;
  initial begin
    ic = new();
    repeat(5) begin
      ic.randomize() with {en==1;};                 // inline constraint
      $display("en = %0d, a = %0d", ic.en,ic.a);
    end
  end
endmodule
