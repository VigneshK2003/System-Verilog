module unpacked_array;

  integer arr[2][3]; 

  initial begin
    
    arr = '{'{1,2,3}, '{4,5,6}};

    $display("\n----- 2D Unpacked Array -----");

    foreach(arr[i,j])
    $display("arr[%0d][%0d] = %0d", i, j, arr[i][j]);
    $display("----------------------------");
  end

endmodule
