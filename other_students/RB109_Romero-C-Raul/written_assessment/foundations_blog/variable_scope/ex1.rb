a = 4

loop do
  a = 5
  b = 3
  break
end

puts a
puts b

=begin
- On line 1, we initialize local variable 'a' and assign it to an integer 
  object with value 4
  
- On line 3, we invoke the method loop and pass a do..end block as an argument
  - On line 4, we re-assign local variable 'a' to an integer object with
    value 5
  - On line 5, we initialize variable 'b' and assign it to the integer object
    with the value of '3'
  - On line 6, we break out of the loop by using the keyword 'break'
  
- On line 9, we invoke method puts passing local variable 'a' as an argument
  - The output will be 5
  - The return value will be nil

- On line 10, we invoke method puts passing local variable 'b' as an argument
  - We will get an error, since the local variable 'b' was initialized within
    the scope of the loop, and it cannot be accessed outside of that loop
=end