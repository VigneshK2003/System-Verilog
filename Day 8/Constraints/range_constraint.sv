// range constraint basic code

class range_const;
   rand bit [7:0]a;
   rand bit [7:0]b;
   rand bit [7:0]c;
  
  constraint ctr1 { a inside {[30:40]}; };
  
  constraint ctr2 { b >= 20; b <= 30; };
   
  constraint ctr3 { c inside {[10:20], [70:80]};};
endclass
  
module rangeconst_ex;
  
   range_const r;
  
  initial begin
    r = new();
    
    repeat(5) begin
    r.randomize();
    $display(" a = %0d, b = %0d, c = %0d", r.a,r.b,r.c);
    end
  end
endmodule
