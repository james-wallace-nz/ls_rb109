arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

x = arr.select { |n| n.odd? }
p x
=begin
- On `line 1` we initialize local var `arr` and assign it to an array object that contains
  integer objects `1` through `10`

- On `line 3` we are calling method `select` on local var. `arr` and passing in a block
  as an argument
  - Within the block, we have parameter `n` and we are calling method `odd?` on local
    variable `n`. Local var. `n` represents each element on `arr` throughout each
    iteration. If the block evaluated to `true`, then method `select` will add the current
    element being iterated through to a new array. 

- There is no output from this code
- The return value from this code will be a new array that only contains odd elements
  1, 3, 5, 7, and 9. This numbers were selected and added to a new array by method 
  `select` because thorughout each iteration, the return value of the block evaluated
  to true (when `n` referenced 1, 3, 5, 7, and 9 integer objects). This demonstrates
  how method `select` works.
=end