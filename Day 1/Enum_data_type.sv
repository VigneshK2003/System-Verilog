// enum data type and methods

module enum_data_type;
  
  typedef enum{ red, green, yellow}color_e;
  
   color_e data;
  
  initial begin
    
    $display("\n-----enum data types-----");
    
    data = data.num();
    $display("Total number of datas = %0d",data);
    
    data = data.first();
    $display("First data = %0s", data);
    
    data = data.next();
    $display("Next data = %0s", data);
    
    data = data.last();
    $display("Last data = %0s", data);
    
    $display("------------------------");
  end
endmodule
