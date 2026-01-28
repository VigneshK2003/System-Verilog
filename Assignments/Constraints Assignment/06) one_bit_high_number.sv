// write a constraint to generate a 32-bit number where exactly one bit is high.

class bit_high;
  
  rand bit [31:0]num;

constraint ctr { $countones(num) == 1; };

endclass

module example;

  bit_high b;

 initial begin
    b = new();

   repeat(5) begin
     b.randomize();
     $display(" num = %032b", b.num);
   end
 end
endmodule 
