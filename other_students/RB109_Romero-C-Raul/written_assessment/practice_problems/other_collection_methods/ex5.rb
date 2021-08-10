x = [1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end

p x

=begin
- On `line 1` we call method `each_with_index` on an array object (that contains integer
  objects `1`, `2`, and `3`) and pass in as an argument a `do..end` block with
  parameters `num` and `index`
  - On line `2` we are performing string interpolation, and passing the return value
    of that as an argument to method `puts`

- Output is :
  - The index of 1 is 0.
  - The index of 2 is 1.
  - The index of 3 is 2.
- This demonstrates how method `each_with_index` works. Method iterates through a collection
  along with the elements index number
- Return value is the array object method `each_with_index` was called on

=end