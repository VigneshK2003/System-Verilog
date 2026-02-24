// 2-D packed array

module packed_array;
  
  logic [2:0][7:0]arr_n;
  
 initial begin

   //initializing values for array elements
   arr_n[0] = 8'b00110011;
   arr_n[1] = 8'b01010101;
   arr_n[2] = 8'b11001100;
   
   $display("\n-----2-D packed array-----");
   $display("arr_n[0] = %08b", arr_n[0]);
   $display("arr_n[1] = %08b", arr_n[1]);
   $display("arr_n[2] = %08b", arr_n[2]);
   
   //part select
   $display("part select, arr_n[1][3:0] = %04b", arr_n[1][3:0]);
   $display("part select, arr_n[2][7:4] = %04b", arr_n[2][7:4]);
   
   //bit select
   $display("bit select, arr_n[2][4] = %0b", arr_n[2][4]);
   $display("bit select, arr_n[0][1] = %0b", arr_n[0][1]);
   $display("-------------------------");
 end
endmodule
