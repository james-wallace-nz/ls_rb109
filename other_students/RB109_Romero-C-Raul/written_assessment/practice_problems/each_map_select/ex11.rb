[1, 2, 3].each do |num|
  puts num
end

=begin
- Output is numbers 1, 2, and 3 on separate lines.
- The return value is the array object method `each` was called on: [1, 2, 3]
- This code demonstrates how method `each` works:

- On `line 1` we call method `each` on an array object (containing integer objects 1, 2, 
  and 3) and a `do..end` block with parameter `num` is passed in as an argument
  - On `line 2` we invoke method `puts` and pass in as an argument local var `num`. This
    outputs all the elements within the array object method `each` was called on.
  - The return value is the same array object the method `each` was called on, because
    method `each` does nothing with the return value of the block. Method `each`
    will always return the original array object it was called on regardless of what
    the block's return values are.
=end