// Write a constraint to generate the palindrome-like sequence 1234554321.

class palindrome_n;
  rand int num[10];

  constraint value_range {
    foreach (num[i])
      num[i] inside {[1:5]};
    }
  constraint palindrome_ctr {
    num[0] == num[9];
    num[1] == num[8];
    num[2] == num[7];
    num[3] == num[6];
    num[4] == num[5];
  }
 constraint increasing_then_decreasing {
    num[0] < num[1];
    num[1] < num[2];
    num[2] < num[3];
    num[3] < num[4];
  }
endclass

module palindrome_seq;
  palindrome_n p;

  initial begin
    p = new();

    if (p.randomize()) begin
      $display("Palindrome sequence:");
      foreach (p.num[i])
        $write("%0d", p.num[i]);
      $display("");
    end
    else
      $display("Randomization failed");

    $finish;
  end
endmodule
