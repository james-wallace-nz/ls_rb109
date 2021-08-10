a = 'hello'

puts a # -> hello
puts a.object_id # -> 70368527757720 (this number will be different for you)

a.upcase! 

puts a # -> HELLO
puts a.object_id  # -> 70368527757720 (this number will be the same as the one above)

=begin
- On line 1, local variable `a` is initialized and assigned to
  string object hello
- On line 3, method `puts` is invoked and local variable `a` is passed
  in as an argument
  - Output is 'hello'
  - Return value is 'nil'
  (Can also describe this as outputting value of string object and
  returning nil)
  
- On line 4, method `object_id` is being called on local variable a
  which returns the particular object id for that object that
  local variable `a` is referencing
- On line 4 as well, method `puts` is being invoked and the return
  value obtained from calling method `object_id` on variable `a` is
  passed in as an argument
  - Output is whatever object id is 
  - return is nil
  
- On line 6, method `upcase!` is being called on local variable `a`
  - #upcase! is a mutating method, that modifies and returns the
    object local variable `a` is referencing 
    (object id doesn't change)

- On line 8, we invoke method `puts` passing local variable `a` as an
  argument
  - Output is HELLO
  - Return value is nil

- On line 9, we invoke method `puts` passing as an argument the return
  value that is obtained after calling method `object_id` on local var
  `a`
  - Output is the same object id as the one that was output on line 4
    because the object itself was mutated, and there was no 
    re-assignment
  - Return value is nil  