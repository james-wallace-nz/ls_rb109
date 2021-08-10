=begin
The following code should print an array of numeric strings in reverse numerical
order. Get the expected output without removing any code.

The problem here is with how the methods / operators are binding to their operands.
The `do..end` block in Ruby has the least prioritized binding to it's operand
(aka caller). Therefore, we pass arr.sort to the p method without ever calling
the block. This causes the sort method to sort the elements as if their were
strings, not integers, which is why '10' comes before '11'.

Changing the block to a {} block causes the bindings to have higher priority. Now
sort will call the block with every iteration and we are sorting the elements
based on their integer values.
=end

arr = ["9", "8", "7", "10", "11"]
p arr.sort { |x, y| y.to_i <=> x.to_i }

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 
