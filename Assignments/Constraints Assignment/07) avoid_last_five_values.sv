// Write a constraint to avoid generating the same 4-variable value as any of the last 5 occurrences.

class packet;
  
     rand bit [7:0]value_num;
     bit [7:0]past_values[$];
  
  constraint past_values_ctr { foreach(past_values[i])
                                  value_num != past_values[i]; };
  
  function void post_randomize();
    
    past_values.push_back(value_num);
    
    if(past_values.size() > 5)
      past_values.pop_front();
  endfunction
endclass


module avoid_past_values;
  
    packet p;
  
    initial begin
      p = new();
      repeat(10) begin
        if(p.randomize())
          $display(" current value = %0d", p.value_num);
            foreach(p.past_values[i])
            $display(" past_values[%0d] = %0d",i, p.past_values[i]);
            $display("");
        end
     end
endmodule
  
