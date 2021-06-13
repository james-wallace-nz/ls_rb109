a = 'hello '
puts a
puts a.object_id

a += 'world'
puts a
puts a.object_id

=begin
- On line 1, we are initializing local variable `a` and assigning it to
  string object `hello
- On line 2, we are invoking method `puts` and passing in as an 
  argument local variable `a`
  - Output is `hello`, return value is `nil`
- On line 3, we are invoking the method `puts` and passing in as an
  argument the return value of:
  - On line 3, we are calling method `object_id` on the object
    local variable `a` is referencing, which returns the object
    `id` associated with that particular object
    - Return value is `21265460`
  - Method `puts` outputs `21265460`, and returns nil
  
- On line 5, we have an example of ruby syntactical sugar.
  This line of code can also be written as `a = a + `world`
  - We are re-assigning local variable `a` to a new string object
    created by the string concatenation of the string object
    local variable `a` is referencing and the string object `world`
  - local var. `a` is now pointing to string object `hello world`

- On line 6, we invoke method `puts` passing local var. `a` as an
  argument.
  - Output is `hello world`
  - return value is `nil`

- On line 7, we are invoking method `puts` and passing in as an argument
  the return value obtained from calling method `object_id` on the
  object local variable `a` is referencing
  - Output is different from the one on line 3, since a new string
    object was created during the string concatenation in line 5
=end