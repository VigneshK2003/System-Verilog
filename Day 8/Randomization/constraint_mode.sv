// Constraint mode

class const_mode;
  rand bit [2:0]a;
  rand bit [7:0]b;
  
  constraint even{ a%2==0; };
  
  constraint range{ b inside {[10:20],[30:40]}; };
endclass

module ctr_mode;
  
  const_mode ctr;
  
  initial begin
    ctr = new();
    
    $display("\n Values when Even constraint is off & Range constraint is on"); 
    repeat(5)begin
      ctr.even.constraint_mode(0);                                               // constraint disabled 
      ctr.range.constraint_mode(1);                                              // constraint enabled
      ctr.randomize();
      $display(" a = %0d, b = %0d", ctr.a, ctr.b);
    end
    
    $display("\n Values when Even constraint is on & Range constraint is off"); 
    repeat(5)begin
      ctr.even.constraint_mode(1);
      ctr.range.constraint_mode(0);
      ctr.randomize();
      $display(" a = %0d, b = %0d", ctr.a, ctr.b);
    end
  end
endmodule
      
