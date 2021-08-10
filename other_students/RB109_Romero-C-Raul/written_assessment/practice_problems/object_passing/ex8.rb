def increment(x)
  x << 'b'
end

y = 'a'
increment(y) 

puts y

=begin
- On `lines 1-3` we are defining method `increment` with one parameter `x`
- On `line 5` we are initializing local var `y` and assigning it to string object `a`

- On `line 6` we are invoking method `increment` and passing in as an argument
  local variable `y`
  - Within the method definition, local var `x` is pointing to the same object local var
    `y` is referencing
  - On `line 2`, method `<<` is being called on local var `x` and string object `b` is
    passed in as an argument, this mutates the object local variable `x` is referencing
    
- On `line 8` method `puts` is invoked and local variable `y` is passed in as an argument
  - Output is 'ab' because the string object was mutated after the method was ran, since both
    variable `x` within the method and variable `y` outside the method scope were pointing
    to the same object, demonstrating the concept of variables as pointers
  - Return value is nil
=end