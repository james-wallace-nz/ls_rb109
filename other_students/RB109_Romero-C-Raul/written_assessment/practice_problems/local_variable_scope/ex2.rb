a = 4

loop do
  a = 5
  b = 3
  break
end

puts a
puts b

=begin
- On line 1, we are initializing local variable `a` and assigning it to integer
  object `4`
  
- On line 3, we are invoking method `loop` and passing a `do..end` 
  block as an argument
  
- On line 4, we are re-assigning local variable `a` to an integer object `5`
- On line 5, we are initializing local variable `b` within the inner scope,
  and assigning it to integer object value 3
  
- On line 6, we are using keyword `break` to break out of the loop

- On line 9, we are invoking method `puts` and passing in local variable `a` as an
  argument:
  - Output is 5
  - Return is nil
  
- On line 10, when invoking `puts` and passing in local variable `b` as an argument,
  we obtain a undefined local variable or method error.
  
- This error is due to the fact that local variable `b` was initialized within the inner
  scope, and was trying to be accessed in the outer scope, which is not possible and
  it is demonstrating the concept of local variable scope.
=end