// Deep Copy basic code

class data;
  int value;
  
  function void copy(data d);
       this.value = d.value;
  endfunction
endclass

module deep_copy;
  
    data d1,d2;
  
  initial begin
    d1 = new();
    d1.value = 20;
    
    d2 = new();
    d2.copy(d1);
    
    $display("d1 = %0d", d1.value);
    $display("d2 = %0d", d2.value);
    
    d2.value = 50;
    $display("d1 = %0d", d1.value);
    $display("d2 = %0d", d2.value);
   end
endmodule
