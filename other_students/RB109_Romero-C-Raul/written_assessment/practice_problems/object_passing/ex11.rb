a = [1, 3]
b = [2]
arr = [a, b]
p arr

a[1] = 5
p arr

=begin
- On `line 1` we are initializing local var `a` and assigning it to an array object
  that contains integer objects 1, 3
- On `line 2` we are initializing local var `b` and assigning it to an array object
  that contains value `1`

- On `line 3` we are initializing local variable `arr` and assigning it to an array object
  - The first element in this array is referencing the same array object local variable
    `a` is referencing
  - The second element in this array is referencing the same array object local variable
    `b` is referencing
- On line 4, we are referencing local variable `arr`

- On `line 6` we are invoking method `[]` on local variable `a` and passing integer value
  `1` as an argument. This is re-assigning the second element in the array referenced by
  local var `a`
  - The objects `arr` is referencing will also be mutated, since the array object is also referencing
    the array object that local var `a` is referencing. This is demonstrating the
    concept of variables as pointers
  
  - local var `arr` is referencing the array object `[[1, 5], [2]]`

=end