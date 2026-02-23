// Associative array 

module array;
  
  integer asso_array[string];
  
  initial begin
    
    asso_array = '{"cow":4, "goat":5, "hen":7};
    
    $display("\n-----Associative array-----");
    $display("no of animals = %p", asso_array );
    $display("no of cows = %0d", asso_array["cow"]);
    $display("no of hens = %0d", asso_array["hen"]);
    $display("----------------------------");
  end
endmodule
