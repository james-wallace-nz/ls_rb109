# What will the given code print? Why?

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

=begin
The code will print the integers 0, 1, 2 all on separate lines as it
iterates through the block that is passed to .times within the method.
However, when it gets to the third iteration, sheep will be equal to
2, and the if statement will evaluate to true. The return statement
will execute and we will leave the method. Because the explicit return
statement is not passed a value, the method will return a value of
nil, which will be printed when passed to `p` on line 12.
=end