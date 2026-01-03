
class parent;
   string fruit;
   int count;
   
   virtual function void display();
     $display("Fruit = %0s, Count = %0d", fruit,count);
   endfunction
endclass

class child1 extends parent;
   function void display();
     $display("Fruit = %0s, count = %0d", fruit,count);
   endfunction
endclass

class child2 extends parent;
  
  function void display();
    $display("Fruit = %0s, count = %0d", fruit,count);
  endfunction
endclass
   
module polymorph;
  
  initial begin
   
    parent p1;
    child1 c1;
    child2 c2;
    
    c1 = new();
    c1.fruit = "Apple";
    c1.count = 10;

    c2 = new();
    c2.fruit = "Mango";
    c2.count = 20;
     p1 = c1;
    p1.display();
    p1 = c2;
    p1.display(); 
  end
endmodule
