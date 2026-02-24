// 1-D packed array

module packed_array;
  
  logic [7:0]arr_n;
  
 initial begin
   
   arr_n = 8'b00110101;       //array values initialised 
   
     $display("\n-----1-D packed array-----");
     $display("packed array, arr_n = %0b", arr_n);
   
     //bit select
     $display("0th element of the given array, arr_n[0] = %0b", arr_n[0]);  
     $display("Bit select, arr_n[3] = %0b", arr_n[3]);
   
     //Part select
     $display("Part select, arr_n[2:0] = %04b", arr_n[3:0]);
     $display("Part select, arr_n[2:0] = %04b", arr_n[7:4]);
     $display("---------------------------");
   end
endmodule
