typedef logic[7:0]data;

module user_defined_data_type;
   
   data a;
   data b;
   data c;
  
  initial begin
     a = 8'd10;
     b = 8'd5;
     c = a + b;
    
    $display("\n-----user defined data type-----"); 
    $display("value of variable a = %0d", a);
    $display("value of variable b = %0d", b);
    $display("value of variable c = %0d", c);
    $display("-------------------------------");
  end
endmodule
