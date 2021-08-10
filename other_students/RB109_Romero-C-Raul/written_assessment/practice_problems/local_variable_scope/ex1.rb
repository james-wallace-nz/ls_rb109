a = 'Hello'
b = a
a = 'Goodbye'

puts a
puts b

=begin
- On line 1, we are initializing local variable `a` and assigning it to
  string object `Hello`
- On line 2, we are initializing local variable `b` and assigning it to
  the object local var. `a` is referencing
- On line 3, we are re-assigning local variable `a` to string object
  `Goodbye`
  
- Local var. `a` is pointing to string object `Goodbye`
- Local var. `b` is pointing to string obejct `Hello`
=end