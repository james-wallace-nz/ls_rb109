n = 10

1.times do |n|
  n = 11
end

puts n
=begin
- This code outputs `10`

- In line 1, we initialize local var. `n` and assign it to integer object `10`

- In line 3, we call method `times` on integer object `1`, passing a `do..end` block
  with parameter `n` as an argument
  - Local variable `n` is initialized when the block is called, preventing any variable
    with the same name outside the block from being accessed within the block
    - On line 4, local variable `n` is reassigned from integer object `1` to integer
      object `11`

- On line 7, we invoke `puts` and pass in as an argument local var `n`, the output is 
  10 (and return nil) because variable shadowing prevented the variable in the outside
  scope from being re-assigned within the inner scope.
=end