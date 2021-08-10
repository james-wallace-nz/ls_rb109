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
- On line 1, we initialize local variable 'a' and assign it to the integer
  object 4
- On line 2, we initialize local variable 'b' and assign it to the integer 
  objtect '2'
  
- On line 4, we invoke the loop method and pass a 'do..end' block as an
  argument
  - On line 5, we initialize local variable 'c' and assign it to the integer
    object 3
  - On line 6, we re-assign local variable 'a' and assign it to the
    object local variable 'c' is referencing
  - On line 7, we break out of the loop using the keyword 'breal'
  
- On line 10, we invoke the 'puts' method passing local variable 'a' as an 
  argument

- On line 11, we invoke the 'puts' method passing local variable 'b' as an
  argument
  
- Running code will output:
  - 3
  - 2

- The concept explored here is that of variable scope, showing that the inner
  scope can access variables initialized in the outer scope
=end