// How can you generate Gray code sequences using SystemVerilog

class gray_code;
  rand bit [3:0]data;
  rand bit [3:0]gray;
  
  constraint gray_c { gray == (data ^ (data>>1)); };
endclass

module gray_code_example;
  
  gray_code g;
  
  initial begin
    g = new();
    repeat(5)begin
    g.randomize();
    $display("binary code = %b, gray code = %b",g.data, g.gray);
    end
  end
endmodule
