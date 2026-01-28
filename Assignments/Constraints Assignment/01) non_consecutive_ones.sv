// Write a constraint for a 32-bit variable such that exactly 12 non-consecutive 1's are generated

class consecutive_num;
  rand bit [31:0]data;
  
  constraint count { $countones(data) == 12; }; 
  
  constraint no_consecutive_ones {
    foreach (data[i])
      if (i > 0)
        !(data[i] && data[i-1]); };
endclass

module consecutive_num_example;
 
   consecutive_num cnum;
  
  initial begin
    
    cnum = new();
    cnum.randomize(); 
    $display(" data = %0b", cnum.data);
  end
endmodule
