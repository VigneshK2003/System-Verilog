// Array ordering methods

module array_ordering;
  
  int arr[5] = '{10,28,35,71,49};
  
  initial begin

    arr.reverse();
    $display(" array elements after reversing = %p", arr);
    arr.sort();
    $display(" array elements after sort() = %p", arr);
    arr.rsort();
    $display(" array elements after rsort() = %p", arr);
    arr.shuffle();
    $display(" array elements after shuffle() = %p", arr);
  end
endmodule
