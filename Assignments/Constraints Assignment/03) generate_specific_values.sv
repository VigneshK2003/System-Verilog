// Write a constraint to generate specific values: 25, 27, 30, 36, 40, 45

class specific_const;
  randc int data;
  
  constraint specific_value { data inside {25,27,30,36,40,45}; };
  
endclass

module example;
  
   specific_const sct;
  
  initial begin 
    sct = new();
    repeat(10) begin
    sct.randomize();
    $display("data = %0d", sct.data);
    end
  end
endmodule
