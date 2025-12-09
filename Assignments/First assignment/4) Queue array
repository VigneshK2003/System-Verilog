
module queue_methods;
  
  int q[$];
  
  initial begin
    
    q = '{10,20,30,40};
    $display("Elements of queue = %p", q);
    q.insert(1,1);
    $display(" Elements of queue after index(1) = %p", q);
    q.delete(3);
    $display(" Elements of queue after delete(3) = %p", q);
    q.push_back(9);
    $display(" Elements of queue after push back = %p", q);
    q.shuffle();
    $display(" Elements of queue after shuffle = %p", q);
    q.reverse();
    $display(" Elements of queue after reverse = %p", q);
  end
endmodule
