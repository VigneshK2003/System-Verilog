// Array reduction methods

module array_reduction;
  
  integer arr[5];
  
  initial begin
    
    arr = '{1,3,5,7,9};

    $display("------Array reduction------");
    $display(" Sum of given array elements = %0d", arr.sum());
    $display(" Product of given array elements = %0d", arr.product());
    $display(" AND of given array elements = %0d", arr.and());
    $display(" OR of given array elements = %0d", arr.or());
    $display(" XOR of given array elements = %0d", arr.xor());
  end
endmodule
