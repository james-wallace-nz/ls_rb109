a = "hi there"
b = a
a << ", Bob"

p a
p b
=begin
- On line 1, we initialize local variable `a` and assign it to string object `hi there`
- On line 2, we initialize local var `b` and assign it to the string object local var `a`
  is referencing
  - Local variables `a` and `b` are referencing the same object
- In line 3, method `<<` is called on local variable `a` and string object `, Bob` is passed
  in as an argument. `<<` is a destructive/mutating method. 
  
- Both local var `a` and `b` are pointing to string object 'hi there, bob', demonstrating
  the concept of variables as pointers
=end