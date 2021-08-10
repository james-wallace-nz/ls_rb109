a = 'hello'

puts a # -> hello
puts a.object_id # -> 70368468160540 (this number will be different for you)

a.upcase 

puts a # -> hello
puts a.object_id  # -> 70368468160540 (this number will be the same as the one above)

=begin
- On line 1, we are initializing local variable `a` and assigning it
  to string object `hello`

- On line 3, invoke method `puts` passing local variable `a` as an
  argument
  - We output `hello`
  - Return value is nil
  
- On line 4, we are calling the method `object_id` on local variable `a`
  and this returns the object id value of the object local variable `a`
  is referencing
  - We invoke method `puts` and pass in as an argument the return value
    mentioned above, outputting the object id of the object local 
    variable `a` is referencing

- On line 6, we call method `upcase` on local variable `a`
  - This method returns a new string object, since it is not a mutating
    method

- On line 8, we invoke method `puts` and pass local var `a` as an 
  argument.
  - The output is hello, same as before since the original object
    was not modified
  - Return value is nil
  
- On line 9, we invoke method `puts` and pass in as an argument
  the return value that is obtained when calling method `object_id`
  on local variable `a`
  - The output will be the same object id number as in line 4, since 
    the original object was not mutated