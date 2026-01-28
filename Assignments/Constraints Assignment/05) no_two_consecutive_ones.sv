// Write a constraint for a 16-bit variable such that no two consecutive 1's are generated

class consec_val;
  rand bit [15:0]value;
  
  constraint ctr { foreach(value[i]) if(i>0)
                    value[i] != value[i-1];  };
endclass

module cons_val_ex;
  
      consec_val c_val;
  
  initial begin
     c_val = new();
     c_val.randomize();
    $display(" v = %0b", c_val.value);
  end
endmodule
