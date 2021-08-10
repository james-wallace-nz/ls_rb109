def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b

=begin

- On `lines 1-3` we define method `plus` with two parameters `x` and `y`
- On `line 5` we initialize local variable `a` and assign it to integer object `3`
- On `line 6` we invoke method `plus` and pass in as arguments local var `a` and
  integer object `2`
  - In `line 2` we re-assigning local variable `x` (which is pointing to the same string
    object local var `a` in the main scope is pointing to) to the return value obtained
    after calling method `+` on local variable `x` and passing in as an argument local
    variable `y` (which is pointing to integer object `2`)
  - In `line 2` as well, local variable `b` is initalized and assigned to the return
    value obtained from calling method `plus` and passing in as arguments local var `a` and
    integer object `2`

- In line 8, invoking method `puts` and passing local var `a` as an argument will output 3
  and return nil
- In line 9, invoking method `puts` and passing local var `b` as an argument will output 5
  and return nil
  
- This is demonstrating the concept of variables as pointers, especifically how any variable
  that we want to work with within the method definition must be first passed as an 
  argument to enable its access. It also demonstrates the concept of re-assignment. Local
  variable `a` was not mutated since no mutating methods were using within the method
  definition. Also, since we are working with integers and integers cannot be mutates,
  local var `a` would never have been able to be mutated in the first place.
  

=end