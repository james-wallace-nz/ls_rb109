a = 'hello'
b = a
a = 'goodbye'

=begin
- On line 1, we are initializing local variable 'a' and assigning it 
  to a string object with value 'hello'
- On line 2, we are initializing lcoal variable 'b', and assigning it
  to the object local variable 'a' is referencing
- Online 3, we are re-assigning local variable a to a string object with 
  value 'goodbye'

- Local variable 'b' is pointing to string object 'hello'
- Local variable 'a' is poiting to string object 'goodbye'