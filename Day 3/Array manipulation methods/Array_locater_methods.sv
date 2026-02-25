// Array locater method

module array_locater;
  
  int arr[6];
  int q[$];
  
  initial begin
    
    arr = '{10,20,30,40,50,20};
    
    $display("\n-----Array locater methods-----");
    
    q = arr.find(x) with( x>20 ); 
    $display("values for given condition in the array = %p", q);
    
    q = arr.find_first(x) with(x>10 & x<40);
    $display("value for given condition in the array = %p", q);
    
     q = arr.find_first_index(x) with(x>10 & x<40);
    $display("value for given condition in the array = %p", q);
    
     q = arr.find_last(x) with(x>10);
    $display("value for given condition in the array = %p", q);
    
    q = arr.find_last_index(x) with(x>40);
    $display("value for given condition in the array = %p", q);
    
    q = arr.find_index(x) with(x == 30);
    $display("value of x in given condition = %p", q);
    
    q = arr.max();
    $display("maximum value in the given array = %p", q );

    q = arr.min();
    $display("minimum value in the given array = %p", q);

    q = arr.unique();
    $display("unique element = %p", q);

    q = arr.unique_index();
    $display("unique index = %p", q);
    $display("------------------------------");
  end
endmodule
