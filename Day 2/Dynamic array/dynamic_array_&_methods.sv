// dynamic array and methods

module dynamic_array;
  
  integer arr[];
  
  initial begin 
    arr = new[5];            //new constructor
    arr = '{1,4,6,8,9};
    
    $display("\n-----Dynamic array-----");
    foreach(arr[i])
    $display("arr[%0d] = %0d", i,arr[i]);
    $display("Size of array = %0d", arr.size());
    
    arr = new[7];                 //overriding
    $display("\nSize of array after overriding = %0d", arr.size());
    
    //values initialised after overriding
    arr = '{10,20,30,40,50,60,70};             
    foreach(arr[i])
     $display("arr[%0d] = %0d", i,arr[i]);
    
    //copying array elements and resizing an array
    arr =new[8](arr);
    $display("\nSize of array after resizing = %0d", arr.size());
    foreach(arr[i])
      $display("arr[%0d] = %0d", i,arr[i]);
    $display("-----------------------");
    end
endmodule
