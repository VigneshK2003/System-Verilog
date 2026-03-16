typedef struct{ int a;
                int b;
                string c; } instr_t; 

module mem_struct;
  instr_t mem[2];
  initial begin
    mem[0] = '{1,2,"Hi"};
    mem[1] = '{3,4,"Hello"};
  
    $display(" \n value of mem[0] = %p", mem[0]);
    $display(" value of mem[1] = %p", mem[1]);
  end
endmodule
