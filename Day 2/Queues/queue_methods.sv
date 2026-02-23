// Queue methods basic program

module queue;
  
  int arr[$];       
  
initial begin;
    arr = {10,20,30};
  
    $display("\n-----Array methods-----");
    arr.push_front(5);
    $display("elements of array after push front = ", arr);
    arr.push_back(40);
    $display("elements of array after push back = ", arr);
    arr.pop_front();
    $display("elements of array after pop front = ", arr);
    arr.pop_back();
    $display("elements of array after pop back = ", arr);
    arr.reverse();
    $display("element of array after reversing = ", arr);
end
endmodule
