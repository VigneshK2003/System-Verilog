// Write a constraint to generate values in increasing order.

class increasing_values;
 
 rand bit[7:0] num[5];
  
  constraint increasing_ctr {foreach (num[i]) if (i>0)
                                num[i] > num[i-1];
  }
endclass


module increase_value;
  
  increasing_values v;

  initial begin
    v = new();

    if(v.randomize()) begin
     foreach(v.num[i])
        $display("num[%0d] = %0d", i, v.num[i]);
      end
    else
      $display("Randomization failed");

    $finish;
  end
endmodule
