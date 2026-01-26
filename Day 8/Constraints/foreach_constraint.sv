// foreach constraint

class for_each;
  randc int arr[5];
  
  constraint ctr { foreach(arr[i])                   // foreach constraint
                 arr[i] inside {[10:20]}; };
  
  function void display();
    $display(" array values = %0p", arr);
  endfunction
endclass

module foreach_constraint_example;
    
    for_each r;
  initial begin
    r = new();
    repeat(3) begin
    r.randomize();
    r.display();
    end
  end
endmodule
