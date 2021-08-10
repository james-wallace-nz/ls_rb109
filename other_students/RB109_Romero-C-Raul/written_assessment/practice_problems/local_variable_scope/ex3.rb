a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b

=begin
- On line 1, we initialize local variable `a` and assign it to integer object `4`
- On line 2, we initialize local variable `b` and assign it to integer object `2`

- On line 4, we invoke method `loop` and pass in a `do..end` block as an argument
  - On line 5, we initialize local variable `c` and assign it to integer object `3`
  - On line 6, we re-assign local variable `a` to the object local variable `c`
    is referencing
    - Local variable `a` is now pointing to string object `3`

- On line 10, we invoke method `puts` and pass in local variable `a` as an 
  argument
  - Output is 3 (due to line 6), Return value is nil
  
- On line 11, we invoke method `puts` and pass in local variable `b` as an 
  argument
  - Output is 2, Return value is nil
  
- We are demonstrating the concept of local variable scope by re-assigning local 
  variable `a` within the inner scope
  