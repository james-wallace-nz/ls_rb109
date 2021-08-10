a = 5.2
b = 7.3

a = b

b += 1.1
p a
p b

=begin
- On line 1, local var `a` is initalized and assigned to float object `5.2`
- On line 2, local var `b` is initialized and assigned to float object `7.3`
- On line 3, local var `a` is re-assgined to the object local var `b` is referencing
  - Local variable `a` and local variable `b` are pointing to float object `7.3`
  
- On line 6, local variable `b` is being re-assigned to the float object value
  that is returned when calling method `+` on local variable `b` and passing `1.1`
  float object as an argument
  
- Local var `a` is pointing to `7.3`
- Local var `b` is pointing to `8.4`

- This is demonstrating the concept of variables as pointers, especially 
  variable re-assignment


=end