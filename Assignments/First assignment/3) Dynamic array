module dynamic_array;
  integer arr[];
  integer i;
  
  initial begin
    arr = new[5];
    foreach (arr[i]) begin
      arr[i] = i*2;
      $display("arr[%0d] = %0d", i, arr[i]);
        end
    arr.shuffle();
    $display("Elements of array = %p", arr);
    arr.size();
    $display("Size of given array = %0d", arr.size());
  end
endmodule
