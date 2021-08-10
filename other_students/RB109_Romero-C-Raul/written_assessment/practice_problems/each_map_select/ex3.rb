arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
end
p new_array

=begin
- On `line 1` we initialize local var `arr` and assign it to an array object that contains
  integer objects from `1` to `10`

- On `line 3` we are initializing local variable `new_array` and assigning it to the return
  value obtained after calling method `select` on local var `arr` and passing a `do..end`
  block as an argument with block parameter `n`
  - On `line 4` we invoke method `+` on local var `n` and pass in as an argument integer
    object `1`

- The output of this code will be an array that contains integer objects ranging
  from `1` to `10` (like the array object referenced by local var `arr`). Return
  value will an array object that contains integer objects from 1 to 10
- This is because the `do..end` block always evaluated to true, since `line 4` always
  ended up returning an integer object, which is a `truty` value. Since every
  time the block was ran it evaluated to `true`, every element from `arr` was selected
  and added to new_array
=end