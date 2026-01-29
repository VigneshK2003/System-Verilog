// Create a 61-bit variable constraint such that bits 0-31 are 1 and the remaining bits are 0

class variable_const;
  rand bit [0:60]var_c;
  
  constraint gen_var { foreach(var_c[i])
    if(i<32)
      var_c[i] == 1;
    else  
      var_c[i] == 0;  };
endclass

module variable_const_ex;
  
   variable_const v;
  
  initial begin
    v = new();
    v.randomize();
    $display(" variable = %061b", v.var_c);
  end
endmodule
