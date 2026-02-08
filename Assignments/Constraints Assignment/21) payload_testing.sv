// Write a constraint to generate payload data for testing.

class payload_data;
  
  rand bit [7:0] payload[8];   

  constraint payload_ctr {foreach(payload[i]) 
                            payload[i] inside {[0:255]};
  }
  
endclass

module payload_example;
  
  payload_data p;

  initial begin
    p = new();
    repeat (3) begin
      if (p.randomize())
        $display("Payload = %p", p.payload);
    end
  end
endmodule
