arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n| 
  n > 1
  puts n
end
p new_array

=begin
- Output of this code is numbers `1` through `10` on separate lines
- Return value is an array object that contains `nil` for all elements
- This is demonstrating how method `map` works.

  - Since `map` takes whatever the return value of the block is, we can see that due to
    what happens on `line 5` the return value of the block will always be `nil`
    - On `line 5` we invoke method `puts` and pass in local var `n` as an argument. The 
      return value of method `puts` will always be `nil`, so for every iteration the blocks
      return value is `nil` and that is what method `map` takes and adds to a new array`.
      This explains the output and return value described on `lines 10 - 11`
=end