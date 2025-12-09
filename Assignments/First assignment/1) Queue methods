module queue_methods;
  
  integer q[$];
  int n;
  
  initial begin
    q = '{20,30};
    n = 4;
    
    $display("\n----------Queue methods----------");
    q.push_back(40);
    $display("Element of queue after push back = %p", q);
    q.push_front(10);
    $display("Elements of queue after push front = %p", q);
    q.insert(n,4);
    $display("Elements of queue after inserting at index n = %p", q);
    q.insert(n-1,6);
    $display("Elements of queue after inserting at index (n-1) = %p", q);
    q.insert(n/2,8);
    $display("Elements of queue after inserting at index (n/2) = %p", q);
    q.pop_front();
    $display("Elements of queue after pop front = %p", q);
    q.pop_back();
    $display("Elements of queue after pop back = %p", q);
    $display("-------------------------------------");
  end
endmodule
