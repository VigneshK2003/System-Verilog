// 1-D unpacked array

module unpacked_array;
  
  int arr[5];
  
  initial begin
    
    arr = '{10,20,30,40,50};   //values initialised
    
     $display("-----1-D unpacked array-----");
    foreach(arr[i])
      $display("arr[%0d] = %0d", i,arr[i]);
      $display("-----------------------");
  end
endmodule
